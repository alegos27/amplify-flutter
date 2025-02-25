// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_stack_resources_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_summary.dart';

part 'list_stack_resources_output.g.dart';

/// The output for a ListStackResources action.
abstract class ListStackResourcesOutput
    with _i1.AWSEquatable<ListStackResourcesOutput>
    implements
        Built<ListStackResourcesOutput, ListStackResourcesOutputBuilder> {
  /// The output for a ListStackResources action.
  factory ListStackResourcesOutput({
    List<StackResourceSummary>? stackResourceSummaries,
    String? nextToken,
  }) {
    return _$ListStackResourcesOutput._(
      stackResourceSummaries: stackResourceSummaries == null
          ? null
          : _i2.BuiltList(stackResourceSummaries),
      nextToken: nextToken,
    );
  }

  /// The output for a ListStackResources action.
  factory ListStackResourcesOutput.build(
          [void Function(ListStackResourcesOutputBuilder) updates]) =
      _$ListStackResourcesOutput;

  const ListStackResourcesOutput._();

  /// Constructs a [ListStackResourcesOutput] from a [payload] and [response].
  factory ListStackResourcesOutput.fromResponse(
    ListStackResourcesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListStackResourcesOutput>>
      serializers = [ListStackResourcesOutputAwsQuerySerializer()];

  /// A list of `StackResourceSummary` structures.
  _i2.BuiltList<StackResourceSummary>? get stackResourceSummaries;

  /// If the output exceeds 1 MB, a string that identifies the next page of stack resources. If no additional page exists, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        stackResourceSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStackResourcesOutput')
      ..add(
        'stackResourceSummaries',
        stackResourceSummaries,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListStackResourcesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListStackResourcesOutput> {
  const ListStackResourcesOutputAwsQuerySerializer()
      : super('ListStackResourcesOutput');

  @override
  Iterable<Type> get types => const [
        ListStackResourcesOutput,
        _$ListStackResourcesOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackResourcesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackResourcesOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResourceSummaries':
          result.stackResourceSummaries.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StackResourceSummary)],
            ),
          ) as _i2.BuiltList<StackResourceSummary>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListStackResourcesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListStackResourcesOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackResourcesOutput(:stackResourceSummaries, :nextToken) =
        object;
    if (stackResourceSummaries != null) {
      result$
        ..add(const _i3.XmlElementName('StackResourceSummaries'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackResourceSummaries,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(StackResourceSummary)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
