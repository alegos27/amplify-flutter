// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_local_gateway_route_tables_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_local_gateway_route_tables_request.g.dart';

abstract class DescribeLocalGatewayRouteTablesRequest
    with
        _i1.HttpInput<DescribeLocalGatewayRouteTablesRequest>,
        _i2.AWSEquatable<DescribeLocalGatewayRouteTablesRequest>
    implements
        Built<DescribeLocalGatewayRouteTablesRequest,
            DescribeLocalGatewayRouteTablesRequestBuilder> {
  factory DescribeLocalGatewayRouteTablesRequest({
    List<String>? localGatewayRouteTableIds,
    List<Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeLocalGatewayRouteTablesRequest._(
      localGatewayRouteTableIds: localGatewayRouteTableIds == null
          ? null
          : _i3.BuiltList(localGatewayRouteTableIds),
      filters: filters == null ? null : _i3.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeLocalGatewayRouteTablesRequest.build(
      [void Function(DescribeLocalGatewayRouteTablesRequestBuilder)
          updates]) = _$DescribeLocalGatewayRouteTablesRequest;

  const DescribeLocalGatewayRouteTablesRequest._();

  factory DescribeLocalGatewayRouteTablesRequest.fromRequest(
    DescribeLocalGatewayRouteTablesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeLocalGatewayRouteTablesRequest>>
      serializers = [
    DescribeLocalGatewayRouteTablesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLocalGatewayRouteTablesRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The IDs of the local gateway route tables.
  _i3.BuiltList<String>? get localGatewayRouteTableIds;

  /// One or more filters.
  ///
  /// *   `local-gateway-id` \- The ID of a local gateway.
  ///
  /// *   `local-gateway-route-table-arn` \- The Amazon Resource Name (ARN) of the local gateway route table.
  ///
  /// *   `local-gateway-route-table-id` \- The ID of a local gateway route table.
  ///
  /// *   `outpost-arn` \- The Amazon Resource Name (ARN) of the Outpost.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the local gateway route table.
  ///
  /// *   `state` \- The state of the local gateway route table.
  _i3.BuiltList<Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeLocalGatewayRouteTablesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeLocalGatewayRouteTablesRequest')
          ..add(
            'localGatewayRouteTableIds',
            localGatewayRouteTableIds,
          )
          ..add(
            'filters',
            filters,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeLocalGatewayRouteTablesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeLocalGatewayRouteTablesRequest> {
  const DescribeLocalGatewayRouteTablesRequestEc2QuerySerializer()
      : super('DescribeLocalGatewayRouteTablesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTablesRequest,
        _$DescribeLocalGatewayRouteTablesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTablesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayRouteTablesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLocalGatewayRouteTablesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeLocalGatewayRouteTablesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLocalGatewayRouteTablesRequest(
      :localGatewayRouteTableIds,
      :filters,
      :maxResults,
      :nextToken,
      :dryRun
    ) = object;
    if (localGatewayRouteTableIds != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          localGatewayRouteTableIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
