// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.put_rest_api_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/api_gateway/model/put_mode.dart';

part 'put_rest_api_request.g.dart';

/// A PUT request to update an existing API, with external API definitions specified as the request body.
abstract class PutRestApiRequest
    with _i1.HttpInput<_i2.Uint8List>, _i3.AWSEquatable<PutRestApiRequest>
    implements
        Built<PutRestApiRequest, PutRestApiRequestBuilder>,
        _i1.HasPayload<_i2.Uint8List> {
  /// A PUT request to update an existing API, with external API definitions specified as the request body.
  factory PutRestApiRequest({
    required String restApiId,
    PutMode? mode,
    bool? failOnWarnings,
    Map<String, String>? parameters,
    required _i2.Uint8List body,
  }) {
    failOnWarnings ??= false;
    return _$PutRestApiRequest._(
      restApiId: restApiId,
      mode: mode,
      failOnWarnings: failOnWarnings,
      parameters: parameters == null ? null : _i4.BuiltMap(parameters),
      body: body,
    );
  }

  /// A PUT request to update an existing API, with external API definitions specified as the request body.
  factory PutRestApiRequest.build(
      [void Function(PutRestApiRequestBuilder) updates]) = _$PutRestApiRequest;

  const PutRestApiRequest._();

  factory PutRestApiRequest.fromRequest(
    _i2.Uint8List payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutRestApiRequest.build((b) {
        b.body = payload;
        if (request.queryParameters['mode'] != null) {
          b.mode = PutMode.values.byValue(request.queryParameters['mode']!);
        }
        if (request.queryParameters['failonwarnings'] != null) {
          b.failOnWarnings =
              request.queryParameters['failonwarnings']! == 'true';
        }
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.Uint8List>> serializers = [
    PutRestApiRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRestApiRequestBuilder b) {
    b.failOnWarnings = false;
  }

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The `mode` query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default, the update mode is "merge".
  PutMode? get mode;

  /// A query parameter to indicate whether to rollback the API update (`true`) or not (`false`) when a warning is encountered. The default value is `false`.
  bool get failOnWarnings;

  /// Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set `ignore=documentation` as a `parameters` value, as in the AWS CLI command of `aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'`.
  _i4.BuiltMap<String, String>? get parameters;

  /// The PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.
  _i2.Uint8List get body;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.Uint8List getPayload() => body;
  @override
  List<Object?> get props => [
        restApiId,
        mode,
        failOnWarnings,
        parameters,
        body,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutRestApiRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'mode',
        mode,
      )
      ..add(
        'failOnWarnings',
        failOnWarnings,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'body',
        body,
      );
    return helper.toString();
  }
}

class PutRestApiRequestRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Uint8List> {
  const PutRestApiRequestRestJson1Serializer() : super('PutRestApiRequest');

  @override
  Iterable<Type> get types => const [
        PutRestApiRequest,
        _$PutRestApiRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.Uint8List),
    ) as _i2.Uint8List);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(_i2.Uint8List),
    )!;
  }
}
