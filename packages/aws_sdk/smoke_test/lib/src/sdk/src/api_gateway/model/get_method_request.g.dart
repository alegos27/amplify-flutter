// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_method_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMethodRequest extends GetMethodRequest {
  @override
  final String restApiId;
  @override
  final String resourceId;
  @override
  final String httpMethod;

  factory _$GetMethodRequest(
          [void Function(GetMethodRequestBuilder)? updates]) =>
      (new GetMethodRequestBuilder()..update(updates))._build();

  _$GetMethodRequest._(
      {required this.restApiId,
      required this.resourceId,
      required this.httpMethod})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetMethodRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetMethodRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        httpMethod, r'GetMethodRequest', 'httpMethod');
  }

  @override
  GetMethodRequest rebuild(void Function(GetMethodRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMethodRequestBuilder toBuilder() =>
      new GetMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMethodRequest &&
        restApiId == other.restApiId &&
        resourceId == other.resourceId &&
        httpMethod == other.httpMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, httpMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetMethodRequestBuilder
    implements Builder<GetMethodRequest, GetMethodRequestBuilder> {
  _$GetMethodRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _httpMethod;
  String? get httpMethod => _$this._httpMethod;
  set httpMethod(String? httpMethod) => _$this._httpMethod = httpMethod;

  GetMethodRequestBuilder();

  GetMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _resourceId = $v.resourceId;
      _httpMethod = $v.httpMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMethodRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMethodRequest;
  }

  @override
  void update(void Function(GetMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMethodRequest build() => _build();

  _$GetMethodRequest _build() {
    final _$result = _$v ??
        new _$GetMethodRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'GetMethodRequest', 'restApiId'),
            resourceId: BuiltValueNullFieldError.checkNotNull(
                resourceId, r'GetMethodRequest', 'resourceId'),
            httpMethod: BuiltValueNullFieldError.checkNotNull(
                httpMethod, r'GetMethodRequest', 'httpMethod'));
    replace(_$result);
    return _$result;
  }
}

class _$GetMethodRequestPayload extends GetMethodRequestPayload {
  factory _$GetMethodRequestPayload(
          [void Function(GetMethodRequestPayloadBuilder)? updates]) =>
      (new GetMethodRequestPayloadBuilder()..update(updates))._build();

  _$GetMethodRequestPayload._() : super._();

  @override
  GetMethodRequestPayload rebuild(
          void Function(GetMethodRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMethodRequestPayloadBuilder toBuilder() =>
      new GetMethodRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMethodRequestPayload;
  }

  @override
  int get hashCode {
    return 28016288;
  }
}

class GetMethodRequestPayloadBuilder
    implements
        Builder<GetMethodRequestPayload, GetMethodRequestPayloadBuilder> {
  _$GetMethodRequestPayload? _$v;

  GetMethodRequestPayloadBuilder();

  @override
  void replace(GetMethodRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMethodRequestPayload;
  }

  @override
  void update(void Function(GetMethodRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMethodRequestPayload build() => _build();

  _$GetMethodRequestPayload _build() {
    final _$result = _$v ?? new _$GetMethodRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
