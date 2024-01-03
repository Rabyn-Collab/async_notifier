import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'notifiers.g.dart';

@riverpod
class Counter extends _$Counter{
 @override
 FutureOr<int> build() async{
  ref.onDispose(() {
   print('dispose call');
  });
  await waitSec();
  return 0;
 }

 Future<void> waitSec() => Future.delayed(Duration(seconds: 1));

 Future<void>increment()async{
  state = const AsyncLoading();
  try{
    await waitSec();
    throw 'fail to increment';
    state = AsyncData(state.value! + 1);
  }catch(err, st){
    state = AsyncError(err, st);
  }
 }

 Future<void> decrement()async{
  state = const AsyncLoading();
  try{
   await waitSec();
   state = AsyncData(state.value! - 1);
  }catch(err, st){
   state = AsyncError(err, st);
  }
 }


}