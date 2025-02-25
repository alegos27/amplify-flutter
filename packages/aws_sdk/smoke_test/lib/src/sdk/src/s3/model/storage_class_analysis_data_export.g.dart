// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_class_analysis_data_export.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StorageClassAnalysisDataExport extends StorageClassAnalysisDataExport {
  @override
  final StorageClassAnalysisSchemaVersion outputSchemaVersion;
  @override
  final AnalyticsExportDestination destination;

  factory _$StorageClassAnalysisDataExport(
          [void Function(StorageClassAnalysisDataExportBuilder)? updates]) =>
      (new StorageClassAnalysisDataExportBuilder()..update(updates))._build();

  _$StorageClassAnalysisDataExport._(
      {required this.outputSchemaVersion, required this.destination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(outputSchemaVersion,
        r'StorageClassAnalysisDataExport', 'outputSchemaVersion');
    BuiltValueNullFieldError.checkNotNull(
        destination, r'StorageClassAnalysisDataExport', 'destination');
  }

  @override
  StorageClassAnalysisDataExport rebuild(
          void Function(StorageClassAnalysisDataExportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageClassAnalysisDataExportBuilder toBuilder() =>
      new StorageClassAnalysisDataExportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorageClassAnalysisDataExport &&
        outputSchemaVersion == other.outputSchemaVersion &&
        destination == other.destination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outputSchemaVersion.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StorageClassAnalysisDataExportBuilder
    implements
        Builder<StorageClassAnalysisDataExport,
            StorageClassAnalysisDataExportBuilder> {
  _$StorageClassAnalysisDataExport? _$v;

  StorageClassAnalysisSchemaVersion? _outputSchemaVersion;
  StorageClassAnalysisSchemaVersion? get outputSchemaVersion =>
      _$this._outputSchemaVersion;
  set outputSchemaVersion(
          StorageClassAnalysisSchemaVersion? outputSchemaVersion) =>
      _$this._outputSchemaVersion = outputSchemaVersion;

  AnalyticsExportDestinationBuilder? _destination;
  AnalyticsExportDestinationBuilder get destination =>
      _$this._destination ??= new AnalyticsExportDestinationBuilder();
  set destination(AnalyticsExportDestinationBuilder? destination) =>
      _$this._destination = destination;

  StorageClassAnalysisDataExportBuilder();

  StorageClassAnalysisDataExportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outputSchemaVersion = $v.outputSchemaVersion;
      _destination = $v.destination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorageClassAnalysisDataExport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StorageClassAnalysisDataExport;
  }

  @override
  void update(void Function(StorageClassAnalysisDataExportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StorageClassAnalysisDataExport build() => _build();

  _$StorageClassAnalysisDataExport _build() {
    _$StorageClassAnalysisDataExport _$result;
    try {
      _$result = _$v ??
          new _$StorageClassAnalysisDataExport._(
              outputSchemaVersion: BuiltValueNullFieldError.checkNotNull(
                  outputSchemaVersion,
                  r'StorageClassAnalysisDataExport',
                  'outputSchemaVersion'),
              destination: destination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destination';
        destination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StorageClassAnalysisDataExport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
