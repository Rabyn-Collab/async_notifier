
import 'package:asyncval/api_service.dart';
import 'package:asyncval/movie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';



@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({
    required String query,
    required int page,
    required int? nextPage,
    required List<Movie> list,
  }) = _SearchResultState;
}

@riverpod
class SearchResult extends _$SearchResult {


  @override
  Future<SearchResultState> build() async {
 // return SearchResultState(query: '', page: 1, nextPage: null, list: []);
    try {
      final result = await MovieService.searchMovieBy(page: 1, searchText: 'perfume');
      return SearchResultState(
        query: 'perfume',
        page: 1,
        nextPage: result.page,
        list: result.results,
      );
    } on Exception catch (_) {
      if (state.isRefreshing || state.isReloading) {
        // 初回読み込み以外の場合
        // isRefreshing: pull-to-refresh
        // isReloading: 検索クエリの変更
        // ref
        //     .read(searchErrorNotifierProvider.notifier)
        //     .onError(SearchErrorType.refreshOrReload);
      }
      rethrow;
    }
  }

  Future<void> loadMore() async {
    final previous = state;
    if (previous.isLoading || !previous.hasValue) {
      // 既にローディング中、表示データ不在の場合はスキップ
      return;
    }
    final value = previous.requireValue;
    final page = value.nextPage;
    if (page == null) {
      // 次のpage不在の場合はスキップ
      return;
    }
    final query = value.query;
    // if (query != ref.read(searchQueryProvider)) {
    //   // クエリ変更直後の検索に失敗した状態ならスキップ
    //   return;
    // }
    state = const AsyncLoading<SearchResultState>().copyWithPrevious(previous);
    final next = await AsyncValue.guard(() async {
      final result = await  MovieService.searchMovieBy(
        searchText: value.query,
        page: page,
      );
      return value.copyWith(
        page: page,
        nextPage: result.page,
        list: [
          ...value.list,
          ...result.results,
        ],
      );
    });
    if (next.hasError) {
      // ref
      //     .read(searchErrorNotifierProvider.notifier)
      //     .onError(SearchErrorType.loadMore);
    }
    state = next.copyWithPrevious(previous);
  }





  Future<void> searchTo({required String search}) async {

    try {

      state = const AsyncLoading<SearchResultState>().copyWithPrevious(state);
      final result = await MovieService.searchMovieBy(page: 1, searchText: search);
      state = AsyncData(state.requireValue.copyWith(list: result.results));
    } on Exception catch (err, st) {
      state = AsyncError(err, st);
      // if (state.isRefreshing || state.isReloading) {
      //   // 初回読み込み以外の場合
      //   // isRefreshing: pull-to-refresh
      //   // isReloading: 検索クエリの変更
      //   // ref
      //   //     .read(searchErrorNotifierProvider.notifier)
      //   //     .onError(SearchErrorType.refreshOrReload);
      // }
      // rethrow;
    }
  }




}