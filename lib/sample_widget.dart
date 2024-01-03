import 'package:asyncval/notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class SampleWidget extends ConsumerWidget{
  const SampleWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(counterProvider);
    print(state);
    print('isLoading: ${state.isLoading} '
        'isReLoading: ${state.isReloading} '
        'isRefreshing: ${state.isRefreshing} ');


    return Scaffold(
        body: state.when(
          skipLoadingOnRefresh: false,
            data: (data){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$data', style: Theme.of(context).textTheme.headlineLarge,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        ref.read(counterProvider.notifier).increment();
                      }, child: Text('increment')),
                      TextButton(onPressed: (){}, child: Text('decrement')),
                    ],
                  )
                ],
              );
            },
            error: (err, st) => Column(
              children: [
                Text('$err'),
                SizedBox(height: 20,),
                OutlinedButton(onPressed: (){
                  ref.invalidate(counterProvider);
                }, child: Text('Retry'))
              ],
            ),
            loading: () => CircularProgressIndicator()
        )
    );
  }
}
