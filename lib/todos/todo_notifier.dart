import 'package:asyncval/todos/todo.dart';
import 'package:asyncval/todos/todo_service.dart';
import 'package:asyncval/todos/todo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'todo_notifier.g.dart';



@riverpod
class TodoNotifier extends _$TodoNotifier{


  @override
  Future<TodoState> build() async {

   // final query = ref.watch(searchQueryProvider);
   final response = await TodoService.fetchTodo();
   return TodoState(index: 0, todos: response,isError: false,errMsg: '');
  }


  Future<void> toggle(Todo todo, index) async {
    final previous = state;

    final value = previous.requireValue;
    state = const AsyncLoading<TodoState>().copyWithPrevious(AsyncData(value.copyWith(index: index,isError: false)));
    final response = await TodoService.updateTodo(
      index== 6 ? '900000':  todo.id, !todo.completed
    );

   final next = response.fold((l) {
     return AsyncData(value.copyWith(errMsg: l, isError: true));
    }, (r) {
      return  AsyncData(value.copyWith(isError: false,  errMsg: '', todos: [
        for(final to in state.requireValue.todos )
          to.id == todo.id ? todo.copyWith(completed: !todo.completed): to
      ]));
    });
    state = next.copyWithPrevious(previous);

  }
}