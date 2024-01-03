import 'package:asyncval/sample_widget.dart';
import 'package:asyncval/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes.g.dart';

enum AppRoute {
  todolist,
  next
}
@riverpod
Raw<GoRouter> routes(RoutesRef ref) {
  final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
          name: AppRoute.todolist.name,
          builder: (context, state) => SampleWidget(),
          routes: [
            // GoRoute(
            //   path: 'next',
            //   name: AppRoute.next.name,
            //   pageBuilder: (context, state) {
            //     return MaterialPage(
            //         key: state.pageKey,
            //         fullscreenDialog: true,
            //         child:  SampleWidget()
            //     );
            //   },
            //
            // ),
          ]
        )
      ]
  );

  ref.onDispose(router.dispose);
  return router;
}