// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_metrics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metrics_filter.dart';

part 'put_bucket_metrics_configuration_request.g.dart';

abstract class PutBucketMetricsConfigurationRequest
    with
        _i1.HttpInput<MetricsConfiguration>,
        _i2.AWSEquatable<PutBucketMetricsConfigurationRequest>
    implements
        Built<PutBucketMetricsConfigurationRequest,
            PutBucketMetricsConfigurationRequestBuilder>,
        _i1.HasPayload<MetricsConfiguration> {
  factory PutBucketMetricsConfigurationRequest({
    required String bucket,
    required String id,
    required MetricsConfiguration metricsConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketMetricsConfigurationRequest._(
      bucket: bucket,
      id: id,
      metricsConfiguration: metricsConfiguration,
      expectedBucketOwner: expectedBucketOwner,
    );
  }

  factory PutBucketMetricsConfigurationRequest.build(
      [void Function(PutBucketMetricsConfigurationRequestBuilder)
          updates]) = _$PutBucketMetricsConfigurationRequest;

  const PutBucketMetricsConfigurationRequest._();

  factory PutBucketMetricsConfigurationRequest.fromRequest(
    MetricsConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketMetricsConfigurationRequest.build((b) {
        b.metricsConfiguration.replace(payload);
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer<MetricsConfiguration>> serializers = [
    PutBucketMetricsConfigurationRequestRestXmlSerializer()
  ];

  /// The name of the bucket for which the metrics configuration is set.
  String get bucket;

  /// The ID used to identify the metrics configuration. The ID has a 64 character limit and can only contain letters, numbers, periods, dashes, and underscores.
  String get id;

  /// Specifies the metrics configuration.
  MetricsConfiguration get metricsConfiguration;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  MetricsConfiguration getPayload() => metricsConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        id,
        metricsConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketMetricsConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'id',
            id,
          )
          ..add(
            'metricsConfiguration',
            metricsConfiguration,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
          );
    return helper.toString();
  }
}

class PutBucketMetricsConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<MetricsConfiguration> {
  const PutBucketMetricsConfigurationRequestRestXmlSerializer()
      : super('PutBucketMetricsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketMetricsConfigurationRequest,
        _$PutBucketMetricsConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  MetricsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(MetricsFilter),
          ) as MetricsFilter);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MetricsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'MetricsConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final MetricsConfiguration(:id, :filter) = object;
    result$
      ..add(const _i1.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    if (filter != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(MetricsFilter),
        ));
    }
    return result$;
  }
}
