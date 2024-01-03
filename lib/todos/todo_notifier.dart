import 'package:asyncval/todos/todo.dart';
import 'package:asyncval/todos/todo_service.dart';
import 'package:asyncval/todos/todo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'todo_notifier.g.dart';



@riverpod
class TodoNotifier extends _$TodoNotifier{
  TodoService get _repository => ref.read(todoService);

  @override
  Future<TodoState> build() async {

    ref.keepAlive();
    ref.onCancel(ref.invalidateSelf);
     // ref.keepAliveUntilNoListeners();
   final response = await _repository.fetchTodo();
   return TodoState(index: 0, todos: response,isError: false,errMsg: '');
  }

  void dis(){

    ref.keepAlive().close();
  }


  TodoState get _todoState => state.requireValue;
  Future<void> toggle(Todo todo, index) async {

    final previous = state;
    final value = previous.requireValue;

    state = const AsyncLoading<TodoState>().copyWithPrevious(AsyncData(value.copyWith(index: index,isError: false)));
    final response = await _repository.updateTodo(
        index== 6 ? '900000':  todo.id, !todo.completed
    );


   final next = response.fold((l) {
     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
     //     duration: Duration(seconds: 1),
     //     content: Text(l)));
     return AsyncData(_todoState.copyWith(errMsg: l, isError: true));
    }, (r) {
      return  AsyncData(_todoState.copyWith(isError: false,  errMsg: '', todos: [
        for(final to in _todoState.todos )
          to.id == todo.id ? todo.copyWith(completed: !todo.completed): to
      ]));
    });
    state = next.copyWithPrevious(previous);



  }




}