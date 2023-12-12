import 'package:asyncval/search_screen.dart';
import 'package:asyncval/todos/todo_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main (){

  runApp(ProviderScope(child: const Home()));
}



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: SafeArea(child: TodoListView()))
    );
  }
}




class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // rebuild the widget when the todo list changes
    final asyncTodos = ref.watch(todoNotifierProvider);

    // Let's render the todos in a scrollable list view

    ref.listen(todoNotifierProvider, (previous, next) {
      if(next.hasValue && next.value!.isError){
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
               duration: Duration(seconds: 1),
               content: Text(next.value!.errMsg)));
      }
    });

    return Stack(
      children: [
        Center(
          child: switch (asyncTodos) {
            AsyncData(:final value) => ListView.builder(
               itemCount: value.todos.length,
              itemBuilder: (context, index){
                 final todo = value.todos[index];
                 return CheckboxListTile(
                   value: todo.completed,
                   // When tapping on the todo, change its completed status
                   onChanged: (value) {
                     ref.read(todoNotifierProvider.notifier).toggle(todo, index);
                   },
                   title: asyncTodos.isRefreshing && value.index == index? Text('Only This'): Text(todo.description),
                 );
              },

            ),
            AsyncError(:final error) => Text('Error: $error'),
            _ => const Center(child: CircularProgressIndicator()),
          },
        ),
        //if(asyncTodos.isRefreshing) Center(child: CircularProgressIndicator())
      ],
    );
  }
}