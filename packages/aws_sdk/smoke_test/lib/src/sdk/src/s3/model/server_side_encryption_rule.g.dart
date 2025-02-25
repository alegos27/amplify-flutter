// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_side_encryption_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSideEncryptionRule extends ServerSideEncryptionRule {
  @override
  final ServerSideEncryptionByDefault? applyServerSideEncryptionByDefault;
  @override
  final bool? bucketKeyEnabled;

  factory _$ServerSideEncryptionRule(
          [void Function(ServerSideEncryptionRuleBuilder)? updates]) =>
      (new ServerSideEncryptionRuleBuilder()..update(updates))._build();

  _$ServerSideEncryptionRule._(
      {this.applyServerSideEncryptionByDefault, this.bucketKeyEnabled})
      : super._();

  @override
  ServerSideEncryptionRule rebuild(
          void Function(ServerSideEncryptionRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSideEncryptionRuleBuilder toBuilder() =>
      new ServerSideEncryptionRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSideEncryptionRule &&
        applyServerSideEncryptionByDefault ==
            other.applyServerSideEncryptionByDefault &&
        bucketKeyEnabled == other.bucketKeyEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applyServerSideEncryptionByDefault.hashCode);
    _$hash = $jc(_$hash, bucketKeyEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServerSideEncryptionRuleBuilder
    implements
        Builder<ServerSideEncryptionRule, ServerSideEncryptionRuleBuilder> {
  _$ServerSideEncryptionRule? _$v;

  ServerSideEncryptionByDefaultBuilder? _applyServerSideEncryptionByDefault;
  ServerSideEncryptionByDefaultBuilder get applyServerSideEncryptionByDefault =>
      _$this._applyServerSideEncryptionByDefault ??=
          new ServerSideEncryptionByDefaultBuilder();
  set applyServerSideEncryptionByDefault(
          ServerSideEncryptionByDefaultBuilder?
              applyServerSideEncryptionByDefault) =>
      _$this._applyServerSideEncryptionByDefault =
          applyServerSideEncryptionByDefault;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  ServerSideEncryptionRuleBuilder();

  ServerSideEncryptionRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applyServerSideEncryptionByDefault =
          $v.applyServerSideEncryptionByDefault?.toBuilder();
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSideEncryptionRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerSideEncryptionRule;
  }

  @override
  void update(void Function(ServerSideEncryptionRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSideEncryptionRule build() => _build();

  _$ServerSideEncryptionRule _build() {
    _$ServerSideEncryptionRule _$result;
    try {
      _$result = _$v ??
          new _$ServerSideEncryptionRule._(
              applyServerSideEncryptionByDefault:
                  _applyServerSideEncryptionByDefault?.build(),
              bucketKeyEnabled: bucketKeyEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'applyServerSideEncryptionByDefault';
        _applyServerSideEncryptionByDefault?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerSideEncryptionRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
