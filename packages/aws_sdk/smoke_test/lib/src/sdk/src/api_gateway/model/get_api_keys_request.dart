// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.get_api_keys_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'get_api_keys_request.g.dart';

/// A request to get information about the current ApiKeys resource.
abstract class GetApiKeysRequest
    with
        _i1.HttpInput<GetApiKeysRequestPayload>,
        _i2.AWSEquatable<GetApiKeysRequest>
    implements
        Built<GetApiKeysRequest, GetApiKeysRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<GetApiKeysRequestPayload> {
  /// A request to get information about the current ApiKeys resource.
  factory GetApiKeysRequest({
    String? position,
    int? limit,
    String? nameQuery,
    String? customerId,
    bool? includeValues,
  }) {
    return _$GetApiKeysRequest._(
      position: position,
      limit: limit,
      nameQuery: nameQuery,
      customerId: customerId,
      includeValues: includeValues,
    );
  }

  /// A request to get information about the current ApiKeys resource.
  factory GetApiKeysRequest.build(
      [void Function(GetApiKeysRequestBuilder) updates]) = _$GetApiKeysRequest;

  const GetApiKeysRequest._();

  factory GetApiKeysRequest.fromRequest(
    GetApiKeysRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      GetApiKeysRequest.build((b) {
        if (request.queryParameters['position'] != null) {
          b.position = request.queryParameters['position']!;
        }
        if (request.queryParameters['limit'] != null) {
          b.limit = int.parse(request.queryParameters['limit']!);
        }
        if (request.queryParameters['name'] != null) {
          b.nameQuery = request.queryParameters['name']!;
        }
        if (request.queryParameters['customerId'] != null) {
          b.customerId = request.queryParameters['customerId']!;
        }
        if (request.queryParameters['includeValues'] != null) {
          b.includeValues = request.queryParameters['includeValues']! == 'true';
        }
      });

  static const List<_i1.SmithySerializer<GetApiKeysRequestPayload>>
      serializers = [GetApiKeysRequestRestJson1Serializer()];

  /// The current pagination position in the paged result set.
  String? get position;

  /// The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
  int? get limit;

  /// The name of queried API keys.
  String? get nameQuery;

  /// The identifier of a customer in AWS Marketplace or an external system, such as a developer portal.
  String? get customerId;

  /// A boolean flag to specify whether (`true`) or not (`false`) the result contains key values.
  bool? get includeValues;
  @override
  GetApiKeysRequestPayload getPayload() => GetApiKeysRequestPayload();
  @override
  List<Object?> get props => [
        position,
        limit,
        nameQuery,
        customerId,
        includeValues,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetApiKeysRequest')
      ..add(
        'position',
        position,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'nameQuery',
        nameQuery,
      )
      ..add(
        'customerId',
        customerId,
      )
      ..add(
        'includeValues',
        includeValues,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class GetApiKeysRequestPayload
    with _i2.AWSEquatable<GetApiKeysRequestPayload>
    implements
        Built<GetApiKeysRequestPayload, GetApiKeysRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory GetApiKeysRequestPayload(
          [void Function(GetApiKeysRequestPayloadBuilder) updates]) =
      _$GetApiKeysRequestPayload;

  const GetApiKeysRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetApiKeysRequestPayload');
    return helper.toString();
  }
}

class GetApiKeysRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GetApiKeysRequestPayload> {
  const GetApiKeysRequestRestJson1Serializer() : super('GetApiKeysRequest');

  @override
  Iterable<Type> get types => const [
        GetApiKeysRequest,
        _$GetApiKeysRequest,
        GetApiKeysRequestPayload,
        _$GetApiKeysRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GetApiKeysRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return GetApiKeysRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetApiKeysRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
