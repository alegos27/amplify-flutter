// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_import_snapshot_tasks_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImportSnapshotTasksRequest
    extends DescribeImportSnapshotTasksRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? importTaskIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeImportSnapshotTasksRequest(
          [void Function(DescribeImportSnapshotTasksRequestBuilder)?
              updates]) =>
      (new DescribeImportSnapshotTasksRequestBuilder()..update(updates))
          ._build();

  _$DescribeImportSnapshotTasksRequest._(
      {required this.dryRun,
      this.filters,
      this.importTaskIds,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeImportSnapshotTasksRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeImportSnapshotTasksRequest', 'maxResults');
  }

  @override
  DescribeImportSnapshotTasksRequest rebuild(
          void Function(DescribeImportSnapshotTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImportSnapshotTasksRequestBuilder toBuilder() =>
      new DescribeImportSnapshotTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImportSnapshotTasksRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        importTaskIds == other.importTaskIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, importTaskIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImportSnapshotTasksRequestBuilder
    implements
        Builder<DescribeImportSnapshotTasksRequest,
            DescribeImportSnapshotTasksRequestBuilder> {
  _$DescribeImportSnapshotTasksRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _importTaskIds;
  _i3.ListBuilder<String> get importTaskIds =>
      _$this._importTaskIds ??= new _i3.ListBuilder<String>();
  set importTaskIds(_i3.ListBuilder<String>? importTaskIds) =>
      _$this._importTaskIds = importTaskIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeImportSnapshotTasksRequestBuilder() {
    DescribeImportSnapshotTasksRequest._init(this);
  }

  DescribeImportSnapshotTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _importTaskIds = $v.importTaskIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImportSnapshotTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImportSnapshotTasksRequest;
  }

  @override
  void update(
      void Function(DescribeImportSnapshotTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImportSnapshotTasksRequest build() => _build();

  _$DescribeImportSnapshotTasksRequest _build() {
    _$DescribeImportSnapshotTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeImportSnapshotTasksRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeImportSnapshotTasksRequest', 'dryRun'),
              filters: _filters?.build(),
              importTaskIds: _importTaskIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeImportSnapshotTasksRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'importTaskIds';
        _importTaskIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImportSnapshotTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
