import 'package:asyncval/todos/todo.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_notifier_1.g.dart';
part 'todo_notifier_1.freezed.dart';

@freezed
class Todo1 with _$Todo1 {
  factory Todo1({
    required String id,
    required String description,
    required bool completed,
  }) = _Todo1;

  factory Todo1.fromJson(Map<String, dynamic> json) => _$Todo1FromJson(json);
}

// This will generates a AsyncNotifier and AsyncNotifierProvider.
// The AsyncNotifier class that will be passed to our AsyncNotifierProvider.
// This class should not expose state outside of its "state" property, which means
// no public getters/properties!
// The public methods on this class will be what allow the UI to modify the state.
// Finally, we are using asyncTodosProvider(AsyncNotifierProvider) to allow the UI to
// interact with our Todos class.
@riverpod
class AsyncTodos1 extends _$AsyncTodos1 {
  final dio = Dio();
  Future<List<Todo1>> _fetchTodo() async {
    final response = await dio.get('https://6538d9e7a543859d1bb20d51.mockapi.io/todos');

    return (response.data as List).map((e) => Todo1.fromJson(e)).toList();
  }

  @override
  FutureOr<List<Todo1>> build() async {
    // Load initial todo list from the remote repository
    return _fetchTodo();
  }
  //
  // Future<void> addTodo(Todo todo) async {
  //   // Set the state to loading
  //   state = const AsyncValue.loading();
  //   // Add the new todo and reload the todo list from the remote repository
  //   state = await AsyncValue.guard(() async {
  //     await http.post('api/todos', todo.toJson());
  //     return _fetchTodo();
  //   });
  // }



  // Let's mark a todo as completed
  Future<void> toggle(String todoId, bool val) async {
    state =  AsyncLoading<List<Todo1>>().copyWithPrevious(state);

    state = await AsyncValue.guard(() async {
      await dio.patch('https://6538d9e7a543859d1bb20d51.mockapi.io/todos/${todoId}',
          data: {
            'completed': val
          });
      return _fetchTodo();
    });
  }
}