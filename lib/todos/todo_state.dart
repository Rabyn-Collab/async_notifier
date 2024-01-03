import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';

@freezed
class TodoState with _$TodoState{

  const factory TodoState({

   required int index,
    required List todos,
    required String errMsg,
    required bool isError

   }) = _TodoState;

  // factory TodoState.empty(){
  //   return const TodoState(
  //
  //       index: 0,
  //
  //     data: []
  //   );
  // }

}