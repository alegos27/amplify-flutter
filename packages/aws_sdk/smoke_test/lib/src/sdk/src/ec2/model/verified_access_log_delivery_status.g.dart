// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_access_log_delivery_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifiedAccessLogDeliveryStatus
    extends VerifiedAccessLogDeliveryStatus {
  @override
  final VerifiedAccessLogDeliveryStatusCode? code;
  @override
  final String? message;

  factory _$VerifiedAccessLogDeliveryStatus(
          [void Function(VerifiedAccessLogDeliveryStatusBuilder)? updates]) =>
      (new VerifiedAccessLogDeliveryStatusBuilder()..update(updates))._build();

  _$VerifiedAccessLogDeliveryStatus._({this.code, this.message}) : super._();

  @override
  VerifiedAccessLogDeliveryStatus rebuild(
          void Function(VerifiedAccessLogDeliveryStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifiedAccessLogDeliveryStatusBuilder toBuilder() =>
      new VerifiedAccessLogDeliveryStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifiedAccessLogDeliveryStatus &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VerifiedAccessLogDeliveryStatusBuilder
    implements
        Builder<VerifiedAccessLogDeliveryStatus,
            VerifiedAccessLogDeliveryStatusBuilder> {
  _$VerifiedAccessLogDeliveryStatus? _$v;

  VerifiedAccessLogDeliveryStatusCode? _code;
  VerifiedAccessLogDeliveryStatusCode? get code => _$this._code;
  set code(VerifiedAccessLogDeliveryStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  VerifiedAccessLogDeliveryStatusBuilder();

  VerifiedAccessLogDeliveryStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifiedAccessLogDeliveryStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifiedAccessLogDeliveryStatus;
  }

  @override
  void update(void Function(VerifiedAccessLogDeliveryStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifiedAccessLogDeliveryStatus build() => _build();

  _$VerifiedAccessLogDeliveryStatus _build() {
    final _$result = _$v ??
        new _$VerifiedAccessLogDeliveryStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
