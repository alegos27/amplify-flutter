// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_restore_image_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_restore_image_task_result.g.dart';

abstract class CreateRestoreImageTaskResult
    with
        _i1.AWSEquatable<CreateRestoreImageTaskResult>
    implements
        Built<CreateRestoreImageTaskResult,
            CreateRestoreImageTaskResultBuilder> {
  factory CreateRestoreImageTaskResult({String? imageId}) {
    return _$CreateRestoreImageTaskResult._(imageId: imageId);
  }

  factory CreateRestoreImageTaskResult.build(
          [void Function(CreateRestoreImageTaskResultBuilder) updates]) =
      _$CreateRestoreImageTaskResult;

  const CreateRestoreImageTaskResult._();

  /// Constructs a [CreateRestoreImageTaskResult] from a [payload] and [response].
  factory CreateRestoreImageTaskResult.fromResponse(
    CreateRestoreImageTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateRestoreImageTaskResult>>
      serializers = [CreateRestoreImageTaskResultEc2QuerySerializer()];

  /// The AMI ID.
  String? get imageId;
  @override
  List<Object?> get props => [imageId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateRestoreImageTaskResult')
      ..add(
        'imageId',
        imageId,
      );
    return helper.toString();
  }
}

class CreateRestoreImageTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateRestoreImageTaskResult> {
  const CreateRestoreImageTaskResultEc2QuerySerializer()
      : super('CreateRestoreImageTaskResult');

  @override
  Iterable<Type> get types => const [
        CreateRestoreImageTaskResult,
        _$CreateRestoreImageTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateRestoreImageTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRestoreImageTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'imageId':
          result.imageId = (serializers.deserialize(
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
    CreateRestoreImageTaskResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateRestoreImageTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateRestoreImageTaskResult(:imageId) = object;
    if (imageId != null) {
      result$
        ..add(const _i2.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
