// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolState extends _i1.SmithyEnum<IpamPoolState> {
  const IpamPoolState._(
    super.index,
    super.name,
    super.value,
  );

  const IpamPoolState._sdkUnknown(super.value) : super.sdkUnknown();

  static const createComplete = IpamPoolState._(
    0,
    'create_complete',
    'create-complete',
  );

  static const createFailed = IpamPoolState._(
    1,
    'create_failed',
    'create-failed',
  );

  static const createInProgress = IpamPoolState._(
    2,
    'create_in_progress',
    'create-in-progress',
  );

  static const deleteComplete = IpamPoolState._(
    3,
    'delete_complete',
    'delete-complete',
  );

  static const deleteFailed = IpamPoolState._(
    4,
    'delete_failed',
    'delete-failed',
  );

  static const deleteInProgress = IpamPoolState._(
    5,
    'delete_in_progress',
    'delete-in-progress',
  );

  static const isolateComplete = IpamPoolState._(
    6,
    'isolate_complete',
    'isolate-complete',
  );

  static const isolateInProgress = IpamPoolState._(
    7,
    'isolate_in_progress',
    'isolate-in-progress',
  );

  static const modifyComplete = IpamPoolState._(
    8,
    'modify_complete',
    'modify-complete',
  );

  static const modifyFailed = IpamPoolState._(
    9,
    'modify_failed',
    'modify-failed',
  );

  static const modifyInProgress = IpamPoolState._(
    10,
    'modify_in_progress',
    'modify-in-progress',
  );

  static const restoreInProgress = IpamPoolState._(
    11,
    'restore_in_progress',
    'restore-in-progress',
  );

  /// All values of [IpamPoolState].
  static const values = <IpamPoolState>[
    IpamPoolState.createComplete,
    IpamPoolState.createFailed,
    IpamPoolState.createInProgress,
    IpamPoolState.deleteComplete,
    IpamPoolState.deleteFailed,
    IpamPoolState.deleteInProgress,
    IpamPoolState.isolateComplete,
    IpamPoolState.isolateInProgress,
    IpamPoolState.modifyComplete,
    IpamPoolState.modifyFailed,
    IpamPoolState.modifyInProgress,
    IpamPoolState.restoreInProgress,
  ];

  static const List<_i1.SmithySerializer<IpamPoolState>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamPoolState',
      values: values,
      sdkUnknown: IpamPoolState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolStateHelpers on List<IpamPoolState> {
  /// Returns the value of [IpamPoolState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolState] whose value matches [value].
  IpamPoolState byValue(String value) => firstWhere((el) => el.value == value);
}
