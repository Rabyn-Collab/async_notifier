import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import 'todo.dart';



final todoService = Provider((ref) => TodoService());

class TodoService {

  final dio = Dio();

  Future<List<Todo>> fetchTodo() async {
    try{
      final response = await dio.get('https://6538d9e7a543859d1bb20d51.mockapi.io/todos');
      return (response.data as List).map((e) => Todo.fromJson(e)).toList();
    }on DioException catch (err){
      throw '${err.message}';
    }

  }



   Future<Either<String, bool>> updateTodo(String todoId, bool val) async {
   try{
     final response = await dio.patch('https://6538d9e7a543859d1bb20d51.mockapi.io/todos/$todoId',
         data: {
          'completed': val
         });
     return Right(true);
   }on DioException catch (err){

    return Left('${err.message}');
   }

 }




}



