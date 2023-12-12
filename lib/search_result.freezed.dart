// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultState {
  String get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;
  List<Movie> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultStateCopyWith<SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) then) =
      _$SearchResultStateCopyWithImpl<$Res, SearchResultState>;
  @useResult
  $Res call({String query, int page, int? nextPage, List<Movie> list});
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res, $Val extends SearchResultState>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? page = null,
    Object? nextPage = freezed,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultStateImplCopyWith<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  factory _$$SearchResultStateImplCopyWith(_$SearchResultStateImpl value,
          $Res Function(_$SearchResultStateImpl) then) =
      __$$SearchResultStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, int page, int? nextPage, List<Movie> list});
}

/// @nodoc
class __$$SearchResultStateImplCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$SearchResultStateImpl>
    implements _$$SearchResultStateImplCopyWith<$Res> {
  __$$SearchResultStateImplCopyWithImpl(_$SearchResultStateImpl _value,
      $Res Function(_$SearchResultStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? page = null,
    Object? nextPage = freezed,
    Object? list = null,
  }) {
    return _then(_$SearchResultStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$SearchResultStateImpl implements _SearchResultState {
  const _$SearchResultStateImpl(
      {required this.query,
      required this.page,
      required this.nextPage,
      required final List<Movie> list})
      : _list = list;

  @override
  final String query;
  @override
  final int page;
  @override
  final int? nextPage;
  final List<Movie> _list;
  @override
  List<Movie> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SearchResultState(query: $query, page: $page, nextPage: $nextPage, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, page, nextPage,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultStateImplCopyWith<_$SearchResultStateImpl> get copyWith =>
      __$$SearchResultStateImplCopyWithImpl<_$SearchResultStateImpl>(
          this, _$identity);
}

abstract class _SearchResultState implements SearchResultState {
  const factory _SearchResultState(
      {required final String query,
      required final int page,
      required final int? nextPage,
      required final List<Movie> list}) = _$SearchResultStateImpl;

  @override
  String get query;
  @override
  int get page;
  @override
  int? get nextPage;
  @override
  List<Movie> get list;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultStateImplCopyWith<_$SearchResultStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
