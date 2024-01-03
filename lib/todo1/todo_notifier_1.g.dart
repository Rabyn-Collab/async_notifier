// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_notifier_1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Todo1Impl _$$Todo1ImplFromJson(Map<String, dynamic> json) => _$Todo1Impl(
      id: json['id'] as String,
      description: json['description'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$Todo1ImplToJson(_$Todo1Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'completed': instance.completed,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncTodos1Hash() => r'3f5ecf3a14af307fc863ef53c6c37d74b5085c8e';

/// See also [AsyncTodos1].
@ProviderFor(AsyncTodos1)
final asyncTodos1Provider =
    AutoDisposeAsyncNotifierProvider<AsyncTodos1, List<Todo1>>.internal(
  AsyncTodos1.new,
  name: r'asyncTodos1Provider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$asyncTodos1Hash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AsyncTodos1 = AutoDisposeAsyncNotifier<List<Todo1>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
