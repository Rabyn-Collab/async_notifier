import 'package:asyncval/result_list_page.dart';
import 'package:asyncval/search_result.dart';
import 'package:asyncval/section/empty_result_page.dart';
import 'package:asyncval/section/error_page.dart';
import 'package:asyncval/section/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'first_loading.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('search movies'),
        actions: [

        ],
      ),
      body:  Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SearchTextField(),
            SizedBox(height: 20),
            Expanded(
              child: _SearchScreenContent(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchScreenContent extends ConsumerWidget {
  const _SearchScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchResultProvider);
    if (state.hasValue && state.requireValue.list.isNotEmpty) {
      return  ResultListPage();
    } else if (state.isLoading) {
      return const FirstLoadingPage();
    } else if (state.hasError) {
      return ErrorPage();
    } else {
      return const EmptyResultPage();
    }
  }
}