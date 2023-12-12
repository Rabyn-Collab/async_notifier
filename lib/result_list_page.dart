import 'package:asyncval/search_result.dart';
import 'package:asyncval/section/repository_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultListPage extends ConsumerWidget {
  const ResultListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchResultProvider);
    final value = state.requireValue;



    // ref.listen(searchErrorNotifierProvider, (_, notifier) {
    //   showErrorShackBar(
    //     context: context,
    //     ref: ref,
    //     type: notifier.type,
    //   );
    // });

    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n.metrics.pixels == n.metrics.maxScrollExtent) {
          ref.read(searchResultProvider.notifier).loadMore();
        }
        return true;
      },
      child: RefreshIndicator(
        onRefresh: () => ref.refresh(searchResultProvider.future),
        child: Stack(
          children: [
            CustomScrollView(

              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, idx) {
                      final repo = value.list[idx];
                      return RepositoryItem(repo: repo);
                    },
                    childCount: 5,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                    child: Visibility(
                      // 追加読み込み中
                      // Note pull-to-refreshでも表示されるが大きな問題にはならない
                      visible:  state.isRefreshing,
                      child: const Center(
                        child: CircularProgressIndicator(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
            if (state.isReloading)
              // クエリ変更による検索中
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrangeAccent,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
