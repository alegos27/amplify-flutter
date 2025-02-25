// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.operation.get_object_attributes_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/common/endpoint_resolver.dart';
import 'package:smoke_test/src/sdk/src/s3/common/serializers.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_output.dart';
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/s3/model/no_such_key.dart';

/// Retrieves all the metadata from an object without returning the object itself. This action is useful if you're interested only in an object's metadata. To use `GetObjectAttributes`, you must have READ access to the object.
///
/// `GetObjectAttributes` combines the functionality of `HeadObject` and `ListParts`. All of the data returned with each of those individual calls can be returned with a single call to `GetObjectAttributes`.
///
/// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the metadata from the object, you must use the following headers:
///
/// *   `x-amz-server-side-encryption-customer-algorithm`
///
/// *   `x-amz-server-side-encryption-customer-key`
///
/// *   `x-amz-server-side-encryption-customer-key-MD5`
///
///
/// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
///
/// *   Encryption request headers, such as `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with Amazon Web Services KMS keys stored in Amazon Web Services Key Management Service (SSE-KMS) or server-side encryption with Amazon S3 managed keys (SSE-S3). If your object does use these types of keys, you'll get an HTTP `400 Bad Request` error.
///
/// *   The last modified property in this case is the creation date of the object.
///
///
/// Consider the following when using request headers:
///
/// *   If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows, then Amazon S3 returns the HTTP status code `200 OK` and the data requested:
///
///     *   `If-Match` condition evaluates to `true`.
///
///     *   `If-Unmodified-Since` condition evaluates to `false`.
///
/// *   If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows, then Amazon S3 returns the HTTP status code `304 Not Modified`:
///
///     *   `If-None-Match` condition evaluates to `false`.
///
///     *   `If-Modified-Since` condition evaluates to `true`.
///
///
/// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
///
/// Permissions
///
/// The permissions that you need to use this operation depend on whether the bucket is versioned. If the bucket is versioned, you need both the `s3:GetObjectVersion` and `s3:GetObjectVersionAttributes` permissions for this operation. If the bucket is not versioned, you need the `s3:GetObject` and `s3:GetObjectAttributes` permissions. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html) in the _Amazon S3 User Guide_. If the object that you request does not exist, the error Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
///
/// *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code `404 Not Found` ("no such key") error.
///
/// *   If you don't have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code `403 Forbidden` ("access denied") error.
///
///
/// The following actions are related to `GetObjectAttributes`:
///
/// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
///
/// *   [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
///
/// *   [GetObjectLegalHold](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLegalHold.html)
///
/// *   [GetObjectLockConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLockConfiguration.html)
///
/// *   [GetObjectRetention](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectRetention.html)
///
/// *   [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)
///
/// *   [HeadObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadObject.html)
///
/// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
class GetObjectAttributesOperation extends _i1.HttpOperation<
    GetObjectAttributesRequestPayload,
    GetObjectAttributesRequest,
    GetObjectAttributesOutputPayload,
    GetObjectAttributesOutput> {
  /// Retrieves all the metadata from an object without returning the object itself. This action is useful if you're interested only in an object's metadata. To use `GetObjectAttributes`, you must have READ access to the object.
  ///
  /// `GetObjectAttributes` combines the functionality of `HeadObject` and `ListParts`. All of the data returned with each of those individual calls can be returned with a single call to `GetObjectAttributes`.
  ///
  /// If you encrypt an object by using server-side encryption with customer-provided encryption keys (SSE-C) when you store the object in Amazon S3, then when you retrieve the metadata from the object, you must use the following headers:
  ///
  /// *   `x-amz-server-side-encryption-customer-algorithm`
  ///
  /// *   `x-amz-server-side-encryption-customer-key`
  ///
  /// *   `x-amz-server-side-encryption-customer-key-MD5`
  ///
  ///
  /// For more information about SSE-C, see [Server-Side Encryption (Using Customer-Provided Encryption Keys)](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the _Amazon S3 User Guide_.
  ///
  /// *   Encryption request headers, such as `x-amz-server-side-encryption`, should not be sent for GET requests if your object uses server-side encryption with Amazon Web Services KMS keys stored in Amazon Web Services Key Management Service (SSE-KMS) or server-side encryption with Amazon S3 managed keys (SSE-S3). If your object does use these types of keys, you'll get an HTTP `400 Bad Request` error.
  ///
  /// *   The last modified property in this case is the creation date of the object.
  ///
  ///
  /// Consider the following when using request headers:
  ///
  /// *   If both of the `If-Match` and `If-Unmodified-Since` headers are present in the request as follows, then Amazon S3 returns the HTTP status code `200 OK` and the data requested:
  ///
  ///     *   `If-Match` condition evaluates to `true`.
  ///
  ///     *   `If-Unmodified-Since` condition evaluates to `false`.
  ///
  /// *   If both of the `If-None-Match` and `If-Modified-Since` headers are present in the request as follows, then Amazon S3 returns the HTTP status code `304 Not Modified`:
  ///
  ///     *   `If-None-Match` condition evaluates to `false`.
  ///
  ///     *   `If-Modified-Since` condition evaluates to `true`.
  ///
  ///
  /// For more information about conditional requests, see [RFC 7232](https://tools.ietf.org/html/rfc7232).
  ///
  /// Permissions
  ///
  /// The permissions that you need to use this operation depend on whether the bucket is versioned. If the bucket is versioned, you need both the `s3:GetObjectVersion` and `s3:GetObjectVersionAttributes` permissions for this operation. If the bucket is not versioned, you need the `s3:GetObject` and `s3:GetObjectAttributes` permissions. For more information, see [Specifying Permissions in a Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html) in the _Amazon S3 User Guide_. If the object that you request does not exist, the error Amazon S3 returns depends on whether you also have the `s3:ListBucket` permission.
  ///
  /// *   If you have the `s3:ListBucket` permission on the bucket, Amazon S3 returns an HTTP status code `404 Not Found` ("no such key") error.
  ///
  /// *   If you don't have the `s3:ListBucket` permission, Amazon S3 returns an HTTP status code `403 Forbidden` ("access denied") error.
  ///
  ///
  /// The following actions are related to `GetObjectAttributes`:
  ///
  /// *   [GetObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
  ///
  /// *   [GetObjectAcl](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectAcl.html)
  ///
  /// *   [GetObjectLegalHold](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLegalHold.html)
  ///
  /// *   [GetObjectLockConfiguration](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectLockConfiguration.html)
  ///
  /// *   [GetObjectRetention](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectRetention.html)
  ///
  /// *   [GetObjectTagging](https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html)
  ///
  /// *   [HeadObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_HeadObject.html)
  ///
  /// *   [ListParts](https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html)
  GetObjectAttributesOperation({
    required String region,
    Uri? baseUri,
    _i2.S3ClientConfig s3ClientConfig = const _i2.S3ClientConfig(),
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.defaultChain(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _s3ClientConfig = s3ClientConfig,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          GetObjectAttributesRequestPayload,
          GetObjectAttributesRequest,
          GetObjectAttributesOutputPayload,
          GetObjectAttributesOutput>> protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            _i2.WithSigV4(
              region: _region,
              service: _i4.AWSService.s3,
              credentialsProvider: _credentialsProvider,
              serviceConfiguration: _s3ClientConfig.signerConfiguration ??
                  _i3.S3ServiceConfiguration(),
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: true,
    )
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i2.S3ClientConfig _s3ClientConfig;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(GetObjectAttributesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'GET';
        b.path = _s3ClientConfig.usePathStyle
            ? r'/{Bucket}/{Key+}?attributes'
            : r'/{Key+}?attributes';
        b.hostPrefix = _s3ClientConfig.usePathStyle ? null : '{Bucket}.';
        if (input.maxParts != null) {
          b.headers['x-amz-max-parts'] = input.maxParts!.toString();
        }
        if (input.partNumberMarker != null) {
          if (input.partNumberMarker!.isNotEmpty) {
            b.headers['x-amz-part-number-marker'] = input.partNumberMarker!;
          }
        }
        if (input.sseCustomerAlgorithm != null) {
          if (input.sseCustomerAlgorithm!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-customer-algorithm'] =
                input.sseCustomerAlgorithm!;
          }
        }
        if (input.sseCustomerKey != null) {
          if (input.sseCustomerKey!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-customer-key'] =
                input.sseCustomerKey!;
          }
        }
        if (input.sseCustomerKeyMd5 != null) {
          if (input.sseCustomerKeyMd5!.isNotEmpty) {
            b.headers['x-amz-server-side-encryption-customer-key-MD5'] =
                input.sseCustomerKeyMd5!;
          }
        }
        if (input.requestPayer != null) {
          b.headers['x-amz-request-payer'] = input.requestPayer!.value;
        }
        if (input.expectedBucketOwner != null) {
          if (input.expectedBucketOwner!.isNotEmpty) {
            b.headers['x-amz-expected-bucket-owner'] =
                input.expectedBucketOwner!;
          }
        }
        if (input.objectAttributes.isNotEmpty) {
          b.headers['x-amz-object-attributes'] = input.objectAttributes
              .map((el) => el.value)
              .map((el) => _i1.sanitizeHeader(el))
              .join(', ');
        }
        if (input.versionId != null) {
          b.queryParameters.add(
            'versionId',
            input.versionId!,
          );
        }
      });
  @override
  int successCode([GetObjectAttributesOutput? output]) => 200;
  @override
  GetObjectAttributesOutput buildOutput(
    GetObjectAttributesOutputPayload payload,
    _i4.AWSBaseHttpResponse response,
  ) =>
      GetObjectAttributesOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError<NoSuchKey, NoSuchKey>(
          _i1.ShapeId(
            namespace: 'com.amazonaws.s3',
            shape: 'NoSuchKey',
          ),
          _i1.ErrorKind.client,
          NoSuchKey,
          builder: NoSuchKey.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'GetObjectAttributes';
  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();
  @override
  Uri get baseUri {
    var baseUri = _baseUri ?? endpoint.uri;
    if (_s3ClientConfig.useDualStack) {
      baseUri = baseUri.replace(
        host: baseUri.host.replaceFirst(RegExp(r'^s3\.'), 's3.dualstack.'),
      );
    }
    if (_s3ClientConfig.useAcceleration) {
      baseUri = baseUri.replace(
        host: baseUri.host
            .replaceFirst(RegExp('$_region\\.'), '')
            .replaceFirst(RegExp(r'^s3\.'), 's3-accelerate.'),
      );
    }
    return baseUri;
  }

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<GetObjectAttributesOutput> run(
    GetObjectAttributesRequest input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
