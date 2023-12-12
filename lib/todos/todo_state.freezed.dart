// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  int get index => throw _privateConstructorUsedError;
  List<dynamic> get todos => throw _privateConstructorUsedError;
  String get errMsg => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({int index, List<dynamic> todos, String errMsg, bool isError});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? todos = null,
    Object? errMsg = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<dynamic> todos, String errMsg, bool isError});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? todos = null,
    Object? errMsg = null,
    Object? isError = null,
  }) {
    return _then(_$TodoStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {required this.index,
      required final List<dynamic> todos,
      required this.errMsg,
      required this.isError})
      : _todos = todos;

  @override
  final int index;
  final List<dynamic> _todos;
  @override
  List<dynamic> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final String errMsg;
  @override
  final bool isError;

  @override
  String toString() {
    return 'TodoState(index: $index, todos: $todos, errMsg: $errMsg, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index,
      const DeepCollectionEquality().hash(_todos), errMsg, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {required final int index,
      required final List<dynamic> todos,
      required final String errMsg,
      required final bool isError}) = _$TodoStateImpl;

  @override
  int get index;
  @override
  List<dynamic> get todos;
  @override
  String get errMsg;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
