// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_notifier_1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo1 _$Todo1FromJson(Map<String, dynamic> json) {
  return _Todo1.fromJson(json);
}

/// @nodoc
mixin _$Todo1 {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Todo1CopyWith<Todo1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Todo1CopyWith<$Res> {
  factory $Todo1CopyWith(Todo1 value, $Res Function(Todo1) then) =
      _$Todo1CopyWithImpl<$Res, Todo1>;
  @useResult
  $Res call({String id, String description, bool completed});
}

/// @nodoc
class _$Todo1CopyWithImpl<$Res, $Val extends Todo1>
    implements $Todo1CopyWith<$Res> {
  _$Todo1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Todo1ImplCopyWith<$Res> implements $Todo1CopyWith<$Res> {
  factory _$$Todo1ImplCopyWith(
          _$Todo1Impl value, $Res Function(_$Todo1Impl) then) =
      __$$Todo1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String description, bool completed});
}

/// @nodoc
class __$$Todo1ImplCopyWithImpl<$Res>
    extends _$Todo1CopyWithImpl<$Res, _$Todo1Impl>
    implements _$$Todo1ImplCopyWith<$Res> {
  __$$Todo1ImplCopyWithImpl(
      _$Todo1Impl _value, $Res Function(_$Todo1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_$Todo1Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Todo1Impl implements _Todo1 {
  _$Todo1Impl(
      {required this.id, required this.description, required this.completed});

  factory _$Todo1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Todo1ImplFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Todo1(id: $id, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Todo1Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Todo1ImplCopyWith<_$Todo1Impl> get copyWith =>
      __$$Todo1ImplCopyWithImpl<_$Todo1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Todo1ImplToJson(
      this,
    );
  }
}

abstract class _Todo1 implements Todo1 {
  factory _Todo1(
      {required final String id,
      required final String description,
      required final bool completed}) = _$Todo1Impl;

  factory _Todo1.fromJson(Map<String, dynamic> json) = _$Todo1Impl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$Todo1ImplCopyWith<_$Todo1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
