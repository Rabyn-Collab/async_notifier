import 'package:asyncval/routes.dart';
import 'package:asyncval/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';





void main (){

  runApp(ProviderScope(child: const Home()));
}



class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final route = ref.watch(routesProvider);
      return MaterialApp.router(
        routerConfig: route,
      );
  }
}

