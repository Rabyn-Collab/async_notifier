import 'package:asyncval/routes.dart';
import 'package:asyncval/todo1/todo_notifier_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class TodoListView extends ConsumerStatefulWidget{
  const TodoListView({super.key});

  @override
  ConsumerState<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends ConsumerState<TodoListView> {



  @override
  Widget build(BuildContext context,) {
    ref.listen(asyncTodos1Provider, (previous, next) {
      if(next.hasError && !next.isLoading){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                duration: Duration(seconds: 1),
                content: Text('hello jee'))
        );
      }
    });
    final asyncTodos = ref.watch(asyncTodos1Provider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: (){
                context.pushNamed(AppRoute.next.name);
              }, child: Text('Go'))
        ],
      ),
      body: SafeArea(
        child: switch (asyncTodos) {
          AsyncData(:final value) => ListView(
            children: [
              for (final todo in value)
                CheckboxListTile(
                  value: todo.completed,
                  // When tapping on the todo, change its completed status
                  onChanged: (value) {
                    ref.read(asyncTodos1Provider.notifier).toggle(todo.id, value!);
                  },
                  title: asyncTodos.isReloading? CircularProgressIndicator(): Text(todo.description),
                ),
            ],
          ),
          AsyncError(:final error) => Column(
            children: [
              Text('Error: $error'),
              ElevatedButton(
                  onPressed: (){
                 context.pushNamed(AppRoute.next.name);
                  }, child: Text('Go'))
            ],
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}