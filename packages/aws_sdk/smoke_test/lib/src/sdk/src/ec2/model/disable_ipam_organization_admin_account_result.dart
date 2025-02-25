// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_ipam_organization_admin_account_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'disable_ipam_organization_admin_account_result.g.dart';

abstract class DisableIpamOrganizationAdminAccountResult
    with
        _i1.AWSEquatable<DisableIpamOrganizationAdminAccountResult>
    implements
        Built<DisableIpamOrganizationAdminAccountResult,
            DisableIpamOrganizationAdminAccountResultBuilder> {
  factory DisableIpamOrganizationAdminAccountResult({bool? success}) {
    success ??= false;
    return _$DisableIpamOrganizationAdminAccountResult._(success: success);
  }

  factory DisableIpamOrganizationAdminAccountResult.build(
      [void Function(DisableIpamOrganizationAdminAccountResultBuilder)
          updates]) = _$DisableIpamOrganizationAdminAccountResult;

  const DisableIpamOrganizationAdminAccountResult._();

  /// Constructs a [DisableIpamOrganizationAdminAccountResult] from a [payload] and [response].
  factory DisableIpamOrganizationAdminAccountResult.fromResponse(
    DisableIpamOrganizationAdminAccountResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DisableIpamOrganizationAdminAccountResult>>
      serializers = [
    DisableIpamOrganizationAdminAccountResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableIpamOrganizationAdminAccountResultBuilder b) {
    b.success = false;
  }

  /// The result of disabling the IPAM account.
  bool get success;
  @override
  List<Object?> get props => [success];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableIpamOrganizationAdminAccountResult')
          ..add(
            'success',
            success,
          );
    return helper.toString();
  }
}

class DisableIpamOrganizationAdminAccountResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisableIpamOrganizationAdminAccountResult> {
  const DisableIpamOrganizationAdminAccountResultEc2QuerySerializer()
      : super('DisableIpamOrganizationAdminAccountResult');

  @override
  Iterable<Type> get types => const [
        DisableIpamOrganizationAdminAccountResult,
        _$DisableIpamOrganizationAdminAccountResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableIpamOrganizationAdminAccountResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableIpamOrganizationAdminAccountResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'success':
          result.success = (serializers.deserialize(
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
    DisableIpamOrganizationAdminAccountResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisableIpamOrganizationAdminAccountResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableIpamOrganizationAdminAccountResult(:success) = object;
    result$
      ..add(const _i2.XmlElementName('Success'))
      ..add(serializers.serialize(
        success,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
