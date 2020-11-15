// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import 'dart:convert';
import 'dart:typed_data';

import 'package:shared_aws_api/shared.dart' as _s;
import 'package:shared_aws_api/shared.dart'
    show Uint8ListConverter, Uint8ListListConverter;

export 'package:shared_aws_api/shared.dart' show AwsClientCredentials;

/// This is the <i>Amazon CloudFront API Reference</i>. This guide is for
/// developers who need detailed information about CloudFront API actions, data
/// types, and errors. For detailed information about CloudFront features, see
/// the <i>Amazon CloudFront Developer Guide</i>.
class CloudFront {
  final _s.RestXmlProtocol _protocol;
  CloudFront({
    String region,
    _s.AwsClientCredentials credentials,
    _s.Client client,
    String endpointUrl,
  }) : _protocol = _s.RestXmlProtocol(
          client: client,
          service: _s.ServiceMetadata(
            endpointPrefix: 'cloudfront',
          ),
          region: region,
          credentials: credentials,
          endpointUrl: endpointUrl,
        );

  /// Creates a new origin access identity. If you're using Amazon S3 for your
  /// origin, you can use an origin access identity to require users to access
  /// your content using a CloudFront URL instead of the Amazon S3 URL. For more
  /// information about how to use origin access identities, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
  /// Private Content through CloudFront</a> in the <i>Amazon CloudFront
  /// Developer Guide</i>.
  ///
  /// May throw [CloudFrontOriginAccessIdentityAlreadyExists].
  /// May throw [MissingBody].
  /// May throw [TooManyCloudFrontOriginAccessIdentities].
  /// May throw [InvalidArgument].
  /// May throw [InconsistentQuantities].
  ///
  /// Parameter [cloudFrontOriginAccessIdentityConfig] :
  /// The current configuration information for the identity.
  Future<CreateCloudFrontOriginAccessIdentityResult>
      createCloudFrontOriginAccessIdentity2017_10_30({
    @_s.required
        CloudFrontOriginAccessIdentityConfig
            cloudFrontOriginAccessIdentityConfig,
  }) async {
    ArgumentError.checkNotNull(cloudFrontOriginAccessIdentityConfig,
        'cloudFrontOriginAccessIdentityConfig');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/origin-access-identity/cloudfront',
      payload: cloudFrontOriginAccessIdentityConfig
          .toXml('CloudFrontOriginAccessIdentityConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateCloudFrontOriginAccessIdentityResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Creates a new web distribution. Send a <code>POST</code> request to the
  /// <code>/<i>CloudFront API
  /// version</i>/distribution</code>/<code>distribution ID</code> resource.
  ///
  /// May throw [CNAMEAlreadyExists].
  /// May throw [DistributionAlreadyExists].
  /// May throw [InvalidOrigin].
  /// May throw [InvalidOriginAccessIdentity].
  /// May throw [AccessDenied].
  /// May throw [TooManyTrustedSigners].
  /// May throw [TrustedSignerDoesNotExist].
  /// May throw [InvalidViewerCertificate].
  /// May throw [InvalidMinimumProtocolVersion].
  /// May throw [MissingBody].
  /// May throw [TooManyDistributionCNAMEs].
  /// May throw [TooManyDistributions].
  /// May throw [InvalidDefaultRootObject].
  /// May throw [InvalidRelativePath].
  /// May throw [InvalidErrorCode].
  /// May throw [InvalidResponseCode].
  /// May throw [InvalidArgument].
  /// May throw [InvalidRequiredProtocol].
  /// May throw [NoSuchOrigin].
  /// May throw [TooManyOrigins].
  /// May throw [TooManyCacheBehaviors].
  /// May throw [TooManyCookieNamesInWhiteList].
  /// May throw [InvalidForwardCookies].
  /// May throw [TooManyHeadersInForwardedValues].
  /// May throw [InvalidHeadersForS3Origin].
  /// May throw [InconsistentQuantities].
  /// May throw [TooManyCertificates].
  /// May throw [InvalidLocationCode].
  /// May throw [InvalidGeoRestrictionParameter].
  /// May throw [InvalidProtocolSettings].
  /// May throw [InvalidTTLOrder].
  /// May throw [InvalidWebACLId].
  /// May throw [TooManyOriginCustomHeaders].
  /// May throw [TooManyQueryStringParameters].
  /// May throw [InvalidQueryStringParameters].
  /// May throw [TooManyDistributionsWithLambdaAssociations].
  /// May throw [TooManyLambdaFunctionAssociations].
  /// May throw [InvalidLambdaFunctionAssociation].
  /// May throw [InvalidOriginReadTimeout].
  /// May throw [InvalidOriginKeepaliveTimeout].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  /// May throw [IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior].
  /// May throw [TooManyDistributionsAssociatedToFieldLevelEncryptionConfig].
  ///
  /// Parameter [distributionConfig] :
  /// The distribution's configuration information.
  Future<CreateDistributionResult> createDistribution2017_10_30({
    @_s.required DistributionConfig distributionConfig,
  }) async {
    ArgumentError.checkNotNull(distributionConfig, 'distributionConfig');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/distribution',
      payload: distributionConfig.toXml('DistributionConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateDistributionResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Create a new distribution with tags.
  ///
  /// May throw [CNAMEAlreadyExists].
  /// May throw [DistributionAlreadyExists].
  /// May throw [InvalidOrigin].
  /// May throw [InvalidOriginAccessIdentity].
  /// May throw [AccessDenied].
  /// May throw [TooManyTrustedSigners].
  /// May throw [TrustedSignerDoesNotExist].
  /// May throw [InvalidViewerCertificate].
  /// May throw [InvalidMinimumProtocolVersion].
  /// May throw [MissingBody].
  /// May throw [TooManyDistributionCNAMEs].
  /// May throw [TooManyDistributions].
  /// May throw [InvalidDefaultRootObject].
  /// May throw [InvalidRelativePath].
  /// May throw [InvalidErrorCode].
  /// May throw [InvalidResponseCode].
  /// May throw [InvalidArgument].
  /// May throw [InvalidRequiredProtocol].
  /// May throw [NoSuchOrigin].
  /// May throw [TooManyOrigins].
  /// May throw [TooManyCacheBehaviors].
  /// May throw [TooManyCookieNamesInWhiteList].
  /// May throw [InvalidForwardCookies].
  /// May throw [TooManyHeadersInForwardedValues].
  /// May throw [InvalidHeadersForS3Origin].
  /// May throw [InconsistentQuantities].
  /// May throw [TooManyCertificates].
  /// May throw [InvalidLocationCode].
  /// May throw [InvalidGeoRestrictionParameter].
  /// May throw [InvalidProtocolSettings].
  /// May throw [InvalidTTLOrder].
  /// May throw [InvalidWebACLId].
  /// May throw [TooManyOriginCustomHeaders].
  /// May throw [InvalidTagging].
  /// May throw [TooManyQueryStringParameters].
  /// May throw [InvalidQueryStringParameters].
  /// May throw [TooManyDistributionsWithLambdaAssociations].
  /// May throw [TooManyLambdaFunctionAssociations].
  /// May throw [InvalidLambdaFunctionAssociation].
  /// May throw [InvalidOriginReadTimeout].
  /// May throw [InvalidOriginKeepaliveTimeout].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  /// May throw [IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior].
  /// May throw [TooManyDistributionsAssociatedToFieldLevelEncryptionConfig].
  ///
  /// Parameter [distributionConfigWithTags] :
  /// The distribution's configuration information.
  Future<CreateDistributionWithTagsResult>
      createDistributionWithTags2017_10_30({
    @_s.required DistributionConfigWithTags distributionConfigWithTags,
  }) async {
    ArgumentError.checkNotNull(
        distributionConfigWithTags, 'distributionConfigWithTags');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/distribution?WithTags',
      payload: distributionConfigWithTags.toXml('DistributionConfigWithTags'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateDistributionWithTagsResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Create a new field-level encryption configuration.
  ///
  /// May throw [InconsistentQuantities].
  /// May throw [InvalidArgument].
  /// May throw [NoSuchFieldLevelEncryptionProfile].
  /// May throw [FieldLevelEncryptionConfigAlreadyExists].
  /// May throw [TooManyFieldLevelEncryptionConfigs].
  /// May throw [TooManyFieldLevelEncryptionQueryArgProfiles].
  /// May throw [TooManyFieldLevelEncryptionContentTypeProfiles].
  /// May throw [QueryArgProfileEmpty].
  ///
  /// Parameter [fieldLevelEncryptionConfig] :
  /// The request to create a new field-level encryption configuration.
  Future<CreateFieldLevelEncryptionConfigResult>
      createFieldLevelEncryptionConfig2017_10_30({
    @_s.required FieldLevelEncryptionConfig fieldLevelEncryptionConfig,
  }) async {
    ArgumentError.checkNotNull(
        fieldLevelEncryptionConfig, 'fieldLevelEncryptionConfig');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/field-level-encryption',
      payload: fieldLevelEncryptionConfig.toXml('FieldLevelEncryptionConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateFieldLevelEncryptionConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Create a field-level encryption profile.
  ///
  /// May throw [InconsistentQuantities].
  /// May throw [InvalidArgument].
  /// May throw [NoSuchPublicKey].
  /// May throw [FieldLevelEncryptionProfileAlreadyExists].
  /// May throw [FieldLevelEncryptionProfileSizeExceeded].
  /// May throw [TooManyFieldLevelEncryptionProfiles].
  /// May throw [TooManyFieldLevelEncryptionEncryptionEntities].
  /// May throw [TooManyFieldLevelEncryptionFieldPatterns].
  ///
  /// Parameter [fieldLevelEncryptionProfileConfig] :
  /// The request to create a field-level encryption profile.
  Future<CreateFieldLevelEncryptionProfileResult>
      createFieldLevelEncryptionProfile2017_10_30({
    @_s.required
        FieldLevelEncryptionProfileConfig fieldLevelEncryptionProfileConfig,
  }) async {
    ArgumentError.checkNotNull(
        fieldLevelEncryptionProfileConfig, 'fieldLevelEncryptionProfileConfig');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/field-level-encryption-profile',
      payload: fieldLevelEncryptionProfileConfig
          .toXml('FieldLevelEncryptionProfileConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateFieldLevelEncryptionProfileResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Create a new invalidation.
  ///
  /// May throw [AccessDenied].
  /// May throw [MissingBody].
  /// May throw [InvalidArgument].
  /// May throw [NoSuchDistribution].
  /// May throw [BatchTooLarge].
  /// May throw [TooManyInvalidationsInProgress].
  /// May throw [InconsistentQuantities].
  ///
  /// Parameter [distributionId] :
  /// The distribution's id.
  ///
  /// Parameter [invalidationBatch] :
  /// The batch information for the invalidation.
  Future<CreateInvalidationResult> createInvalidation2017_10_30({
    @_s.required String distributionId,
    @_s.required InvalidationBatch invalidationBatch,
  }) async {
    ArgumentError.checkNotNull(distributionId, 'distributionId');
    ArgumentError.checkNotNull(invalidationBatch, 'invalidationBatch');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(distributionId.toString())}/invalidation',
      payload: invalidationBatch.toXml('InvalidationBatch'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateInvalidationResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Add a new public key to CloudFront to use, for example, for field-level
  /// encryption. You can add a maximum of 10 public keys with one AWS account.
  ///
  /// May throw [PublicKeyAlreadyExists].
  /// May throw [InvalidArgument].
  /// May throw [TooManyPublicKeys].
  ///
  /// Parameter [publicKeyConfig] :
  /// The request to add a public key to CloudFront.
  Future<CreatePublicKeyResult> createPublicKey2017_10_30({
    @_s.required PublicKeyConfig publicKeyConfig,
  }) async {
    ArgumentError.checkNotNull(publicKeyConfig, 'publicKeyConfig');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/public-key',
      payload: publicKeyConfig.toXml('PublicKeyConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return CreatePublicKeyResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Creates a new RMTP distribution. An RTMP distribution is similar to a web
  /// distribution, but an RTMP distribution streams media files using the Adobe
  /// Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP.
  ///
  /// To create a new web distribution, submit a <code>POST</code> request to
  /// the <i>CloudFront API version</i>/distribution resource. The request body
  /// must include a document with a <i>StreamingDistributionConfig</i> element.
  /// The response echoes the <code>StreamingDistributionConfig</code> element
  /// and returns other information about the RTMP distribution.
  ///
  /// To get the status of your request, use the <i>GET
  /// StreamingDistribution</i> API action. When the value of
  /// <code>Enabled</code> is <code>true</code> and the value of
  /// <code>Status</code> is <code>Deployed</code>, your distribution is ready.
  /// A distribution usually deploys in less than 15 minutes.
  ///
  /// For more information about web distributions, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html">Working
  /// with RTMP Distributions</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  /// <important>
  /// Beginning with the 2012-05-05 version of the CloudFront API, we made
  /// substantial changes to the format of the XML document that you include in
  /// the request body when you create or update a web distribution or an RTMP
  /// distribution, and when you invalidate objects. With previous versions of
  /// the API, we discovered that it was too easy to accidentally delete one or
  /// more values for an element that accepts multiple values, for example,
  /// CNAMEs and trusted signers. Our changes for the 2012-05-05 release are
  /// intended to prevent these accidental deletions and to notify you when
  /// there's a mismatch between the number of values you say you're specifying
  /// in the <code>Quantity</code> element and the number of values specified.
  /// </important>
  ///
  /// May throw [CNAMEAlreadyExists].
  /// May throw [StreamingDistributionAlreadyExists].
  /// May throw [InvalidOrigin].
  /// May throw [InvalidOriginAccessIdentity].
  /// May throw [AccessDenied].
  /// May throw [TooManyTrustedSigners].
  /// May throw [TrustedSignerDoesNotExist].
  /// May throw [MissingBody].
  /// May throw [TooManyStreamingDistributionCNAMEs].
  /// May throw [TooManyStreamingDistributions].
  /// May throw [InvalidArgument].
  /// May throw [InconsistentQuantities].
  ///
  /// Parameter [streamingDistributionConfig] :
  /// The streaming distribution's configuration information.
  Future<CreateStreamingDistributionResult>
      createStreamingDistribution2017_10_30({
    @_s.required StreamingDistributionConfig streamingDistributionConfig,
  }) async {
    ArgumentError.checkNotNull(
        streamingDistributionConfig, 'streamingDistributionConfig');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/streaming-distribution',
      payload: streamingDistributionConfig.toXml('StreamingDistributionConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateStreamingDistributionResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Create a new streaming distribution with tags.
  ///
  /// May throw [CNAMEAlreadyExists].
  /// May throw [StreamingDistributionAlreadyExists].
  /// May throw [InvalidOrigin].
  /// May throw [InvalidOriginAccessIdentity].
  /// May throw [AccessDenied].
  /// May throw [TooManyTrustedSigners].
  /// May throw [TrustedSignerDoesNotExist].
  /// May throw [MissingBody].
  /// May throw [TooManyStreamingDistributionCNAMEs].
  /// May throw [TooManyStreamingDistributions].
  /// May throw [InvalidArgument].
  /// May throw [InconsistentQuantities].
  /// May throw [InvalidTagging].
  ///
  /// Parameter [streamingDistributionConfigWithTags] :
  /// The streaming distribution's configuration information.
  Future<CreateStreamingDistributionWithTagsResult>
      createStreamingDistributionWithTags2017_10_30({
    @_s.required
        StreamingDistributionConfigWithTags streamingDistributionConfigWithTags,
  }) async {
    ArgumentError.checkNotNull(streamingDistributionConfigWithTags,
        'streamingDistributionConfigWithTags');
    final $result = await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/streaming-distribution?WithTags',
      payload: streamingDistributionConfigWithTags
          .toXml('StreamingDistributionConfigWithTags'),
      exceptionFnMap: _exceptionFns,
    );
    return CreateStreamingDistributionWithTagsResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Delete an origin access identity.
  ///
  /// May throw [AccessDenied].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchCloudFrontOriginAccessIdentity].
  /// May throw [PreconditionFailed].
  /// May throw [CloudFrontOriginAccessIdentityInUse].
  ///
  /// Parameter [id] :
  /// The origin access identity's ID.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header you received from a previous
  /// <code>GET</code> or <code>PUT</code> request. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<void> deleteCloudFrontOriginAccessIdentity2017_10_30({
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    await _protocol.send(
      method: 'DELETE',
      requestUri:
          '/2017-10-30/origin-access-identity/cloudfront/${Uri.encodeComponent(id.toString())}',
      headers: headers,
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Delete a distribution.
  ///
  /// May throw [AccessDenied].
  /// May throw [DistributionNotDisabled].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchDistribution].
  /// May throw [PreconditionFailed].
  ///
  /// Parameter [id] :
  /// The distribution ID.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when you
  /// disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>.
  Future<void> deleteDistribution2017_10_30({
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    await _protocol.send(
      method: 'DELETE',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(id.toString())}',
      headers: headers,
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Remove a field-level encryption configuration.
  ///
  /// May throw [AccessDenied].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  /// May throw [PreconditionFailed].
  /// May throw [FieldLevelEncryptionConfigInUse].
  ///
  /// Parameter [id] :
  /// The ID of the configuration you want to delete from CloudFront.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the configuration identity to delete. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<void> deleteFieldLevelEncryptionConfig2017_10_30({
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    await _protocol.send(
      method: 'DELETE',
      requestUri:
          '/2017-10-30/field-level-encryption/${Uri.encodeComponent(id.toString())}',
      headers: headers,
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Remove a field-level encryption profile.
  ///
  /// May throw [AccessDenied].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchFieldLevelEncryptionProfile].
  /// May throw [PreconditionFailed].
  /// May throw [FieldLevelEncryptionProfileInUse].
  ///
  /// Parameter [id] :
  /// Request the ID of the profile you want to delete from CloudFront.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the profile to delete. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<void> deleteFieldLevelEncryptionProfile2017_10_30({
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    await _protocol.send(
      method: 'DELETE',
      requestUri:
          '/2017-10-30/field-level-encryption-profile/${Uri.encodeComponent(id.toString())}',
      headers: headers,
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Remove a public key you previously added to CloudFront.
  ///
  /// May throw [AccessDenied].
  /// May throw [PublicKeyInUse].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchPublicKey].
  /// May throw [PreconditionFailed].
  ///
  /// Parameter [id] :
  /// The ID of the public key you want to remove from CloudFront.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the public key identity to delete. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<void> deletePublicKey2017_10_30({
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    await _protocol.send(
      method: 'DELETE',
      requestUri:
          '/2017-10-30/public-key/${Uri.encodeComponent(id.toString())}',
      headers: headers,
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Delete a streaming distribution. To delete an RTMP distribution using the
  /// CloudFront API, perform the following steps.
  ///
  /// <b>To delete an RTMP distribution using the CloudFront API</b>:
  /// <ol>
  /// <li>
  /// Disable the RTMP distribution.
  /// </li>
  /// <li>
  /// Submit a <code>GET Streaming Distribution Config</code> request to get the
  /// current configuration and the <code>Etag</code> header for the
  /// distribution.
  /// </li>
  /// <li>
  /// Update the XML document that was returned in the response to your
  /// <code>GET Streaming Distribution Config</code> request to change the value
  /// of <code>Enabled</code> to <code>false</code>.
  /// </li>
  /// <li>
  /// Submit a <code>PUT Streaming Distribution Config</code> request to update
  /// the configuration for your distribution. In the request body, include the
  /// XML document that you updated in Step 3. Then set the value of the HTTP
  /// <code>If-Match</code> header to the value of the <code>ETag</code> header
  /// that CloudFront returned when you submitted the <code>GET Streaming
  /// Distribution Config</code> request in Step 2.
  /// </li>
  /// <li>
  /// Review the response to the <code>PUT Streaming Distribution Config</code>
  /// request to confirm that the distribution was successfully disabled.
  /// </li>
  /// <li>
  /// Submit a <code>GET Streaming Distribution Config</code> request to confirm
  /// that your changes have propagated. When propagation is complete, the value
  /// of <code>Status</code> is <code>Deployed</code>.
  /// </li>
  /// <li>
  /// Submit a <code>DELETE Streaming Distribution</code> request. Set the value
  /// of the HTTP <code>If-Match</code> header to the value of the
  /// <code>ETag</code> header that CloudFront returned when you submitted the
  /// <code>GET Streaming Distribution Config</code> request in Step 2.
  /// </li>
  /// <li>
  /// Review the response to your <code>DELETE Streaming Distribution</code>
  /// request to confirm that the distribution was successfully deleted.
  /// </li> </ol>
  /// For information about deleting a distribution using the CloudFront
  /// console, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting
  /// a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.
  ///
  /// May throw [AccessDenied].
  /// May throw [StreamingDistributionNotDisabled].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchStreamingDistribution].
  /// May throw [PreconditionFailed].
  ///
  /// Parameter [id] :
  /// The distribution ID.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when you
  /// disabled the streaming distribution. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<void> deleteStreamingDistribution2017_10_30({
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    await _protocol.send(
      method: 'DELETE',
      requestUri:
          '/2017-10-30/streaming-distribution/${Uri.encodeComponent(id.toString())}',
      headers: headers,
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Get the information about an origin access identity.
  ///
  /// May throw [NoSuchCloudFrontOriginAccessIdentity].
  /// May throw [AccessDenied].
  ///
  /// Parameter [id] :
  /// The identity's ID.
  Future<GetCloudFrontOriginAccessIdentityResult>
      getCloudFrontOriginAccessIdentity2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/origin-access-identity/cloudfront/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetCloudFrontOriginAccessIdentityResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the configuration information about an origin access identity.
  ///
  /// May throw [NoSuchCloudFrontOriginAccessIdentity].
  /// May throw [AccessDenied].
  ///
  /// Parameter [id] :
  /// The identity's ID.
  Future<GetCloudFrontOriginAccessIdentityConfigResult>
      getCloudFrontOriginAccessIdentityConfig2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/origin-access-identity/cloudfront/${Uri.encodeComponent(id.toString())}/config',
      exceptionFnMap: _exceptionFns,
    );
    return GetCloudFrontOriginAccessIdentityConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the information about a distribution.
  ///
  /// May throw [NoSuchDistribution].
  /// May throw [AccessDenied].
  ///
  /// Parameter [id] :
  /// The distribution's ID.
  Future<GetDistributionResult> getDistribution2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetDistributionResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the configuration information about a distribution.
  ///
  /// May throw [NoSuchDistribution].
  /// May throw [AccessDenied].
  ///
  /// Parameter [id] :
  /// The distribution's ID.
  Future<GetDistributionConfigResult> getDistributionConfig2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(id.toString())}/config',
      exceptionFnMap: _exceptionFns,
    );
    return GetDistributionConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the field-level encryption configuration information.
  ///
  /// May throw [AccessDenied].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  ///
  /// Parameter [id] :
  /// Request the ID for the field-level encryption configuration information.
  Future<GetFieldLevelEncryptionResult> getFieldLevelEncryption2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/field-level-encryption/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetFieldLevelEncryptionResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the field-level encryption configuration information.
  ///
  /// May throw [AccessDenied].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  ///
  /// Parameter [id] :
  /// Request the ID for the field-level encryption configuration information.
  Future<GetFieldLevelEncryptionConfigResult>
      getFieldLevelEncryptionConfig2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/field-level-encryption/${Uri.encodeComponent(id.toString())}/config',
      exceptionFnMap: _exceptionFns,
    );
    return GetFieldLevelEncryptionConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the field-level encryption profile information.
  ///
  /// May throw [AccessDenied].
  /// May throw [NoSuchFieldLevelEncryptionProfile].
  ///
  /// Parameter [id] :
  /// Get the ID for the field-level encryption profile information.
  Future<GetFieldLevelEncryptionProfileResult>
      getFieldLevelEncryptionProfile2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/field-level-encryption-profile/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetFieldLevelEncryptionProfileResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the field-level encryption profile configuration information.
  ///
  /// May throw [AccessDenied].
  /// May throw [NoSuchFieldLevelEncryptionProfile].
  ///
  /// Parameter [id] :
  /// Get the ID for the field-level encryption profile configuration
  /// information.
  Future<GetFieldLevelEncryptionProfileConfigResult>
      getFieldLevelEncryptionProfileConfig2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/field-level-encryption-profile/${Uri.encodeComponent(id.toString())}/config',
      exceptionFnMap: _exceptionFns,
    );
    return GetFieldLevelEncryptionProfileConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the information about an invalidation.
  ///
  /// May throw [NoSuchInvalidation].
  /// May throw [NoSuchDistribution].
  /// May throw [AccessDenied].
  ///
  /// Parameter [distributionId] :
  /// The distribution's ID.
  ///
  /// Parameter [id] :
  /// The identifier for the invalidation request, for example,
  /// <code>IDFDVBD632BHDS5</code>.
  Future<GetInvalidationResult> getInvalidation2017_10_30({
    @_s.required String distributionId,
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(distributionId, 'distributionId');
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(distributionId.toString())}/invalidation/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetInvalidationResult.fromXml($result.body);
  }

  /// Get the public key information.
  ///
  /// May throw [AccessDenied].
  /// May throw [NoSuchPublicKey].
  ///
  /// Parameter [id] :
  /// Request the ID for the public key.
  Future<GetPublicKeyResult> getPublicKey2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/public-key/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetPublicKeyResult.fromXml($result.body, headers: $result.headers);
  }

  /// Return public key configuration informaation
  ///
  /// May throw [AccessDenied].
  /// May throw [NoSuchPublicKey].
  ///
  /// Parameter [id] :
  /// Request the ID for the public key configuration.
  Future<GetPublicKeyConfigResult> getPublicKeyConfig2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/public-key/${Uri.encodeComponent(id.toString())}/config',
      exceptionFnMap: _exceptionFns,
    );
    return GetPublicKeyConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Gets information about a specified RTMP distribution, including the
  /// distribution configuration.
  ///
  /// May throw [NoSuchStreamingDistribution].
  /// May throw [AccessDenied].
  ///
  /// Parameter [id] :
  /// The streaming distribution's ID.
  Future<GetStreamingDistributionResult> getStreamingDistribution2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/streaming-distribution/${Uri.encodeComponent(id.toString())}',
      exceptionFnMap: _exceptionFns,
    );
    return GetStreamingDistributionResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Get the configuration information about a streaming distribution.
  ///
  /// May throw [NoSuchStreamingDistribution].
  /// May throw [AccessDenied].
  ///
  /// Parameter [id] :
  /// The streaming distribution's ID.
  Future<GetStreamingDistributionConfigResult>
      getStreamingDistributionConfig2017_10_30({
    @_s.required String id,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/streaming-distribution/${Uri.encodeComponent(id.toString())}/config',
      exceptionFnMap: _exceptionFns,
    );
    return GetStreamingDistributionConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Lists origin access identities.
  ///
  /// May throw [InvalidArgument].
  ///
  /// Parameter [marker] :
  /// Use this when paginating results to indicate where to begin in your list
  /// of origin access identities. The results include identities in the list
  /// that occur after the marker. To get the next page of results, set the
  /// <code>Marker</code> to the value of the <code>NextMarker</code> from the
  /// current page's response (which is also the ID of the last identity on that
  /// page).
  ///
  /// Parameter [maxItems] :
  /// The maximum number of origin access identities you want in the response
  /// body.
  Future<ListCloudFrontOriginAccessIdentitiesResult>
      listCloudFrontOriginAccessIdentities2017_10_30({
    String marker,
    String maxItems,
  }) async {
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/origin-access-identity/cloudfront',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListCloudFrontOriginAccessIdentitiesResult.fromXml($result.body);
  }

  /// List distributions.
  ///
  /// May throw [InvalidArgument].
  ///
  /// Parameter [marker] :
  /// Use this when paginating results to indicate where to begin in your list
  /// of distributions. The results include distributions in the list that occur
  /// after the marker. To get the next page of results, set the
  /// <code>Marker</code> to the value of the <code>NextMarker</code> from the
  /// current page's response (which is also the ID of the last distribution on
  /// that page).
  ///
  /// Parameter [maxItems] :
  /// The maximum number of distributions you want in the response body.
  Future<ListDistributionsResult> listDistributions2017_10_30({
    String marker,
    String maxItems,
  }) async {
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/distribution',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListDistributionsResult.fromXml($result.body);
  }

  /// List the distributions that are associated with a specified AWS WAF web
  /// ACL.
  ///
  /// May throw [InvalidArgument].
  /// May throw [InvalidWebACLId].
  ///
  /// Parameter [webACLId] :
  /// The ID of the AWS WAF web ACL that you want to list the associated
  /// distributions. If you specify "null" for the ID, the request returns a
  /// list of the distributions that aren't associated with a web ACL.
  ///
  /// Parameter [marker] :
  /// Use <code>Marker</code> and <code>MaxItems</code> to control pagination of
  /// results. If you have more than <code>MaxItems</code> distributions that
  /// satisfy the request, the response includes a <code>NextMarker</code>
  /// element. To get the next page of results, submit another request. For the
  /// value of <code>Marker</code>, specify the value of <code>NextMarker</code>
  /// from the last response. (For the first request, omit <code>Marker</code>.)
  ///
  /// Parameter [maxItems] :
  /// The maximum number of distributions that you want CloudFront to return in
  /// the response body. The maximum and default values are both 100.
  Future<ListDistributionsByWebACLIdResult>
      listDistributionsByWebACLId2017_10_30({
    @_s.required String webACLId,
    String marker,
    String maxItems,
  }) async {
    ArgumentError.checkNotNull(webACLId, 'webACLId');
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/distributionsByWebACLId/${Uri.encodeComponent(webACLId.toString())}',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListDistributionsByWebACLIdResult.fromXml($result.body);
  }

  /// List all field-level encryption configurations that have been created in
  /// CloudFront for this account.
  ///
  /// May throw [InvalidArgument].
  ///
  /// Parameter [marker] :
  /// Use this when paginating results to indicate where to begin in your list
  /// of configurations. The results include configurations in the list that
  /// occur after the marker. To get the next page of results, set the
  /// <code>Marker</code> to the value of the <code>NextMarker</code> from the
  /// current page's response (which is also the ID of the last configuration on
  /// that page).
  ///
  /// Parameter [maxItems] :
  /// The maximum number of field-level encryption configurations you want in
  /// the response body.
  Future<ListFieldLevelEncryptionConfigsResult>
      listFieldLevelEncryptionConfigs2017_10_30({
    String marker,
    String maxItems,
  }) async {
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/field-level-encryption',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListFieldLevelEncryptionConfigsResult.fromXml($result.body);
  }

  /// Request a list of field-level encryption profiles that have been created
  /// in CloudFront for this account.
  ///
  /// May throw [InvalidArgument].
  ///
  /// Parameter [marker] :
  /// Use this when paginating results to indicate where to begin in your list
  /// of profiles. The results include profiles in the list that occur after the
  /// marker. To get the next page of results, set the <code>Marker</code> to
  /// the value of the <code>NextMarker</code> from the current page's response
  /// (which is also the ID of the last profile on that page).
  ///
  /// Parameter [maxItems] :
  /// The maximum number of field-level encryption profiles you want in the
  /// response body.
  Future<ListFieldLevelEncryptionProfilesResult>
      listFieldLevelEncryptionProfiles2017_10_30({
    String marker,
    String maxItems,
  }) async {
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/field-level-encryption-profile',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListFieldLevelEncryptionProfilesResult.fromXml($result.body);
  }

  /// Lists invalidation batches.
  ///
  /// May throw [InvalidArgument].
  /// May throw [NoSuchDistribution].
  /// May throw [AccessDenied].
  ///
  /// Parameter [distributionId] :
  /// The distribution's ID.
  ///
  /// Parameter [marker] :
  /// Use this parameter when paginating results to indicate where to begin in
  /// your list of invalidation batches. Because the results are returned in
  /// decreasing order from most recent to oldest, the most recent results are
  /// on the first page, the second page will contain earlier results, and so
  /// on. To get the next page of results, set <code>Marker</code> to the value
  /// of the <code>NextMarker</code> from the current page's response. This
  /// value is the same as the ID of the last invalidation batch on that page.
  ///
  /// Parameter [maxItems] :
  /// The maximum number of invalidation batches that you want in the response
  /// body.
  Future<ListInvalidationsResult> listInvalidations2017_10_30({
    @_s.required String distributionId,
    String marker,
    String maxItems,
  }) async {
    ArgumentError.checkNotNull(distributionId, 'distributionId');
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(distributionId.toString())}/invalidation',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListInvalidationsResult.fromXml($result.body);
  }

  /// List all public keys that have been added to CloudFront for this account.
  ///
  /// May throw [InvalidArgument].
  ///
  /// Parameter [marker] :
  /// Use this when paginating results to indicate where to begin in your list
  /// of public keys. The results include public keys in the list that occur
  /// after the marker. To get the next page of results, set the
  /// <code>Marker</code> to the value of the <code>NextMarker</code> from the
  /// current page's response (which is also the ID of the last public key on
  /// that page).
  ///
  /// Parameter [maxItems] :
  /// The maximum number of public keys you want in the response body.
  Future<ListPublicKeysResult> listPublicKeys2017_10_30({
    String marker,
    String maxItems,
  }) async {
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/public-key',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListPublicKeysResult.fromXml($result.body);
  }

  /// List streaming distributions.
  ///
  /// May throw [InvalidArgument].
  ///
  /// Parameter [marker] :
  /// The value that you provided for the <code>Marker</code> request parameter.
  ///
  /// Parameter [maxItems] :
  /// The value that you provided for the <code>MaxItems</code> request
  /// parameter.
  Future<ListStreamingDistributionsResult>
      listStreamingDistributions2017_10_30({
    String marker,
    String maxItems,
  }) async {
    final queryParams = <String, String>{};
    marker?.let((v) => queryParams['Marker'] = v.toString());
    maxItems?.let((v) => queryParams['MaxItems'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/streaming-distribution',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListStreamingDistributionsResult.fromXml($result.body);
  }

  /// List tags for a CloudFront resource.
  ///
  /// May throw [AccessDenied].
  /// May throw [InvalidArgument].
  /// May throw [InvalidTagging].
  /// May throw [NoSuchResource].
  ///
  /// Parameter [resource] :
  /// An ARN of a CloudFront resource.
  Future<ListTagsForResourceResult> listTagsForResource2017_10_30({
    @_s.required String resource,
  }) async {
    ArgumentError.checkNotNull(resource, 'resource');
    _s.validateStringPattern(
      'resource',
      resource,
      r'''arn:aws:cloudfront::[0-9]+:.*''',
      isRequired: true,
    );
    final queryParams = <String, String>{};
    resource?.let((v) => queryParams['Resource'] = v.toString());
    final $result = await _protocol.send(
      method: 'GET',
      requestUri: '/2017-10-30/tagging',
      queryParams: queryParams,
      exceptionFnMap: _exceptionFns,
    );
    return ListTagsForResourceResult.fromXml($result.body);
  }

  /// Add tags to a CloudFront resource.
  ///
  /// May throw [AccessDenied].
  /// May throw [InvalidArgument].
  /// May throw [InvalidTagging].
  /// May throw [NoSuchResource].
  ///
  /// Parameter [resource] :
  /// An ARN of a CloudFront resource.
  ///
  /// Parameter [tags] :
  /// A complex type that contains zero or more <code>Tag</code> elements.
  Future<void> tagResource2017_10_30({
    @_s.required String resource,
    @_s.required Tags tags,
  }) async {
    ArgumentError.checkNotNull(resource, 'resource');
    _s.validateStringPattern(
      'resource',
      resource,
      r'''arn:aws:cloudfront::[0-9]+:.*''',
      isRequired: true,
    );
    ArgumentError.checkNotNull(tags, 'tags');
    final queryParams = <String, String>{};
    resource?.let((v) => queryParams['Resource'] = v.toString());
    await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/tagging?Operation=Tag',
      queryParams: queryParams,
      payload: tags.toXml('Tags'),
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Remove tags from a CloudFront resource.
  ///
  /// May throw [AccessDenied].
  /// May throw [InvalidArgument].
  /// May throw [InvalidTagging].
  /// May throw [NoSuchResource].
  ///
  /// Parameter [resource] :
  /// An ARN of a CloudFront resource.
  ///
  /// Parameter [tagKeys] :
  /// A complex type that contains zero or more <code>Tag</code> key elements.
  Future<void> untagResource2017_10_30({
    @_s.required String resource,
    @_s.required TagKeys tagKeys,
  }) async {
    ArgumentError.checkNotNull(resource, 'resource');
    _s.validateStringPattern(
      'resource',
      resource,
      r'''arn:aws:cloudfront::[0-9]+:.*''',
      isRequired: true,
    );
    ArgumentError.checkNotNull(tagKeys, 'tagKeys');
    final queryParams = <String, String>{};
    resource?.let((v) => queryParams['Resource'] = v.toString());
    await _protocol.send(
      method: 'POST',
      requestUri: '/2017-10-30/tagging?Operation=Untag',
      queryParams: queryParams,
      payload: tagKeys.toXml('TagKeys'),
      exceptionFnMap: _exceptionFns,
    );
  }

  /// Update an origin access identity.
  ///
  /// May throw [AccessDenied].
  /// May throw [IllegalUpdate].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [MissingBody].
  /// May throw [NoSuchCloudFrontOriginAccessIdentity].
  /// May throw [PreconditionFailed].
  /// May throw [InvalidArgument].
  /// May throw [InconsistentQuantities].
  ///
  /// Parameter [cloudFrontOriginAccessIdentityConfig] :
  /// The identity's configuration information.
  ///
  /// Parameter [id] :
  /// The identity's id.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the identity's configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<UpdateCloudFrontOriginAccessIdentityResult>
      updateCloudFrontOriginAccessIdentity2017_10_30({
    @_s.required
        CloudFrontOriginAccessIdentityConfig
            cloudFrontOriginAccessIdentityConfig,
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(cloudFrontOriginAccessIdentityConfig,
        'cloudFrontOriginAccessIdentityConfig');
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    final $result = await _protocol.send(
      method: 'PUT',
      requestUri:
          '/2017-10-30/origin-access-identity/cloudfront/${Uri.encodeComponent(id.toString())}/config',
      headers: headers,
      payload: cloudFrontOriginAccessIdentityConfig
          .toXml('CloudFrontOriginAccessIdentityConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return UpdateCloudFrontOriginAccessIdentityResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Updates the configuration for a web distribution. Perform the following
  /// steps.
  ///
  /// For information about updating a distribution using the CloudFront
  /// console, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html">Creating
  /// or Updating a Web Distribution Using the CloudFront Console </a> in the
  /// <i>Amazon CloudFront Developer Guide</i>.
  ///
  /// <b>To update a web distribution using the CloudFront API</b>
  /// <ol>
  /// <li>
  /// Submit a <a>GetDistributionConfig</a> request to get the current
  /// configuration and an <code>Etag</code> header for the distribution.
  /// <note>
  /// If you update the distribution again, you need to get a new
  /// <code>Etag</code> header.
  /// </note> </li>
  /// <li>
  /// Update the XML document that was returned in the response to your
  /// <code>GetDistributionConfig</code> request to include the desired changes.
  /// You can't change the value of <code>CallerReference</code>. If you try to
  /// change this value, CloudFront returns an <code>IllegalUpdate</code> error.
  /// <important>
  /// The new configuration replaces the existing configuration; the values that
  /// you specify in an <code>UpdateDistribution</code> request are not merged
  /// into the existing configuration. When you add, delete, or replace values
  /// in an element that allows multiple values (for example,
  /// <code>CNAME</code>), you must specify all of the values that you want to
  /// appear in the updated distribution. In addition, you must update the
  /// corresponding <code>Quantity</code> element.
  /// </important> </li>
  /// <li>
  /// Submit an <code>UpdateDistribution</code> request to update the
  /// configuration for your distribution:
  ///
  /// <ul>
  /// <li>
  /// In the request body, include the XML document that you updated in Step 2.
  /// The request body must include an XML document with a
  /// <code>DistributionConfig</code> element.
  /// </li>
  /// <li>
  /// Set the value of the HTTP <code>If-Match</code> header to the value of the
  /// <code>ETag</code> header that CloudFront returned when you submitted the
  /// <code>GetDistributionConfig</code> request in Step 1.
  /// </li>
  /// </ul> </li>
  /// <li>
  /// Review the response to the <code>UpdateDistribution</code> request to
  /// confirm that the configuration was successfully updated.
  /// </li>
  /// <li>
  /// Optional: Submit a <a>GetDistribution</a> request to confirm that your
  /// changes have propagated. When propagation is complete, the value of
  /// <code>Status</code> is <code>Deployed</code>.
  /// <important>
  /// Beginning with the 2012-05-05 version of the CloudFront API, we made
  /// substantial changes to the format of the XML document that you include in
  /// the request body when you create or update a distribution. With previous
  /// versions of the API, we discovered that it was too easy to accidentally
  /// delete one or more values for an element that accepts multiple values, for
  /// example, CNAMEs and trusted signers. Our changes for the 2012-05-05
  /// release are intended to prevent these accidental deletions and to notify
  /// you when there's a mismatch between the number of values you say you're
  /// specifying in the <code>Quantity</code> element and the number of values
  /// you're actually specifying.
  /// </important> </li> </ol>
  ///
  /// May throw [AccessDenied].
  /// May throw [CNAMEAlreadyExists].
  /// May throw [IllegalUpdate].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [MissingBody].
  /// May throw [NoSuchDistribution].
  /// May throw [PreconditionFailed].
  /// May throw [TooManyDistributionCNAMEs].
  /// May throw [InvalidDefaultRootObject].
  /// May throw [InvalidRelativePath].
  /// May throw [InvalidErrorCode].
  /// May throw [InvalidResponseCode].
  /// May throw [InvalidArgument].
  /// May throw [InvalidOriginAccessIdentity].
  /// May throw [TooManyTrustedSigners].
  /// May throw [TrustedSignerDoesNotExist].
  /// May throw [InvalidViewerCertificate].
  /// May throw [InvalidMinimumProtocolVersion].
  /// May throw [InvalidRequiredProtocol].
  /// May throw [NoSuchOrigin].
  /// May throw [TooManyOrigins].
  /// May throw [TooManyCacheBehaviors].
  /// May throw [TooManyCookieNamesInWhiteList].
  /// May throw [InvalidForwardCookies].
  /// May throw [TooManyHeadersInForwardedValues].
  /// May throw [InvalidHeadersForS3Origin].
  /// May throw [InconsistentQuantities].
  /// May throw [TooManyCertificates].
  /// May throw [InvalidLocationCode].
  /// May throw [InvalidGeoRestrictionParameter].
  /// May throw [InvalidTTLOrder].
  /// May throw [InvalidWebACLId].
  /// May throw [TooManyOriginCustomHeaders].
  /// May throw [TooManyQueryStringParameters].
  /// May throw [InvalidQueryStringParameters].
  /// May throw [TooManyDistributionsWithLambdaAssociations].
  /// May throw [TooManyLambdaFunctionAssociations].
  /// May throw [InvalidLambdaFunctionAssociation].
  /// May throw [InvalidOriginReadTimeout].
  /// May throw [InvalidOriginKeepaliveTimeout].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  /// May throw [IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior].
  /// May throw [TooManyDistributionsAssociatedToFieldLevelEncryptionConfig].
  ///
  /// Parameter [distributionConfig] :
  /// The distribution's configuration information.
  ///
  /// Parameter [id] :
  /// The distribution's id.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the distribution's configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<UpdateDistributionResult> updateDistribution2017_10_30({
    @_s.required DistributionConfig distributionConfig,
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(distributionConfig, 'distributionConfig');
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    final $result = await _protocol.send(
      method: 'PUT',
      requestUri:
          '/2017-10-30/distribution/${Uri.encodeComponent(id.toString())}/config',
      headers: headers,
      payload: distributionConfig.toXml('DistributionConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return UpdateDistributionResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Update a field-level encryption configuration.
  ///
  /// May throw [AccessDenied].
  /// May throw [IllegalUpdate].
  /// May throw [InconsistentQuantities].
  /// May throw [InvalidArgument].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchFieldLevelEncryptionProfile].
  /// May throw [NoSuchFieldLevelEncryptionConfig].
  /// May throw [PreconditionFailed].
  /// May throw [TooManyFieldLevelEncryptionQueryArgProfiles].
  /// May throw [TooManyFieldLevelEncryptionContentTypeProfiles].
  /// May throw [QueryArgProfileEmpty].
  ///
  /// Parameter [fieldLevelEncryptionConfig] :
  /// Request to update a field-level encryption configuration.
  ///
  /// Parameter [id] :
  /// The ID of the configuration you want to update.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the configuration identity to update. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<UpdateFieldLevelEncryptionConfigResult>
      updateFieldLevelEncryptionConfig2017_10_30({
    @_s.required FieldLevelEncryptionConfig fieldLevelEncryptionConfig,
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(
        fieldLevelEncryptionConfig, 'fieldLevelEncryptionConfig');
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    final $result = await _protocol.send(
      method: 'PUT',
      requestUri:
          '/2017-10-30/field-level-encryption/${Uri.encodeComponent(id.toString())}/config',
      headers: headers,
      payload: fieldLevelEncryptionConfig.toXml('FieldLevelEncryptionConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return UpdateFieldLevelEncryptionConfigResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Update a field-level encryption profile.
  ///
  /// May throw [AccessDenied].
  /// May throw [FieldLevelEncryptionProfileAlreadyExists].
  /// May throw [IllegalUpdate].
  /// May throw [InconsistentQuantities].
  /// May throw [InvalidArgument].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [NoSuchPublicKey].
  /// May throw [NoSuchFieldLevelEncryptionProfile].
  /// May throw [PreconditionFailed].
  /// May throw [FieldLevelEncryptionProfileSizeExceeded].
  /// May throw [TooManyFieldLevelEncryptionEncryptionEntities].
  /// May throw [TooManyFieldLevelEncryptionFieldPatterns].
  ///
  /// Parameter [fieldLevelEncryptionProfileConfig] :
  /// Request to update a field-level encryption profile.
  ///
  /// Parameter [id] :
  /// The ID of the field-level encryption profile request.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the profile identity to update. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<UpdateFieldLevelEncryptionProfileResult>
      updateFieldLevelEncryptionProfile2017_10_30({
    @_s.required
        FieldLevelEncryptionProfileConfig fieldLevelEncryptionProfileConfig,
    @_s.required String id,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(
        fieldLevelEncryptionProfileConfig, 'fieldLevelEncryptionProfileConfig');
    ArgumentError.checkNotNull(id, 'id');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    final $result = await _protocol.send(
      method: 'PUT',
      requestUri:
          '/2017-10-30/field-level-encryption-profile/${Uri.encodeComponent(id.toString())}/config',
      headers: headers,
      payload: fieldLevelEncryptionProfileConfig
          .toXml('FieldLevelEncryptionProfileConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return UpdateFieldLevelEncryptionProfileResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Update public key information. Note that the only value you can change is
  /// the comment.
  ///
  /// May throw [AccessDenied].
  /// May throw [CannotChangeImmutablePublicKeyFields].
  /// May throw [InvalidArgument].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [IllegalUpdate].
  /// May throw [NoSuchPublicKey].
  /// May throw [PreconditionFailed].
  ///
  /// Parameter [id] :
  /// ID of the public key to be updated.
  ///
  /// Parameter [publicKeyConfig] :
  /// Request to update public key information.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the public key to update. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<UpdatePublicKeyResult> updatePublicKey2017_10_30({
    @_s.required String id,
    @_s.required PublicKeyConfig publicKeyConfig,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(publicKeyConfig, 'publicKeyConfig');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    final $result = await _protocol.send(
      method: 'PUT',
      requestUri:
          '/2017-10-30/public-key/${Uri.encodeComponent(id.toString())}/config',
      headers: headers,
      payload: publicKeyConfig.toXml('PublicKeyConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return UpdatePublicKeyResult.fromXml($result.body,
        headers: $result.headers);
  }

  /// Update a streaming distribution.
  ///
  /// May throw [AccessDenied].
  /// May throw [CNAMEAlreadyExists].
  /// May throw [IllegalUpdate].
  /// May throw [InvalidIfMatchVersion].
  /// May throw [MissingBody].
  /// May throw [NoSuchStreamingDistribution].
  /// May throw [PreconditionFailed].
  /// May throw [TooManyStreamingDistributionCNAMEs].
  /// May throw [InvalidArgument].
  /// May throw [InvalidOriginAccessIdentity].
  /// May throw [TooManyTrustedSigners].
  /// May throw [TrustedSignerDoesNotExist].
  /// May throw [InconsistentQuantities].
  ///
  /// Parameter [id] :
  /// The streaming distribution's id.
  ///
  /// Parameter [streamingDistributionConfig] :
  /// The streaming distribution's configuration information.
  ///
  /// Parameter [ifMatch] :
  /// The value of the <code>ETag</code> header that you received when
  /// retrieving the streaming distribution's configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  Future<UpdateStreamingDistributionResult>
      updateStreamingDistribution2017_10_30({
    @_s.required String id,
    @_s.required StreamingDistributionConfig streamingDistributionConfig,
    String ifMatch,
  }) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(
        streamingDistributionConfig, 'streamingDistributionConfig');
    final headers = <String, String>{};
    ifMatch?.let((v) => headers['If-Match'] = v.toString());
    final $result = await _protocol.send(
      method: 'PUT',
      requestUri:
          '/2017-10-30/streaming-distribution/${Uri.encodeComponent(id.toString())}/config',
      headers: headers,
      payload: streamingDistributionConfig.toXml('StreamingDistributionConfig'),
      exceptionFnMap: _exceptionFns,
    );
    return UpdateStreamingDistributionResult.fromXml($result.body,
        headers: $result.headers);
  }
}

/// Access denied.
class AccessDenied implements _s.AwsException {
  final String message;

  AccessDenied({
    this.message,
  });
  factory AccessDenied.fromXml(_s.XmlElement elem) {
    return AccessDenied(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A complex type that lists the AWS accounts, if any, that you included in the
/// <code>TrustedSigners</code> complex type for this distribution. These are
/// the accounts that you want to allow to create signed URLs for private
/// content.
///
/// The <code>Signer</code> complex type lists the AWS account number of the
/// trusted signer or <code>self</code> if the signer is the AWS account that
/// created the distribution. The <code>Signer</code> element also includes the
/// IDs of any active CloudFront key pairs that are associated with the trusted
/// signer's AWS account. If no <code>KeyPairId</code> element appears for a
/// <code>Signer</code>, that signer can't create signed URLs.
///
/// For more information, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
/// Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer
/// Guide</i>.
class ActiveTrustedSigners {
  /// Enabled is <code>true</code> if any of the AWS accounts listed in the
  /// <code>TrustedSigners</code> complex type for this RTMP distribution have
  /// active CloudFront key pairs. If not, <code>Enabled</code> is
  /// <code>false</code>.
  ///
  /// For more information, see <a>ActiveTrustedSigners</a>.
  final bool enabled;

  /// A complex type that contains one <code>Signer</code> complex type for each
  /// trusted signer specified in the <code>TrustedSigners</code> complex type.
  ///
  /// For more information, see <a>ActiveTrustedSigners</a>.
  final int quantity;

  /// A complex type that contains one <code>Signer</code> complex type for each
  /// trusted signer that is specified in the <code>TrustedSigners</code> complex
  /// type.
  ///
  /// For more information, see <a>ActiveTrustedSigners</a>.
  final List<Signer> items;

  ActiveTrustedSigners({
    @_s.required this.enabled,
    @_s.required this.quantity,
    this.items,
  });
  factory ActiveTrustedSigners.fromXml(_s.XmlElement elem) {
    return ActiveTrustedSigners(
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) =>
          elem.findElements('Signer').map((c) => Signer.fromXml(c)).toList()),
    );
  }
}

/// A complex type that contains information about CNAMEs (alternate domain
/// names), if any, for this distribution.
class Aliases {
  /// The number of CNAME aliases, if any, that you want to associate with this
  /// distribution.
  final int quantity;

  /// A complex type that contains the CNAME aliases, if any, that you want to
  /// associate with this distribution.
  final List<String> items;

  Aliases({
    @_s.required this.quantity,
    this.items,
  });
  factory Aliases.fromXml(_s.XmlElement elem) {
    return Aliases(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'CNAME')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('CNAME', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that controls which HTTP methods CloudFront processes and
/// forwards to your Amazon S3 bucket or your custom origin. There are three
/// choices:
///
/// <ul>
/// <li>
/// CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.
/// </li>
/// <li>
/// CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and
/// <code>OPTIONS</code> requests.
/// </li>
/// <li>
/// CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and
/// <code>DELETE</code> requests.
/// </li>
/// </ul>
/// If you pick the third choice, you may need to restrict access to your Amazon
/// S3 bucket or to your custom origin so users can't perform operations that
/// you don't want them to. For example, you might not want users to have
/// permissions to delete objects from your origin.
class AllowedMethods {
  /// A complex type that contains the HTTP methods that you want CloudFront to
  /// process and forward to your origin.
  final List<String> items;

  /// The number of HTTP methods that you want CloudFront to forward to your
  /// origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code>
  /// requests), 3 (for <code>GET</code>, <code>HEAD</code>, and
  /// <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT,
  /// PATCH, POST</code>, and <code>DELETE</code> requests).
  final int quantity;
  final CachedMethods cachedMethods;

  AllowedMethods({
    @_s.required this.items,
    @_s.required this.quantity,
    this.cachedMethods,
  });
  factory AllowedMethods.fromXml(_s.XmlElement elem) {
    return AllowedMethods(
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Method')),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      cachedMethods: _s
          .extractXmlChild(elem, 'CachedMethods')
          ?.let((e) => CachedMethods.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Method', v))
        ]),
      cachedMethods?.toXml('CachedMethods'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

class BatchTooLarge implements _s.AwsException {
  final String message;

  BatchTooLarge({
    this.message,
  });
  factory BatchTooLarge.fromXml(_s.XmlElement elem) {
    return BatchTooLarge(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class CNAMEAlreadyExists implements _s.AwsException {
  final String message;

  CNAMEAlreadyExists({
    this.message,
  });
  factory CNAMEAlreadyExists.fromXml(_s.XmlElement elem) {
    return CNAMEAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A complex type that describes how CloudFront processes requests.
///
/// You must create at least as many cache behaviors (including the default
/// cache behavior) as you have origins if you want CloudFront to distribute
/// objects from all of the origins. Each cache behavior specifies the one
/// origin from which you want CloudFront to get objects. If you have two
/// origins and only the default cache behavior, the default cache behavior will
/// cause CloudFront to get objects from one of the origins, but the other
/// origin is never used.
///
/// For the current limit on the number of cache behaviors that you can add to a
/// distribution, see <a
/// href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon
/// CloudFront Limits</a> in the <i>AWS General Reference</i>.
///
/// If you don't want to specify any cache behaviors, include only an empty
/// <code>CacheBehaviors</code> element. Don't include an empty
/// <code>CacheBehavior</code> element, or CloudFront returns a
/// <code>MalformedXML</code> error.
///
/// To delete all cache behaviors in an existing distribution, update the
/// distribution configuration and include only an empty
/// <code>CacheBehaviors</code> element.
///
/// To add, change, or remove one or more cache behaviors, update the
/// distribution configuration and specify all of the cache behaviors that you
/// want to include in the updated distribution.
///
/// For more information about cache behaviors, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache
/// Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.
class CacheBehavior {
  /// A complex type that specifies how CloudFront handles query strings and
  /// cookies.
  final ForwardedValues forwardedValues;

  /// The minimum amount of time that you want objects to stay in CloudFront
  /// caches before CloudFront forwards another request to your origin to
  /// determine whether the object has been updated. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon Amazon CloudFront Developer Guide</i>.
  ///
  /// You must specify <code>0</code> for <code>MinTTL</code> if you configure
  /// CloudFront to forward all headers to your origin (under
  /// <code>Headers</code>, if you specify <code>1</code> for
  /// <code>Quantity</code> and <code>*</code> for <code>Name</code>).
  final int minTTL;

  /// The pattern (for example, <code>images/*.jpg</code>) that specifies which
  /// requests to apply the behavior to. When CloudFront receives a viewer
  /// request, the requested path is compared with path patterns in the order in
  /// which cache behaviors are listed in the distribution.
  /// <note>
  /// You can optionally include a slash (<code>/</code>) at the beginning of the
  /// path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior
  /// is the same with or without the leading <code>/</code>.
  /// </note>
  /// The path pattern for the default cache behavior is <code>*</code> and cannot
  /// be changed. If the request for an object does not match the path pattern for
  /// any cache behaviors, CloudFront applies the behavior in the default cache
  /// behavior.
  ///
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern">Path
  /// Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.
  final String pathPattern;

  /// The value of <code>ID</code> for the origin that you want CloudFront to
  /// route requests to when a request matches the path pattern either for a cache
  /// behavior or for the default cache behavior.
  final String targetOriginId;

  /// A complex type that specifies the AWS accounts, if any, that you want to
  /// allow to create signed URLs for private content.
  ///
  /// If you want to require signed URLs in requests for objects in the target
  /// origin that match the <code>PathPattern</code> for this cache behavior,
  /// specify <code>true</code> for <code>Enabled</code>, and specify the
  /// applicable values for <code>Quantity</code> and <code>Items</code>. For more
  /// information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
  /// Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront
  /// Developer Guide</i>.
  ///
  /// If you don't want to require signed URLs in requests for objects that match
  /// <code>PathPattern</code>, specify <code>false</code> for
  /// <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit
  /// <code>Items</code>.
  ///
  /// To add, change, or remove one or more trusted signers, change
  /// <code>Enabled</code> to <code>true</code> (if it's currently
  /// <code>false</code>), change <code>Quantity</code> as applicable, and specify
  /// all of the trusted signers that you want to include in the updated
  /// distribution.
  final TrustedSigners trustedSigners;

  /// The protocol that viewers can use to access the files in the origin
  /// specified by <code>TargetOriginId</code> when a request matches the path
  /// pattern in <code>PathPattern</code>. You can specify the following options:
  ///
  /// <ul>
  /// <li>
  /// <code>allow-all</code>: Viewers can use HTTP or HTTPS.
  /// </li>
  /// <li>
  /// <code>redirect-to-https</code>: If a viewer submits an HTTP request,
  /// CloudFront returns an HTTP status code of 301 (Moved Permanently) to the
  /// viewer along with the HTTPS URL. The viewer then resubmits the request using
  /// the new URL.
  /// </li>
  /// <li>
  /// <code>https-only</code>: If a viewer sends an HTTP request, CloudFront
  /// returns an HTTP status code of 403 (Forbidden).
  /// </li>
  /// </ul>
  /// For more information about requiring the HTTPS protocol, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using
  /// an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront
  /// Developer Guide</i>.
  /// <note>
  /// The only way to guarantee that viewers retrieve an object that was fetched
  /// from the origin using HTTPS is never to use any other protocol to fetch the
  /// object. If you have recently changed from HTTP to HTTPS, we recommend that
  /// you clear your objects' cache because cached objects are protocol agnostic.
  /// That means that an edge location will return an object from the cache
  /// regardless of whether the current request protocol matches the protocol used
  /// previously. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon CloudFront Developer Guide</i>.
  /// </note>
  final ViewerProtocolPolicy viewerProtocolPolicy;
  final AllowedMethods allowedMethods;

  /// Whether you want CloudFront to automatically compress certain files for this
  /// cache behavior. If so, specify true; if not, specify false. For more
  /// information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving
  /// Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final bool compress;

  /// The default amount of time that you want objects to stay in CloudFront
  /// caches before CloudFront forwards another request to your origin to
  /// determine whether the object has been updated. The value that you specify
  /// applies only when your origin does not add HTTP headers such as
  /// <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
  /// <code>Expires</code> to objects. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon CloudFront Developer Guide</i>.
  final int defaultTTL;
  final String fieldLevelEncryptionId;

  /// A complex type that contains zero or more Lambda function associations for a
  /// cache behavior.
  final LambdaFunctionAssociations lambdaFunctionAssociations;

  /// The maximum amount of time that you want objects to stay in CloudFront
  /// caches before CloudFront forwards another request to your origin to
  /// determine whether the object has been updated. The value that you specify
  /// applies only when your origin adds HTTP headers such as <code>Cache-Control
  /// max-age</code>, <code>Cache-Control s-maxage</code>, and
  /// <code>Expires</code> to objects. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon CloudFront Developer Guide</i>.
  final int maxTTL;

  /// Indicates whether you want to distribute media files in the Microsoft Smooth
  /// Streaming format using the origin that is associated with this cache
  /// behavior. If so, specify <code>true</code>; if not, specify
  /// <code>false</code>. If you specify <code>true</code> for
  /// <code>SmoothStreaming</code>, you can still distribute other content using
  /// this cache behavior if the content matches the value of
  /// <code>PathPattern</code>.
  final bool smoothStreaming;

  CacheBehavior({
    @_s.required this.forwardedValues,
    @_s.required this.minTTL,
    @_s.required this.pathPattern,
    @_s.required this.targetOriginId,
    @_s.required this.trustedSigners,
    @_s.required this.viewerProtocolPolicy,
    this.allowedMethods,
    this.compress,
    this.defaultTTL,
    this.fieldLevelEncryptionId,
    this.lambdaFunctionAssociations,
    this.maxTTL,
    this.smoothStreaming,
  });
  factory CacheBehavior.fromXml(_s.XmlElement elem) {
    return CacheBehavior(
      forwardedValues: _s
          .extractXmlChild(elem, 'ForwardedValues')
          ?.let((e) => ForwardedValues.fromXml(e)),
      minTTL: _s.extractXmlIntValue(elem, 'MinTTL'),
      pathPattern: _s.extractXmlStringValue(elem, 'PathPattern'),
      targetOriginId: _s.extractXmlStringValue(elem, 'TargetOriginId'),
      trustedSigners: _s
          .extractXmlChild(elem, 'TrustedSigners')
          ?.let((e) => TrustedSigners.fromXml(e)),
      viewerProtocolPolicy: _s
          .extractXmlStringValue(elem, 'ViewerProtocolPolicy')
          ?.toViewerProtocolPolicy(),
      allowedMethods: _s
          .extractXmlChild(elem, 'AllowedMethods')
          ?.let((e) => AllowedMethods.fromXml(e)),
      compress: _s.extractXmlBoolValue(elem, 'Compress'),
      defaultTTL: _s.extractXmlIntValue(elem, 'DefaultTTL'),
      fieldLevelEncryptionId:
          _s.extractXmlStringValue(elem, 'FieldLevelEncryptionId'),
      lambdaFunctionAssociations: _s
          .extractXmlChild(elem, 'LambdaFunctionAssociations')
          ?.let((e) => LambdaFunctionAssociations.fromXml(e)),
      maxTTL: _s.extractXmlIntValue(elem, 'MaxTTL'),
      smoothStreaming: _s.extractXmlBoolValue(elem, 'SmoothStreaming'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('PathPattern', pathPattern),
      _s.encodeXmlStringValue('TargetOriginId', targetOriginId),
      forwardedValues?.toXml('ForwardedValues'),
      trustedSigners?.toXml('TrustedSigners'),
      _s.encodeXmlStringValue(
          'ViewerProtocolPolicy', viewerProtocolPolicy?.toValue()),
      _s.encodeXmlIntValue('MinTTL', minTTL),
      allowedMethods?.toXml('AllowedMethods'),
      _s.encodeXmlBoolValue('SmoothStreaming', smoothStreaming),
      _s.encodeXmlIntValue('DefaultTTL', defaultTTL),
      _s.encodeXmlIntValue('MaxTTL', maxTTL),
      _s.encodeXmlBoolValue('Compress', compress),
      lambdaFunctionAssociations?.toXml('LambdaFunctionAssociations'),
      _s.encodeXmlStringValue('FieldLevelEncryptionId', fieldLevelEncryptionId),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains zero or more <code>CacheBehavior</code>
/// elements.
class CacheBehaviors {
  /// The number of cache behaviors for this distribution.
  final int quantity;

  /// Optional: A complex type that contains cache behaviors for this
  /// distribution. If <code>Quantity</code> is <code>0</code>, you can omit
  /// <code>Items</code>.
  final List<CacheBehavior> items;

  CacheBehaviors({
    @_s.required this.quantity,
    this.items,
  });
  factory CacheBehaviors.fromXml(_s.XmlElement elem) {
    return CacheBehaviors(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('CacheBehavior')
          .map((c) => CacheBehavior.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that controls whether CloudFront caches the response to
/// requests using the specified HTTP methods. There are two choices:
///
/// <ul>
/// <li>
/// CloudFront caches responses to <code>GET</code> and <code>HEAD</code>
/// requests.
/// </li>
/// <li>
/// CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and
/// <code>OPTIONS</code> requests.
/// </li>
/// </ul>
/// If you pick the second choice for your Amazon S3 Origin, you may need to
/// forward Access-Control-Request-Method, Access-Control-Request-Headers, and
/// Origin headers for the responses to be cached correctly.
class CachedMethods {
  /// A complex type that contains the HTTP methods that you want CloudFront to
  /// cache responses to.
  final List<String> items;

  /// The number of HTTP methods for which you want CloudFront to cache responses.
  /// Valid values are <code>2</code> (for caching responses to <code>GET</code>
  /// and <code>HEAD</code> requests) and <code>3</code> (for caching responses to
  /// <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).
  final int quantity;

  CachedMethods({
    @_s.required this.items,
    @_s.required this.quantity,
  });
  factory CachedMethods.fromXml(_s.XmlElement elem) {
    return CachedMethods(
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Method')),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Method', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// You can't change the value of a public key.
class CannotChangeImmutablePublicKeyFields implements _s.AwsException {
  final String message;

  CannotChangeImmutablePublicKeyFields({
    this.message,
  });
  factory CannotChangeImmutablePublicKeyFields.fromXml(_s.XmlElement elem) {
    return CannotChangeImmutablePublicKeyFields(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

enum CertificateSource {
  cloudfront,
  iam,
  acm,
}

extension on CertificateSource {
  String toValue() {
    switch (this) {
      case CertificateSource.cloudfront:
        return 'cloudfront';
      case CertificateSource.iam:
        return 'iam';
      case CertificateSource.acm:
        return 'acm';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  CertificateSource toCertificateSource() {
    switch (this) {
      case 'cloudfront':
        return CertificateSource.cloudfront;
      case 'iam':
        return CertificateSource.iam;
      case 'acm':
        return CertificateSource.acm;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// CloudFront origin access identity.
class CloudFrontOriginAccessIdentity {
  /// The ID for the origin access identity, for example,
  /// <code>E74FTE3AJFJ256A</code>.
  final String id;

  /// The Amazon S3 canonical user ID for the origin access identity, used when
  /// giving the origin access identity read permission to an object in Amazon S3.
  final String s3CanonicalUserId;

  /// The current configuration information for the identity.
  final CloudFrontOriginAccessIdentityConfig
      cloudFrontOriginAccessIdentityConfig;

  CloudFrontOriginAccessIdentity({
    @_s.required this.id,
    @_s.required this.s3CanonicalUserId,
    this.cloudFrontOriginAccessIdentityConfig,
  });
  factory CloudFrontOriginAccessIdentity.fromXml(_s.XmlElement elem) {
    return CloudFrontOriginAccessIdentity(
      id: _s.extractXmlStringValue(elem, 'Id'),
      s3CanonicalUserId: _s.extractXmlStringValue(elem, 'S3CanonicalUserId'),
      cloudFrontOriginAccessIdentityConfig: _s
          .extractXmlChild(elem, 'CloudFrontOriginAccessIdentityConfig')
          ?.let((e) => CloudFrontOriginAccessIdentityConfig.fromXml(e)),
    );
  }
}

/// If the <code>CallerReference</code> is a value you already sent in a
/// previous request to create an identity but the content of the
/// <code>CloudFrontOriginAccessIdentityConfig</code> is different from the
/// original request, CloudFront returns a
/// <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error.
class CloudFrontOriginAccessIdentityAlreadyExists implements _s.AwsException {
  final String message;

  CloudFrontOriginAccessIdentityAlreadyExists({
    this.message,
  });
  factory CloudFrontOriginAccessIdentityAlreadyExists.fromXml(
      _s.XmlElement elem) {
    return CloudFrontOriginAccessIdentityAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Origin access identity configuration. Send a <code>GET</code> request to the
/// <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code>
/// resource.
class CloudFrontOriginAccessIdentityConfig {
  /// A unique number that ensures the request can't be replayed.
  ///
  /// If the <code>CallerReference</code> is new (no matter the content of the
  /// <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin
  /// access identity is created.
  ///
  /// If the <code>CallerReference</code> is a value already sent in a previous
  /// identity request, and the content of the
  /// <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the
  /// original request (ignoring white space), the response includes the same
  /// information returned to the original request.
  ///
  /// If the <code>CallerReference</code> is a value you already sent in a
  /// previous request to create an identity, but the content of the
  /// <code>CloudFrontOriginAccessIdentityConfig</code> is different from the
  /// original request, CloudFront returns a
  /// <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error.
  final String callerReference;

  /// Any comments you want to include about the origin access identity.
  final String comment;

  CloudFrontOriginAccessIdentityConfig({
    @_s.required this.callerReference,
    @_s.required this.comment,
  });
  factory CloudFrontOriginAccessIdentityConfig.fromXml(_s.XmlElement elem) {
    return CloudFrontOriginAccessIdentityConfig(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('CallerReference', callerReference),
      _s.encodeXmlStringValue('Comment', comment),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

class CloudFrontOriginAccessIdentityInUse implements _s.AwsException {
  final String message;

  CloudFrontOriginAccessIdentityInUse({
    this.message,
  });
  factory CloudFrontOriginAccessIdentityInUse.fromXml(_s.XmlElement elem) {
    return CloudFrontOriginAccessIdentityInUse(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Lists the origin access identities for CloudFront.Send a <code>GET</code>
/// request to the <code>/<i>CloudFront API
/// version</i>/origin-access-identity/cloudfront</code> resource. The response
/// includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero
/// or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements.
/// By default, your entire list of origin access identities is returned in one
/// single page. If the list is long, you can paginate it using the
/// <code>MaxItems</code> and <code>Marker</code> parameters.
class CloudFrontOriginAccessIdentityList {
  /// A flag that indicates whether more origin access identities remain to be
  /// listed. If your results were truncated, you can make a follow-up pagination
  /// request using the <code>Marker</code> request parameter to retrieve more
  /// items in the list.
  final bool isTruncated;

  /// Use this when paginating results to indicate where to begin in your list of
  /// origin access identities. The results include identities in the list that
  /// occur after the marker. To get the next page of results, set the
  /// <code>Marker</code> to the value of the <code>NextMarker</code> from the
  /// current page's response (which is also the ID of the last identity on that
  /// page).
  final String marker;

  /// The maximum number of origin access identities you want in the response
  /// body.
  final int maxItems;

  /// The number of CloudFront origin access identities that were created by the
  /// current AWS account.
  final int quantity;

  /// A complex type that contains one
  /// <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin
  /// access identity that was created by the current AWS account.
  final List<CloudFrontOriginAccessIdentitySummary> items;

  /// If <code>IsTruncated</code> is <code>true</code>, this element is present
  /// and contains the value you can use for the <code>Marker</code> request
  /// parameter to continue listing your origin access identities where they left
  /// off.
  final String nextMarker;

  CloudFrontOriginAccessIdentityList({
    @_s.required this.isTruncated,
    @_s.required this.marker,
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory CloudFrontOriginAccessIdentityList.fromXml(_s.XmlElement elem) {
    return CloudFrontOriginAccessIdentityList(
      isTruncated: _s.extractXmlBoolValue(elem, 'IsTruncated'),
      marker: _s.extractXmlStringValue(elem, 'Marker'),
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('CloudFrontOriginAccessIdentitySummary')
          .map((c) => CloudFrontOriginAccessIdentitySummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

/// Summary of the information about a CloudFront origin access identity.
class CloudFrontOriginAccessIdentitySummary {
  /// The comment for this origin access identity, as originally specified when
  /// created.
  final String comment;

  /// The ID for the origin access identity. For example:
  /// <code>E74FTE3AJFJ256A</code>.
  final String id;

  /// The Amazon S3 canonical user ID for the origin access identity, which you
  /// use when giving the origin access identity read permission to an object in
  /// Amazon S3.
  final String s3CanonicalUserId;

  CloudFrontOriginAccessIdentitySummary({
    @_s.required this.comment,
    @_s.required this.id,
    @_s.required this.s3CanonicalUserId,
  });
  factory CloudFrontOriginAccessIdentitySummary.fromXml(_s.XmlElement elem) {
    return CloudFrontOriginAccessIdentitySummary(
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      s3CanonicalUserId: _s.extractXmlStringValue(elem, 'S3CanonicalUserId'),
    );
  }
}

/// A field-level encryption content type profile.
class ContentTypeProfile {
  /// The content type for a field-level encryption content type-profile mapping.
  final String contentType;

  /// The format for a field-level encryption content type-profile mapping.
  final Format format;

  /// The profile ID for a field-level encryption content type-profile mapping.
  final String profileId;

  ContentTypeProfile({
    @_s.required this.contentType,
    @_s.required this.format,
    this.profileId,
  });
  factory ContentTypeProfile.fromXml(_s.XmlElement elem) {
    return ContentTypeProfile(
      contentType: _s.extractXmlStringValue(elem, 'ContentType'),
      format: _s.extractXmlStringValue(elem, 'Format')?.toFormat(),
      profileId: _s.extractXmlStringValue(elem, 'ProfileId'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('Format', format?.toValue()),
      _s.encodeXmlStringValue('ProfileId', profileId),
      _s.encodeXmlStringValue('ContentType', contentType),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The configuration for a field-level encryption content type-profile mapping.
class ContentTypeProfileConfig {
  /// The setting in a field-level encryption content type-profile mapping that
  /// specifies what to do when an unknown content type is provided for the
  /// profile. If true, content is forwarded without being encrypted when the
  /// content type is unknown. If false (the default), an error is returned when
  /// the content type is unknown.
  final bool forwardWhenContentTypeIsUnknown;

  /// The configuration for a field-level encryption content type-profile.
  final ContentTypeProfiles contentTypeProfiles;

  ContentTypeProfileConfig({
    @_s.required this.forwardWhenContentTypeIsUnknown,
    this.contentTypeProfiles,
  });
  factory ContentTypeProfileConfig.fromXml(_s.XmlElement elem) {
    return ContentTypeProfileConfig(
      forwardWhenContentTypeIsUnknown:
          _s.extractXmlBoolValue(elem, 'ForwardWhenContentTypeIsUnknown'),
      contentTypeProfiles: _s
          .extractXmlChild(elem, 'ContentTypeProfiles')
          ?.let((e) => ContentTypeProfiles.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue(
          'ForwardWhenContentTypeIsUnknown', forwardWhenContentTypeIsUnknown),
      contentTypeProfiles?.toXml('ContentTypeProfiles'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// Field-level encryption content type-profile.
class ContentTypeProfiles {
  /// The number of field-level encryption content type-profile mappings.
  final int quantity;

  /// Items in a field-level encryption content type-profile mapping.
  final List<ContentTypeProfile> items;

  ContentTypeProfiles({
    @_s.required this.quantity,
    this.items,
  });
  factory ContentTypeProfiles.fromXml(_s.XmlElement elem) {
    return ContentTypeProfiles(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('ContentTypeProfile')
          .map((c) => ContentTypeProfile.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that specifies whether you want CloudFront to forward cookies
/// to the origin and, if so, which ones. For more information about forwarding
/// cookies to the origin, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How
/// CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon
/// CloudFront Developer Guide</i>.
class CookieNames {
  /// The number of different cookies that you want CloudFront to forward to the
  /// origin for this cache behavior.
  final int quantity;

  /// A complex type that contains one <code>Name</code> element for each cookie
  /// that you want CloudFront to forward to the origin for this cache behavior.
  final List<String> items;

  CookieNames({
    @_s.required this.quantity,
    this.items,
  });
  factory CookieNames.fromXml(_s.XmlElement elem) {
    return CookieNames(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Name')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Name', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that specifies whether you want CloudFront to forward cookies
/// to the origin and, if so, which ones. For more information about forwarding
/// cookies to the origin, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How
/// CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon
/// CloudFront Developer Guide</i>.
class CookiePreference {
  /// Specifies which cookies to forward to the origin for this cache behavior:
  /// all, none, or the list of cookies specified in the
  /// <code>WhitelistedNames</code> complex type.
  ///
  /// Amazon S3 doesn't process cookies. When the cache behavior is forwarding
  /// requests to an Amazon S3 origin, specify none for the <code>Forward</code>
  /// element.
  final ItemSelection forward;

  /// Required if you specify <code>whitelist</code> for the value of
  /// <code>Forward:</code>. A complex type that specifies how many different
  /// cookies you want CloudFront to forward to the origin for this cache behavior
  /// and, if you want to forward selected cookies, the names of those cookies.
  ///
  /// If you specify <code>all</code> or none for the value of
  /// <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the
  /// value of <code>Forward</code> from <code>whitelist</code> to all or none and
  /// you don't delete the <code>WhitelistedNames</code> element and its child
  /// elements, CloudFront deletes them automatically.
  ///
  /// For the current limit on the number of cookie names that you can whitelist
  /// for each cache behavior, see <a
  /// href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon
  /// CloudFront Limits</a> in the <i>AWS General Reference</i>.
  final CookieNames whitelistedNames;

  CookiePreference({
    @_s.required this.forward,
    this.whitelistedNames,
  });
  factory CookiePreference.fromXml(_s.XmlElement elem) {
    return CookiePreference(
      forward: _s.extractXmlStringValue(elem, 'Forward')?.toItemSelection(),
      whitelistedNames: _s
          .extractXmlChild(elem, 'WhitelistedNames')
          ?.let((e) => CookieNames.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('Forward', forward?.toValue()),
      whitelistedNames?.toXml('WhitelistedNames'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The returned result of the corresponding request.
class CreateCloudFrontOriginAccessIdentityResult {
  /// The origin access identity's information.
  final CloudFrontOriginAccessIdentity cloudFrontOriginAccessIdentity;

  /// The current version of the origin access identity created.
  final String eTag;

  /// The fully qualified URI of the new origin access identity just created. For
  /// example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A</code>.
  final String location;

  CreateCloudFrontOriginAccessIdentityResult({
    this.cloudFrontOriginAccessIdentity,
    this.eTag,
    this.location,
  });
  factory CreateCloudFrontOriginAccessIdentityResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateCloudFrontOriginAccessIdentityResult(
      cloudFrontOriginAccessIdentity:
          elem?.let((e) => CloudFrontOriginAccessIdentity.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      location: _s.extractHeaderStringValue(headers, 'Location'),
    );
  }
}

/// The returned result of the corresponding request.
class CreateDistributionResult {
  /// The distribution's information.
  final Distribution distribution;

  /// The current version of the distribution created.
  final String eTag;

  /// The fully qualified URI of the new distribution resource just created. For
  /// example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>.
  final String location;

  CreateDistributionResult({
    this.distribution,
    this.eTag,
    this.location,
  });
  factory CreateDistributionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateDistributionResult(
      distribution: elem?.let((e) => Distribution.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      location: _s.extractHeaderStringValue(headers, 'Location'),
    );
  }
}

/// The returned result of the corresponding request.
class CreateDistributionWithTagsResult {
  /// The distribution's information.
  final Distribution distribution;

  /// The current version of the distribution created.
  final String eTag;

  /// The fully qualified URI of the new distribution resource just created. For
  /// example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>.
  final String location;

  CreateDistributionWithTagsResult({
    this.distribution,
    this.eTag,
    this.location,
  });
  factory CreateDistributionWithTagsResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateDistributionWithTagsResult(
      distribution: elem?.let((e) => Distribution.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      location: _s.extractHeaderStringValue(headers, 'Location'),
    );
  }
}

class CreateFieldLevelEncryptionConfigResult {
  /// The current version of the field level encryption configuration. For
  /// example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Returned when you create a new field-level encryption configuration.
  final FieldLevelEncryption fieldLevelEncryption;

  /// The fully qualified URI of the new configuration resource just created. For
  /// example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-config/EDFDVBD632BHDS5</code>.
  final String location;

  CreateFieldLevelEncryptionConfigResult({
    this.eTag,
    this.fieldLevelEncryption,
    this.location,
  });
  factory CreateFieldLevelEncryptionConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateFieldLevelEncryptionConfigResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryption: elem?.let((e) => FieldLevelEncryption.fromXml(e)),
      location: _s.extractHeaderStringValue(headers, 'Location'),
    );
  }
}

class CreateFieldLevelEncryptionProfileResult {
  /// The current version of the field level encryption profile. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Returned when you create a new field-level encryption profile.
  final FieldLevelEncryptionProfile fieldLevelEncryptionProfile;

  /// The fully qualified URI of the new profile resource just created. For
  /// example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-profile/EDFDVBD632BHDS5</code>.
  final String location;

  CreateFieldLevelEncryptionProfileResult({
    this.eTag,
    this.fieldLevelEncryptionProfile,
    this.location,
  });
  factory CreateFieldLevelEncryptionProfileResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateFieldLevelEncryptionProfileResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryptionProfile:
          elem?.let((e) => FieldLevelEncryptionProfile.fromXml(e)),
      location: _s.extractHeaderStringValue(headers, 'Location'),
    );
  }
}

/// The returned result of the corresponding request.
class CreateInvalidationResult {
  /// The invalidation's information.
  final Invalidation invalidation;

  /// The fully qualified URI of the distribution and invalidation batch request,
  /// including the <code>Invalidation ID</code>.
  final String location;

  CreateInvalidationResult({
    this.invalidation,
    this.location,
  });
  factory CreateInvalidationResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateInvalidationResult(
      invalidation: elem?.let((e) => Invalidation.fromXml(e)),
      location: _s.extractHeaderStringValue(headers, 'Location'),
    );
  }
}

class CreatePublicKeyResult {
  /// The current version of the public key. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// The fully qualified URI of the new public key resource just created. For
  /// example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/cloudfront-public-key/EDFDVBD632BHDS5</code>.
  final String location;

  /// Returned when you add a public key.
  final PublicKey publicKey;

  CreatePublicKeyResult({
    this.eTag,
    this.location,
    this.publicKey,
  });
  factory CreatePublicKeyResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreatePublicKeyResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      location: _s.extractHeaderStringValue(headers, 'Location'),
      publicKey: elem?.let((e) => PublicKey.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class CreateStreamingDistributionResult {
  /// The current version of the streaming distribution created.
  final String eTag;

  /// The fully qualified URI of the new streaming distribution resource just
  /// created. For example:
  /// <code>https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.
  final String location;

  /// The streaming distribution's information.
  final StreamingDistribution streamingDistribution;

  CreateStreamingDistributionResult({
    this.eTag,
    this.location,
    this.streamingDistribution,
  });
  factory CreateStreamingDistributionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateStreamingDistributionResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      location: _s.extractHeaderStringValue(headers, 'Location'),
      streamingDistribution: elem?.let((e) => StreamingDistribution.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class CreateStreamingDistributionWithTagsResult {
  final String eTag;

  /// The fully qualified URI of the new streaming distribution resource just
  /// created. For example:<code>
  /// https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.
  final String location;

  /// The streaming distribution's information.
  final StreamingDistribution streamingDistribution;

  CreateStreamingDistributionWithTagsResult({
    this.eTag,
    this.location,
    this.streamingDistribution,
  });
  factory CreateStreamingDistributionWithTagsResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return CreateStreamingDistributionWithTagsResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      location: _s.extractHeaderStringValue(headers, 'Location'),
      streamingDistribution: elem?.let((e) => StreamingDistribution.fromXml(e)),
    );
  }
}

/// A complex type that controls:
///
/// <ul>
/// <li>
/// Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with
/// custom error messages before returning the response to the viewer.
/// </li>
/// <li>
/// How long CloudFront caches HTTP status codes in the 4xx and 5xx range.
/// </li>
/// </ul>
/// For more information about custom error pages, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing
/// Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.
class CustomErrorResponse {
  /// The HTTP status code for which you want to specify a custom error page
  /// and/or a caching duration.
  final int errorCode;

  /// The minimum amount of time, in seconds, that you want CloudFront to cache
  /// the HTTP status code specified in <code>ErrorCode</code>. When this time
  /// period has elapsed, CloudFront queries your origin to see whether the
  /// problem that caused the error has been resolved and the requested object is
  /// now available.
  ///
  /// If you don't want to specify a value, include an empty element,
  /// <code>&lt;ErrorCachingMinTTL&gt;</code>, in the XML document.
  ///
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing
  /// Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final int errorCachingMinTTL;

  /// The HTTP status code that you want CloudFront to return to the viewer along
  /// with the custom error page. There are a variety of reasons that you might
  /// want CloudFront to return a status code different from the status code that
  /// your origin returned to CloudFront, for example:
  ///
  /// <ul>
  /// <li>
  /// Some Internet devices (some firewalls and corporate proxies, for example)
  /// intercept HTTP 4xx and 5xx and prevent the response from being returned to
  /// the viewer. If you substitute <code>200</code>, the response typically won't
  /// be intercepted.
  /// </li>
  /// <li>
  /// If you don't care about distinguishing among different client errors or
  /// server errors, you can specify <code>400</code> or <code>500</code> as the
  /// <code>ResponseCode</code> for all 4xx or 5xx errors.
  /// </li>
  /// <li>
  /// You might want to return a <code>200</code> status code (OK) and static
  /// website so your customers don't know that your website is down.
  /// </li>
  /// </ul>
  /// If you specify a value for <code>ResponseCode</code>, you must also specify
  /// a value for <code>ResponsePagePath</code>. If you don't want to specify a
  /// value, include an empty element, <code>&lt;ResponseCode&gt;</code>, in the
  /// XML document.
  final String responseCode;

  /// The path to the custom error page that you want CloudFront to return to a
  /// viewer when your origin returns the HTTP status code specified by
  /// <code>ErrorCode</code>, for example,
  /// <code>/4xx-errors/403-forbidden.html</code>. If you want to store your
  /// objects and your custom error pages in different locations, your
  /// distribution must include a cache behavior for which the following is true:
  ///
  /// <ul>
  /// <li>
  /// The value of <code>PathPattern</code> matches the path to your custom error
  /// messages. For example, suppose you saved custom error pages for 4xx errors
  /// in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your
  /// distribution must include a cache behavior for which the path pattern routes
  /// requests for your custom error pages to that location, for example,
  /// <code>/4xx-errors/*</code>.
  /// </li>
  /// <li>
  /// The value of <code>TargetOriginId</code> specifies the value of the
  /// <code>ID</code> element for the origin that contains your custom error
  /// pages.
  /// </li>
  /// </ul>
  /// If you specify a value for <code>ResponsePagePath</code>, you must also
  /// specify a value for <code>ResponseCode</code>. If you don't want to specify
  /// a value, include an empty element, <code>&lt;ResponsePagePath&gt;</code>, in
  /// the XML document.
  ///
  /// We recommend that you store custom error pages in an Amazon S3 bucket. If
  /// you store custom error pages on an HTTP server and the server starts to
  /// return 5xx errors, CloudFront can't get the files that you want to return to
  /// viewers because the origin server is unavailable.
  final String responsePagePath;

  CustomErrorResponse({
    @_s.required this.errorCode,
    this.errorCachingMinTTL,
    this.responseCode,
    this.responsePagePath,
  });
  factory CustomErrorResponse.fromXml(_s.XmlElement elem) {
    return CustomErrorResponse(
      errorCode: _s.extractXmlIntValue(elem, 'ErrorCode'),
      errorCachingMinTTL: _s.extractXmlIntValue(elem, 'ErrorCachingMinTTL'),
      responseCode: _s.extractXmlStringValue(elem, 'ResponseCode'),
      responsePagePath: _s.extractXmlStringValue(elem, 'ResponsePagePath'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('ErrorCode', errorCode),
      _s.encodeXmlStringValue('ResponsePagePath', responsePagePath),
      _s.encodeXmlStringValue('ResponseCode', responseCode),
      _s.encodeXmlIntValue('ErrorCachingMinTTL', errorCachingMinTTL),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that controls:
///
/// <ul>
/// <li>
/// Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with
/// custom error messages before returning the response to the viewer.
/// </li>
/// <li>
/// How long CloudFront caches HTTP status codes in the 4xx and 5xx range.
/// </li>
/// </ul>
/// For more information about custom error pages, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing
/// Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.
class CustomErrorResponses {
  /// The number of HTTP status codes for which you want to specify a custom error
  /// page and/or a caching duration. If <code>Quantity</code> is <code>0</code>,
  /// you can omit <code>Items</code>.
  final int quantity;

  /// A complex type that contains a <code>CustomErrorResponse</code> element for
  /// each HTTP status code for which you want to specify a custom error page
  /// and/or a caching duration.
  final List<CustomErrorResponse> items;

  CustomErrorResponses({
    @_s.required this.quantity,
    this.items,
  });
  factory CustomErrorResponses.fromXml(_s.XmlElement elem) {
    return CustomErrorResponses(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('CustomErrorResponse')
          .map((c) => CustomErrorResponse.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains the list of Custom Headers for each origin.
class CustomHeaders {
  /// The number of custom headers, if any, for this distribution.
  final int quantity;

  /// <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code>
  /// element for each custom header that you want CloudFront to forward to the
  /// origin. If Quantity is <code>0</code>, omit <code>Items</code>.
  final List<OriginCustomHeader> items;

  CustomHeaders({
    @_s.required this.quantity,
    this.items,
  });
  factory CustomHeaders.fromXml(_s.XmlElement elem) {
    return CustomHeaders(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('OriginCustomHeader')
          .map((c) => OriginCustomHeader.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A customer origin.
class CustomOriginConfig {
  /// The HTTP port the custom origin listens on.
  final int hTTPPort;

  /// The HTTPS port the custom origin listens on.
  final int hTTPSPort;

  /// The origin protocol policy to apply to your origin.
  final OriginProtocolPolicy originProtocolPolicy;

  /// You can create a custom keep-alive timeout. All timeout units are in
  /// seconds. The default keep-alive timeout is 5 seconds, but you can configure
  /// custom timeout lengths using the CloudFront API. The minimum timeout length
  /// is 1 second; the maximum is 60 seconds.
  ///
  /// If you need to increase the maximum time limit, contact the <a
  /// href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>.
  final int originKeepaliveTimeout;

  /// You can create a custom origin read timeout. All timeout units are in
  /// seconds. The default origin read timeout is 30 seconds, but you can
  /// configure custom timeout lengths using the CloudFront API. The minimum
  /// timeout length is 4 seconds; the maximum is 60 seconds.
  ///
  /// If you need to increase the maximum time limit, contact the <a
  /// href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>.
  final int originReadTimeout;

  /// The SSL/TLS protocols that you want CloudFront to use when communicating
  /// with your origin over HTTPS.
  final OriginSslProtocols originSslProtocols;

  CustomOriginConfig({
    @_s.required this.hTTPPort,
    @_s.required this.hTTPSPort,
    @_s.required this.originProtocolPolicy,
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    this.originSslProtocols,
  });
  factory CustomOriginConfig.fromXml(_s.XmlElement elem) {
    return CustomOriginConfig(
      hTTPPort: _s.extractXmlIntValue(elem, 'HTTPPort'),
      hTTPSPort: _s.extractXmlIntValue(elem, 'HTTPSPort'),
      originProtocolPolicy: _s
          .extractXmlStringValue(elem, 'OriginProtocolPolicy')
          ?.toOriginProtocolPolicy(),
      originKeepaliveTimeout:
          _s.extractXmlIntValue(elem, 'OriginKeepaliveTimeout'),
      originReadTimeout: _s.extractXmlIntValue(elem, 'OriginReadTimeout'),
      originSslProtocols: _s
          .extractXmlChild(elem, 'OriginSslProtocols')
          ?.let((e) => OriginSslProtocols.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('HTTPPort', hTTPPort),
      _s.encodeXmlIntValue('HTTPSPort', hTTPSPort),
      _s.encodeXmlStringValue(
          'OriginProtocolPolicy', originProtocolPolicy?.toValue()),
      originSslProtocols?.toXml('OriginSslProtocols'),
      _s.encodeXmlIntValue('OriginReadTimeout', originReadTimeout),
      _s.encodeXmlIntValue('OriginKeepaliveTimeout', originKeepaliveTimeout),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that describes the default cache behavior if you don't
/// specify a <code>CacheBehavior</code> element or if files don't match any of
/// the values of <code>PathPattern</code> in <code>CacheBehavior</code>
/// elements. You must create exactly one default cache behavior.
class DefaultCacheBehavior {
  /// A complex type that specifies how CloudFront handles query strings and
  /// cookies.
  final ForwardedValues forwardedValues;

  /// The minimum amount of time that you want objects to stay in CloudFront
  /// caches before CloudFront forwards another request to your origin to
  /// determine whether the object has been updated. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon Amazon CloudFront Developer Guide</i>.
  ///
  /// You must specify <code>0</code> for <code>MinTTL</code> if you configure
  /// CloudFront to forward all headers to your origin (under
  /// <code>Headers</code>, if you specify <code>1</code> for
  /// <code>Quantity</code> and <code>*</code> for <code>Name</code>).
  final int minTTL;

  /// The value of <code>ID</code> for the origin that you want CloudFront to
  /// route requests to when a request matches the path pattern either for a cache
  /// behavior or for the default cache behavior.
  final String targetOriginId;

  /// A complex type that specifies the AWS accounts, if any, that you want to
  /// allow to create signed URLs for private content.
  ///
  /// If you want to require signed URLs in requests for objects in the target
  /// origin that match the <code>PathPattern</code> for this cache behavior,
  /// specify <code>true</code> for <code>Enabled</code>, and specify the
  /// applicable values for <code>Quantity</code> and <code>Items</code>. For more
  /// information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
  /// Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront
  /// Developer Guide</i>.
  ///
  /// If you don't want to require signed URLs in requests for objects that match
  /// <code>PathPattern</code>, specify <code>false</code> for
  /// <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit
  /// <code>Items</code>.
  ///
  /// To add, change, or remove one or more trusted signers, change
  /// <code>Enabled</code> to <code>true</code> (if it's currently
  /// <code>false</code>), change <code>Quantity</code> as applicable, and specify
  /// all of the trusted signers that you want to include in the updated
  /// distribution.
  final TrustedSigners trustedSigners;

  /// The protocol that viewers can use to access the files in the origin
  /// specified by <code>TargetOriginId</code> when a request matches the path
  /// pattern in <code>PathPattern</code>. You can specify the following options:
  ///
  /// <ul>
  /// <li>
  /// <code>allow-all</code>: Viewers can use HTTP or HTTPS.
  /// </li>
  /// <li>
  /// <code>redirect-to-https</code>: If a viewer submits an HTTP request,
  /// CloudFront returns an HTTP status code of 301 (Moved Permanently) to the
  /// viewer along with the HTTPS URL. The viewer then resubmits the request using
  /// the new URL.
  /// </li>
  /// <li>
  /// <code>https-only</code>: If a viewer sends an HTTP request, CloudFront
  /// returns an HTTP status code of 403 (Forbidden).
  /// </li>
  /// </ul>
  /// For more information about requiring the HTTPS protocol, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using
  /// an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront
  /// Developer Guide</i>.
  /// <note>
  /// The only way to guarantee that viewers retrieve an object that was fetched
  /// from the origin using HTTPS is never to use any other protocol to fetch the
  /// object. If you have recently changed from HTTP to HTTPS, we recommend that
  /// you clear your objects' cache because cached objects are protocol agnostic.
  /// That means that an edge location will return an object from the cache
  /// regardless of whether the current request protocol matches the protocol used
  /// previously. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon CloudFront Developer Guide</i>.
  /// </note>
  final ViewerProtocolPolicy viewerProtocolPolicy;
  final AllowedMethods allowedMethods;

  /// Whether you want CloudFront to automatically compress certain files for this
  /// cache behavior. If so, specify <code>true</code>; if not, specify
  /// <code>false</code>. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving
  /// Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final bool compress;

  /// The default amount of time that you want objects to stay in CloudFront
  /// caches before CloudFront forwards another request to your origin to
  /// determine whether the object has been updated. The value that you specify
  /// applies only when your origin does not add HTTP headers such as
  /// <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
  /// <code>Expires</code> to objects. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Specifying
  /// How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a>
  /// in the <i>Amazon CloudFront Developer Guide</i>.
  final int defaultTTL;
  final String fieldLevelEncryptionId;

  /// A complex type that contains zero or more Lambda function associations for a
  /// cache behavior.
  final LambdaFunctionAssociations lambdaFunctionAssociations;
  final int maxTTL;

  /// Indicates whether you want to distribute media files in the Microsoft Smooth
  /// Streaming format using the origin that is associated with this cache
  /// behavior. If so, specify <code>true</code>; if not, specify
  /// <code>false</code>. If you specify <code>true</code> for
  /// <code>SmoothStreaming</code>, you can still distribute other content using
  /// this cache behavior if the content matches the value of
  /// <code>PathPattern</code>.
  final bool smoothStreaming;

  DefaultCacheBehavior({
    @_s.required this.forwardedValues,
    @_s.required this.minTTL,
    @_s.required this.targetOriginId,
    @_s.required this.trustedSigners,
    @_s.required this.viewerProtocolPolicy,
    this.allowedMethods,
    this.compress,
    this.defaultTTL,
    this.fieldLevelEncryptionId,
    this.lambdaFunctionAssociations,
    this.maxTTL,
    this.smoothStreaming,
  });
  factory DefaultCacheBehavior.fromXml(_s.XmlElement elem) {
    return DefaultCacheBehavior(
      forwardedValues: _s
          .extractXmlChild(elem, 'ForwardedValues')
          ?.let((e) => ForwardedValues.fromXml(e)),
      minTTL: _s.extractXmlIntValue(elem, 'MinTTL'),
      targetOriginId: _s.extractXmlStringValue(elem, 'TargetOriginId'),
      trustedSigners: _s
          .extractXmlChild(elem, 'TrustedSigners')
          ?.let((e) => TrustedSigners.fromXml(e)),
      viewerProtocolPolicy: _s
          .extractXmlStringValue(elem, 'ViewerProtocolPolicy')
          ?.toViewerProtocolPolicy(),
      allowedMethods: _s
          .extractXmlChild(elem, 'AllowedMethods')
          ?.let((e) => AllowedMethods.fromXml(e)),
      compress: _s.extractXmlBoolValue(elem, 'Compress'),
      defaultTTL: _s.extractXmlIntValue(elem, 'DefaultTTL'),
      fieldLevelEncryptionId:
          _s.extractXmlStringValue(elem, 'FieldLevelEncryptionId'),
      lambdaFunctionAssociations: _s
          .extractXmlChild(elem, 'LambdaFunctionAssociations')
          ?.let((e) => LambdaFunctionAssociations.fromXml(e)),
      maxTTL: _s.extractXmlIntValue(elem, 'MaxTTL'),
      smoothStreaming: _s.extractXmlBoolValue(elem, 'SmoothStreaming'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('TargetOriginId', targetOriginId),
      forwardedValues?.toXml('ForwardedValues'),
      trustedSigners?.toXml('TrustedSigners'),
      _s.encodeXmlStringValue(
          'ViewerProtocolPolicy', viewerProtocolPolicy?.toValue()),
      _s.encodeXmlIntValue('MinTTL', minTTL),
      allowedMethods?.toXml('AllowedMethods'),
      _s.encodeXmlBoolValue('SmoothStreaming', smoothStreaming),
      _s.encodeXmlIntValue('DefaultTTL', defaultTTL),
      _s.encodeXmlIntValue('MaxTTL', maxTTL),
      _s.encodeXmlBoolValue('Compress', compress),
      lambdaFunctionAssociations?.toXml('LambdaFunctionAssociations'),
      _s.encodeXmlStringValue('FieldLevelEncryptionId', fieldLevelEncryptionId),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The distribution's information.
class Distribution {
  /// The ARN (Amazon Resource Name) for the distribution. For example:
  /// <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>,
  /// where <code>123456789012</code> is your AWS account ID.
  final String arn;

  /// CloudFront automatically adds this element to the response only if you've
  /// set up the distribution to serve private content with signed URLs. The
  /// element lists the key pair IDs that CloudFront is aware of for each trusted
  /// signer. The <code>Signer</code> child element lists the AWS account number
  /// of the trusted signer (or an empty <code>Self</code> element if the signer
  /// is you). The <code>Signer</code> element also includes the IDs of any active
  /// key pairs associated with the trusted signer's AWS account. If no
  /// <code>KeyPairId</code> element appears for a <code>Signer</code>, that
  /// signer can't create working signed URLs.
  final ActiveTrustedSigners activeTrustedSigners;

  /// The current configuration information for the distribution. Send a
  /// <code>GET</code> request to the <code>/<i>CloudFront API
  /// version</i>/distribution ID/config</code> resource.
  final DistributionConfig distributionConfig;

  /// The domain name corresponding to the distribution, for example,
  /// <code>d111111abcdef8.cloudfront.net</code>.
  final String domainName;

  /// The identifier for the distribution. For example:
  /// <code>EDFDVBD632BHDS5</code>.
  final String id;

  /// The number of invalidation batches currently in progress.
  final int inProgressInvalidationBatches;

  /// The date and time the distribution was last modified.
  final DateTime lastModifiedTime;

  /// This response element indicates the current status of the distribution. When
  /// the status is <code>Deployed</code>, the distribution's information is fully
  /// propagated to all CloudFront edge locations.
  final String status;

  Distribution({
    @_s.required this.arn,
    @_s.required this.activeTrustedSigners,
    @_s.required this.distributionConfig,
    @_s.required this.domainName,
    @_s.required this.id,
    @_s.required this.inProgressInvalidationBatches,
    @_s.required this.lastModifiedTime,
    @_s.required this.status,
  });
  factory Distribution.fromXml(_s.XmlElement elem) {
    return Distribution(
      arn: _s.extractXmlStringValue(elem, 'ARN'),
      activeTrustedSigners: _s
          .extractXmlChild(elem, 'ActiveTrustedSigners')
          ?.let((e) => ActiveTrustedSigners.fromXml(e)),
      distributionConfig: _s
          .extractXmlChild(elem, 'DistributionConfig')
          ?.let((e) => DistributionConfig.fromXml(e)),
      domainName: _s.extractXmlStringValue(elem, 'DomainName'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      inProgressInvalidationBatches:
          _s.extractXmlIntValue(elem, 'InProgressInvalidationBatches'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
      status: _s.extractXmlStringValue(elem, 'Status'),
    );
  }
}

/// The caller reference you attempted to create the distribution with is
/// associated with another distribution.
class DistributionAlreadyExists implements _s.AwsException {
  final String message;

  DistributionAlreadyExists({
    this.message,
  });
  factory DistributionAlreadyExists.fromXml(_s.XmlElement elem) {
    return DistributionAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A distribution configuration.
class DistributionConfig {
  /// A unique value (for example, a date-time stamp) that ensures that the
  /// request can't be replayed.
  ///
  /// If the value of <code>CallerReference</code> is new (regardless of the
  /// content of the <code>DistributionConfig</code> object), CloudFront creates a
  /// new distribution.
  ///
  /// If <code>CallerReference</code> is a value you already sent in a previous
  /// request to create a distribution, and if the content of the
  /// <code>DistributionConfig</code> is identical to the original request
  /// (ignoring white space), CloudFront returns the same the response that it
  /// returned to the original request.
  ///
  /// If <code>CallerReference</code> is a value you already sent in a previous
  /// request to create a distribution but the content of the
  /// <code>DistributionConfig</code> is different from the original request,
  /// CloudFront returns a <code>DistributionAlreadyExists</code> error.
  final String callerReference;

  /// Any comments you want to include about the distribution.
  ///
  /// If you don't want to specify a comment, include an empty
  /// <code>Comment</code> element.
  ///
  /// To delete an existing comment, update the distribution configuration and
  /// include an empty <code>Comment</code> element.
  ///
  /// To add or change a comment, update the distribution configuration and
  /// specify the new comment.
  final String comment;

  /// A complex type that describes the default cache behavior if you don't
  /// specify a <code>CacheBehavior</code> element or if files don't match any of
  /// the values of <code>PathPattern</code> in <code>CacheBehavior</code>
  /// elements. You must create exactly one default cache behavior.
  final DefaultCacheBehavior defaultCacheBehavior;

  /// From this field, you can enable or disable the selected distribution.
  ///
  /// If you specify <code>false</code> for <code>Enabled</code> but you specify
  /// values for <code>Bucket</code> and <code>Prefix</code>, the values are
  /// automatically deleted.
  final bool enabled;

  /// A complex type that contains information about origins for this
  /// distribution.
  final Origins origins;

  /// A complex type that contains information about CNAMEs (alternate domain
  /// names), if any, for this distribution.
  final Aliases aliases;

  /// A complex type that contains zero or more <code>CacheBehavior</code>
  /// elements.
  final CacheBehaviors cacheBehaviors;

  /// A complex type that controls the following:
  ///
  /// <ul>
  /// <li>
  /// Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with
  /// custom error messages before returning the response to the viewer.
  /// </li>
  /// <li>
  /// How long CloudFront caches HTTP status codes in the 4xx and 5xx range.
  /// </li>
  /// </ul>
  /// For more information about custom error pages, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing
  /// Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final CustomErrorResponses customErrorResponses;

  /// The object that you want CloudFront to request from your origin (for
  /// example, <code>index.html</code>) when a viewer requests the root URL for
  /// your distribution (<code>http://www.example.com</code>) instead of an object
  /// in your distribution
  /// (<code>http://www.example.com/product-description.html</code>). Specifying a
  /// default root object avoids exposing the contents of your distribution.
  ///
  /// Specify only the object name, for example, <code>index.html</code>. Don't
  /// add a <code>/</code> before the object name.
  ///
  /// If you don't want to specify a default root object when you create a
  /// distribution, include an empty <code>DefaultRootObject</code> element.
  ///
  /// To delete the default root object from an existing distribution, update the
  /// distribution configuration and include an empty
  /// <code>DefaultRootObject</code> element.
  ///
  /// To replace the default root object, update the distribution configuration
  /// and specify the new object.
  ///
  /// For more information about the default root object, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html">Creating
  /// a Default Root Object</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final String defaultRootObject;

  /// (Optional) Specify the maximum HTTP version that you want viewers to use to
  /// communicate with CloudFront. The default value for new web distributions is
  /// http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP
  /// version.
  ///
  /// For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or
  /// later, and must support Server Name Identification (SNI).
  ///
  /// In general, configuring CloudFront to communicate with viewers using HTTP/2
  /// reduces latency. You can improve performance by optimizing for HTTP/2. For
  /// more information, do an Internet search for "http/2 optimization."
  final HttpVersion httpVersion;

  /// If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address
  /// for your distribution, specify <code>true</code>. If you specify
  /// <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS
  /// response code <code>NOERROR</code> and with no IP addresses. This allows
  /// viewers to submit a second request, for an IPv4 address for your
  /// distribution.
  ///
  /// In general, you should enable IPv6 if you have users on IPv6 networks who
  /// want to access your content. However, if you're using signed URLs or signed
  /// cookies to restrict access to your content, and if you're using a custom
  /// policy that includes the <code>IpAddress</code> parameter to restrict the IP
  /// addresses that can access your content, don't enable IPv6. If you want to
  /// restrict access to some content by IP address and not restrict access to
  /// other content (or restrict access but not by IP address), you can create two
  /// distributions. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html">Creating
  /// a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  ///
  /// If you're using an Amazon Route 53 alias resource record set to route
  /// traffic to your CloudFront distribution, you need to create a second alias
  /// resource record set when both of the following are true:
  ///
  /// <ul>
  /// <li>
  /// You enable IPv6 for the distribution
  /// </li>
  /// <li>
  /// You're using alternate domain names in the URLs for your objects
  /// </li>
  /// </ul>
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html">Routing
  /// Traffic to an Amazon CloudFront Web Distribution by Using Your Domain
  /// Name</a> in the <i>Amazon Route 53 Developer Guide</i>.
  ///
  /// If you created a CNAME resource record set, either with Amazon Route 53 or
  /// with another DNS service, you don't need to make any changes. A CNAME record
  /// will route traffic to your distribution regardless of the IP address format
  /// of the viewer request.
  final bool isIPV6Enabled;

  /// A complex type that controls whether access logs are written for the
  /// distribution.
  ///
  /// For more information about logging, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html">Access
  /// Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final LoggingConfig logging;

  /// The price class that corresponds with the maximum price that you want to pay
  /// for CloudFront service. If you specify <code>PriceClass_All</code>,
  /// CloudFront responds to requests for your objects from all CloudFront edge
  /// locations.
  ///
  /// If you specify a price class other than <code>PriceClass_All</code>,
  /// CloudFront serves your objects from the CloudFront edge location that has
  /// the lowest latency among the edge locations in your price class. Viewers who
  /// are in or near regions that are excluded from your specified price class may
  /// encounter slower performance.
  ///
  /// For more information about price classes, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html">Choosing
  /// the Price Class for a CloudFront Distribution</a> in the <i>Amazon
  /// CloudFront Developer Guide</i>. For information about CloudFront pricing,
  /// including how price classes map to CloudFront regions, see <a
  /// href="https://aws.amazon.com/cloudfront/pricing/">Amazon CloudFront
  /// Pricing</a>.
  final PriceClass priceClass;
  final Restrictions restrictions;
  final ViewerCertificate viewerCertificate;

  /// A unique identifier that specifies the AWS WAF web ACL, if any, to associate
  /// with this distribution.
  ///
  /// AWS WAF is a web application firewall that lets you monitor the HTTP and
  /// HTTPS requests that are forwarded to CloudFront, and lets you control access
  /// to your content. Based on conditions that you specify, such as the IP
  /// addresses that requests originate from or the values of query strings,
  /// CloudFront responds to requests either with the requested content or with an
  /// HTTP 403 status code (Forbidden). You can also configure CloudFront to
  /// return a custom error page when a request is blocked. For more information
  /// about AWS WAF, see the <a
  /// href="http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">AWS
  /// WAF Developer Guide</a>.
  final String webACLId;

  DistributionConfig({
    @_s.required this.callerReference,
    @_s.required this.comment,
    @_s.required this.defaultCacheBehavior,
    @_s.required this.enabled,
    @_s.required this.origins,
    this.aliases,
    this.cacheBehaviors,
    this.customErrorResponses,
    this.defaultRootObject,
    this.httpVersion,
    this.isIPV6Enabled,
    this.logging,
    this.priceClass,
    this.restrictions,
    this.viewerCertificate,
    this.webACLId,
  });
  factory DistributionConfig.fromXml(_s.XmlElement elem) {
    return DistributionConfig(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      defaultCacheBehavior: _s
          .extractXmlChild(elem, 'DefaultCacheBehavior')
          ?.let((e) => DefaultCacheBehavior.fromXml(e)),
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      origins:
          _s.extractXmlChild(elem, 'Origins')?.let((e) => Origins.fromXml(e)),
      aliases:
          _s.extractXmlChild(elem, 'Aliases')?.let((e) => Aliases.fromXml(e)),
      cacheBehaviors: _s
          .extractXmlChild(elem, 'CacheBehaviors')
          ?.let((e) => CacheBehaviors.fromXml(e)),
      customErrorResponses: _s
          .extractXmlChild(elem, 'CustomErrorResponses')
          ?.let((e) => CustomErrorResponses.fromXml(e)),
      defaultRootObject: _s.extractXmlStringValue(elem, 'DefaultRootObject'),
      httpVersion:
          _s.extractXmlStringValue(elem, 'HttpVersion')?.toHttpVersion(),
      isIPV6Enabled: _s.extractXmlBoolValue(elem, 'IsIPV6Enabled'),
      logging: _s
          .extractXmlChild(elem, 'Logging')
          ?.let((e) => LoggingConfig.fromXml(e)),
      priceClass: _s.extractXmlStringValue(elem, 'PriceClass')?.toPriceClass(),
      restrictions: _s
          .extractXmlChild(elem, 'Restrictions')
          ?.let((e) => Restrictions.fromXml(e)),
      viewerCertificate: _s
          .extractXmlChild(elem, 'ViewerCertificate')
          ?.let((e) => ViewerCertificate.fromXml(e)),
      webACLId: _s.extractXmlStringValue(elem, 'WebACLId'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('CallerReference', callerReference),
      aliases?.toXml('Aliases'),
      _s.encodeXmlStringValue('DefaultRootObject', defaultRootObject),
      origins?.toXml('Origins'),
      defaultCacheBehavior?.toXml('DefaultCacheBehavior'),
      cacheBehaviors?.toXml('CacheBehaviors'),
      customErrorResponses?.toXml('CustomErrorResponses'),
      _s.encodeXmlStringValue('Comment', comment),
      logging?.toXml('Logging'),
      _s.encodeXmlStringValue('PriceClass', priceClass?.toValue()),
      _s.encodeXmlBoolValue('Enabled', enabled),
      viewerCertificate?.toXml('ViewerCertificate'),
      restrictions?.toXml('Restrictions'),
      _s.encodeXmlStringValue('WebACLId', webACLId),
      _s.encodeXmlStringValue('HttpVersion', httpVersion?.toValue()),
      _s.encodeXmlBoolValue('IsIPV6Enabled', isIPV6Enabled),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A distribution Configuration and a list of tags to be associated with the
/// distribution.
class DistributionConfigWithTags {
  /// A distribution configuration.
  final DistributionConfig distributionConfig;

  /// A complex type that contains zero or more <code>Tag</code> elements.
  final Tags tags;

  DistributionConfigWithTags({
    @_s.required this.distributionConfig,
    @_s.required this.tags,
  });
  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      distributionConfig?.toXml('DistributionConfig'),
      tags?.toXml('Tags'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A distribution list.
class DistributionList {
  /// A flag that indicates whether more distributions remain to be listed. If
  /// your results were truncated, you can make a follow-up pagination request
  /// using the <code>Marker</code> request parameter to retrieve more
  /// distributions in the list.
  final bool isTruncated;

  /// The value you provided for the <code>Marker</code> request parameter.
  final String marker;

  /// The value you provided for the <code>MaxItems</code> request parameter.
  final int maxItems;

  /// The number of distributions that were created by the current AWS account.
  final int quantity;

  /// A complex type that contains one <code>DistributionSummary</code> element
  /// for each distribution that was created by the current AWS account.
  final List<DistributionSummary> items;

  /// If <code>IsTruncated</code> is <code>true</code>, this element is present
  /// and contains the value you can use for the <code>Marker</code> request
  /// parameter to continue listing your distributions where they left off.
  final String nextMarker;

  DistributionList({
    @_s.required this.isTruncated,
    @_s.required this.marker,
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory DistributionList.fromXml(_s.XmlElement elem) {
    return DistributionList(
      isTruncated: _s.extractXmlBoolValue(elem, 'IsTruncated'),
      marker: _s.extractXmlStringValue(elem, 'Marker'),
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('DistributionSummary')
          .map((c) => DistributionSummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

class DistributionNotDisabled implements _s.AwsException {
  final String message;

  DistributionNotDisabled({
    this.message,
  });
  factory DistributionNotDisabled.fromXml(_s.XmlElement elem) {
    return DistributionNotDisabled(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A summary of the information about a CloudFront distribution.
class DistributionSummary {
  /// The ARN (Amazon Resource Name) for the distribution. For example:
  /// <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>,
  /// where <code>123456789012</code> is your AWS account ID.
  final String arn;

  /// A complex type that contains information about CNAMEs (alternate domain
  /// names), if any, for this distribution.
  final Aliases aliases;

  /// A complex type that contains zero or more <code>CacheBehavior</code>
  /// elements.
  final CacheBehaviors cacheBehaviors;

  /// The comment originally specified when this distribution was created.
  final String comment;

  /// A complex type that contains zero or more <code>CustomErrorResponses</code>
  /// elements.
  final CustomErrorResponses customErrorResponses;

  /// A complex type that describes the default cache behavior if you don't
  /// specify a <code>CacheBehavior</code> element or if files don't match any of
  /// the values of <code>PathPattern</code> in <code>CacheBehavior</code>
  /// elements. You must create exactly one default cache behavior.
  final DefaultCacheBehavior defaultCacheBehavior;

  /// The domain name that corresponds to the distribution, for example,
  /// <code>d111111abcdef8.cloudfront.net</code>.
  final String domainName;

  /// Whether the distribution is enabled to accept user requests for content.
  final bool enabled;

  /// Specify the maximum HTTP version that you want viewers to use to communicate
  /// with CloudFront. The default value for new web distributions is
  /// <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will
  /// automatically use an earlier version.
  final HttpVersion httpVersion;

  /// The identifier for the distribution. For example:
  /// <code>EDFDVBD632BHDS5</code>.
  final String id;

  /// Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for
  /// your distribution.
  final bool isIPV6Enabled;

  /// The date and time the distribution was last modified.
  final DateTime lastModifiedTime;

  /// A complex type that contains information about origins for this
  /// distribution.
  final Origins origins;
  final PriceClass priceClass;
  final Restrictions restrictions;

  /// The current status of the distribution. When the status is
  /// <code>Deployed</code>, the distribution's information is propagated to all
  /// CloudFront edge locations.
  final String status;
  final ViewerCertificate viewerCertificate;

  /// The Web ACL Id (if any) associated with the distribution.
  final String webACLId;

  DistributionSummary({
    @_s.required this.arn,
    @_s.required this.aliases,
    @_s.required this.cacheBehaviors,
    @_s.required this.comment,
    @_s.required this.customErrorResponses,
    @_s.required this.defaultCacheBehavior,
    @_s.required this.domainName,
    @_s.required this.enabled,
    @_s.required this.httpVersion,
    @_s.required this.id,
    @_s.required this.isIPV6Enabled,
    @_s.required this.lastModifiedTime,
    @_s.required this.origins,
    @_s.required this.priceClass,
    @_s.required this.restrictions,
    @_s.required this.status,
    @_s.required this.viewerCertificate,
    @_s.required this.webACLId,
  });
  factory DistributionSummary.fromXml(_s.XmlElement elem) {
    return DistributionSummary(
      arn: _s.extractXmlStringValue(elem, 'ARN'),
      aliases:
          _s.extractXmlChild(elem, 'Aliases')?.let((e) => Aliases.fromXml(e)),
      cacheBehaviors: _s
          .extractXmlChild(elem, 'CacheBehaviors')
          ?.let((e) => CacheBehaviors.fromXml(e)),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      customErrorResponses: _s
          .extractXmlChild(elem, 'CustomErrorResponses')
          ?.let((e) => CustomErrorResponses.fromXml(e)),
      defaultCacheBehavior: _s
          .extractXmlChild(elem, 'DefaultCacheBehavior')
          ?.let((e) => DefaultCacheBehavior.fromXml(e)),
      domainName: _s.extractXmlStringValue(elem, 'DomainName'),
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      httpVersion:
          _s.extractXmlStringValue(elem, 'HttpVersion')?.toHttpVersion(),
      id: _s.extractXmlStringValue(elem, 'Id'),
      isIPV6Enabled: _s.extractXmlBoolValue(elem, 'IsIPV6Enabled'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
      origins:
          _s.extractXmlChild(elem, 'Origins')?.let((e) => Origins.fromXml(e)),
      priceClass: _s.extractXmlStringValue(elem, 'PriceClass')?.toPriceClass(),
      restrictions: _s
          .extractXmlChild(elem, 'Restrictions')
          ?.let((e) => Restrictions.fromXml(e)),
      status: _s.extractXmlStringValue(elem, 'Status'),
      viewerCertificate: _s
          .extractXmlChild(elem, 'ViewerCertificate')
          ?.let((e) => ViewerCertificate.fromXml(e)),
      webACLId: _s.extractXmlStringValue(elem, 'WebACLId'),
    );
  }
}

/// Complex data type for field-level encryption profiles that includes all of
/// the encryption entities.
class EncryptionEntities {
  /// Number of field pattern items in a field-level encryption content
  /// type-profile mapping.
  final int quantity;

  /// An array of field patterns in a field-level encryption content type-profile
  /// mapping.
  final List<EncryptionEntity> items;

  EncryptionEntities({
    @_s.required this.quantity,
    this.items,
  });
  factory EncryptionEntities.fromXml(_s.XmlElement elem) {
    return EncryptionEntities(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('EncryptionEntity')
          .map((c) => EncryptionEntity.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// Complex data type for field-level encryption profiles that includes the
/// encryption key and field pattern specifications.
class EncryptionEntity {
  /// Field patterns in a field-level encryption content type profile specify the
  /// fields that you want to be encrypted. You can provide the full field name,
  /// or any beginning characters followed by a wildcard (*). You can't overlap
  /// field patterns. For example, you can't have both ABC* and AB*. Note that
  /// field patterns are case-sensitive.
  final FieldPatterns fieldPatterns;

  /// The provider associated with the public key being used for encryption. This
  /// value must also be provided with the private key for applications to be able
  /// to decrypt data.
  final String providerId;

  /// The public key associated with a set of field-level encryption patterns, to
  /// be used when encrypting the fields that match the patterns.
  final String publicKeyId;

  EncryptionEntity({
    @_s.required this.fieldPatterns,
    @_s.required this.providerId,
    @_s.required this.publicKeyId,
  });
  factory EncryptionEntity.fromXml(_s.XmlElement elem) {
    return EncryptionEntity(
      fieldPatterns: _s
          .extractXmlChild(elem, 'FieldPatterns')
          ?.let((e) => FieldPatterns.fromXml(e)),
      providerId: _s.extractXmlStringValue(elem, 'ProviderId'),
      publicKeyId: _s.extractXmlStringValue(elem, 'PublicKeyId'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('PublicKeyId', publicKeyId),
      _s.encodeXmlStringValue('ProviderId', providerId),
      fieldPatterns?.toXml('FieldPatterns'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum EventType {
  viewerRequest,
  viewerResponse,
  originRequest,
  originResponse,
}

extension on EventType {
  String toValue() {
    switch (this) {
      case EventType.viewerRequest:
        return 'viewer-request';
      case EventType.viewerResponse:
        return 'viewer-response';
      case EventType.originRequest:
        return 'origin-request';
      case EventType.originResponse:
        return 'origin-response';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  EventType toEventType() {
    switch (this) {
      case 'viewer-request':
        return EventType.viewerRequest;
      case 'viewer-response':
        return EventType.viewerResponse;
      case 'origin-request':
        return EventType.originRequest;
      case 'origin-response':
        return EventType.originResponse;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A complex data type that includes the profile configurations and other
/// options specified for field-level encryption.
class FieldLevelEncryption {
  /// A complex data type that includes the profile configurations specified for
  /// field-level encryption.
  final FieldLevelEncryptionConfig fieldLevelEncryptionConfig;

  /// The configuration ID for a field-level encryption configuration which
  /// includes a set of profiles that specify certain selected data fields to be
  /// encrypted by specific public keys.
  final String id;

  /// The last time the field-level encryption configuration was changed.
  final DateTime lastModifiedTime;

  FieldLevelEncryption({
    @_s.required this.fieldLevelEncryptionConfig,
    @_s.required this.id,
    @_s.required this.lastModifiedTime,
  });
  factory FieldLevelEncryption.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryption(
      fieldLevelEncryptionConfig: _s
          .extractXmlChild(elem, 'FieldLevelEncryptionConfig')
          ?.let((e) => FieldLevelEncryptionConfig.fromXml(e)),
      id: _s.extractXmlStringValue(elem, 'Id'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
    );
  }
}

/// A complex data type that includes the profile configurations specified for
/// field-level encryption.
class FieldLevelEncryptionConfig {
  /// A unique number that ensures the request can't be replayed.
  final String callerReference;

  /// An optional comment about the configuration.
  final String comment;

  /// A complex data type that specifies when to forward content if a content type
  /// isn't recognized and profiles to use as by default in a request if a query
  /// argument doesn't specify a profile to use.
  final ContentTypeProfileConfig contentTypeProfileConfig;

  /// A complex data type that specifies when to forward content if a profile
  /// isn't found and the profile that can be provided as a query argument in a
  /// request.
  final QueryArgProfileConfig queryArgProfileConfig;

  FieldLevelEncryptionConfig({
    @_s.required this.callerReference,
    this.comment,
    this.contentTypeProfileConfig,
    this.queryArgProfileConfig,
  });
  factory FieldLevelEncryptionConfig.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionConfig(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      contentTypeProfileConfig: _s
          .extractXmlChild(elem, 'ContentTypeProfileConfig')
          ?.let((e) => ContentTypeProfileConfig.fromXml(e)),
      queryArgProfileConfig: _s
          .extractXmlChild(elem, 'QueryArgProfileConfig')
          ?.let((e) => QueryArgProfileConfig.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('CallerReference', callerReference),
      _s.encodeXmlStringValue('Comment', comment),
      queryArgProfileConfig?.toXml('QueryArgProfileConfig'),
      contentTypeProfileConfig?.toXml('ContentTypeProfileConfig'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The specified configuration for field-level encryption already exists.
class FieldLevelEncryptionConfigAlreadyExists implements _s.AwsException {
  final String message;

  FieldLevelEncryptionConfigAlreadyExists({
    this.message,
  });
  factory FieldLevelEncryptionConfigAlreadyExists.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionConfigAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified configuration for field-level encryption is in use.
class FieldLevelEncryptionConfigInUse implements _s.AwsException {
  final String message;

  FieldLevelEncryptionConfigInUse({
    this.message,
  });
  factory FieldLevelEncryptionConfigInUse.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionConfigInUse(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// List of field-level encrpytion configurations.
class FieldLevelEncryptionList {
  /// The maximum number of elements you want in the response body.
  final int maxItems;

  /// The number of field-level encryption items.
  final int quantity;

  /// An array of field-level encryption items.
  final List<FieldLevelEncryptionSummary> items;

  /// If there are more elements to be listed, this element is present and
  /// contains the value that you can use for the <code>Marker</code> request
  /// parameter to continue listing your configurations where you left off.
  final String nextMarker;

  FieldLevelEncryptionList({
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory FieldLevelEncryptionList.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionList(
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('FieldLevelEncryptionSummary')
          .map((c) => FieldLevelEncryptionSummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

/// A complex data type for field-level encryption profiles.
class FieldLevelEncryptionProfile {
  /// A complex data type that includes the profile name and the encryption
  /// entities for the field-level encryption profile.
  final FieldLevelEncryptionProfileConfig fieldLevelEncryptionProfileConfig;

  /// The ID for a field-level encryption profile configuration which includes a
  /// set of profiles that specify certain selected data fields to be encrypted by
  /// specific public keys.
  final String id;

  /// The last time the field-level encryption profile was updated.
  final DateTime lastModifiedTime;

  FieldLevelEncryptionProfile({
    @_s.required this.fieldLevelEncryptionProfileConfig,
    @_s.required this.id,
    @_s.required this.lastModifiedTime,
  });
  factory FieldLevelEncryptionProfile.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfile(
      fieldLevelEncryptionProfileConfig: _s
          .extractXmlChild(elem, 'FieldLevelEncryptionProfileConfig')
          ?.let((e) => FieldLevelEncryptionProfileConfig.fromXml(e)),
      id: _s.extractXmlStringValue(elem, 'Id'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
    );
  }
}

/// The specified profile for field-level encryption already exists.
class FieldLevelEncryptionProfileAlreadyExists implements _s.AwsException {
  final String message;

  FieldLevelEncryptionProfileAlreadyExists({
    this.message,
  });
  factory FieldLevelEncryptionProfileAlreadyExists.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfileAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A complex data type of profiles for the field-level encryption.
class FieldLevelEncryptionProfileConfig {
  /// A unique number that ensures the request can't be replayed.
  final String callerReference;

  /// A complex data type of encryption entities for the field-level encryption
  /// profile that include the public key ID, provider, and field patterns for
  /// specifying which fields to encrypt with this key.
  final EncryptionEntities encryptionEntities;

  /// Profile name for the field-level encryption profile.
  final String name;

  /// An optional comment for the field-level encryption profile.
  final String comment;

  FieldLevelEncryptionProfileConfig({
    @_s.required this.callerReference,
    @_s.required this.encryptionEntities,
    @_s.required this.name,
    this.comment,
  });
  factory FieldLevelEncryptionProfileConfig.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfileConfig(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      encryptionEntities: _s
          .extractXmlChild(elem, 'EncryptionEntities')
          ?.let((e) => EncryptionEntities.fromXml(e)),
      name: _s.extractXmlStringValue(elem, 'Name'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('Name', name),
      _s.encodeXmlStringValue('CallerReference', callerReference),
      _s.encodeXmlStringValue('Comment', comment),
      encryptionEntities?.toXml('EncryptionEntities'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The specified profile for field-level encryption is in use.
class FieldLevelEncryptionProfileInUse implements _s.AwsException {
  final String message;

  FieldLevelEncryptionProfileInUse({
    this.message,
  });
  factory FieldLevelEncryptionProfileInUse.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfileInUse(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// List of field-level encryption profiles.
class FieldLevelEncryptionProfileList {
  /// The maximum number of field-level encryption profiles you want in the
  /// response body.
  final int maxItems;

  /// The number of field-level encryption profiles.
  final int quantity;

  /// The field-level encryption profile items.
  final List<FieldLevelEncryptionProfileSummary> items;

  /// If there are more elements to be listed, this element is present and
  /// contains the value that you can use for the <code>Marker</code> request
  /// parameter to continue listing your profiles where you left off.
  final String nextMarker;

  FieldLevelEncryptionProfileList({
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory FieldLevelEncryptionProfileList.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfileList(
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('FieldLevelEncryptionProfileSummary')
          .map((c) => FieldLevelEncryptionProfileSummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

/// The maximum size of a profile for field-level encryption was exceeded.
class FieldLevelEncryptionProfileSizeExceeded implements _s.AwsException {
  final String message;

  FieldLevelEncryptionProfileSizeExceeded({
    this.message,
  });
  factory FieldLevelEncryptionProfileSizeExceeded.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfileSizeExceeded(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The field-level encryption profile summary.
class FieldLevelEncryptionProfileSummary {
  /// A complex data type of encryption entities for the field-level encryption
  /// profile that include the public key ID, provider, and field patterns for
  /// specifying which fields to encrypt with this key.
  final EncryptionEntities encryptionEntities;

  /// ID for the field-level encryption profile summary.
  final String id;

  /// The time when the the field-level encryption profile summary was last
  /// updated.
  final DateTime lastModifiedTime;

  /// Name for the field-level encryption profile summary.
  final String name;

  /// An optional comment for the field-level encryption profile summary.
  final String comment;

  FieldLevelEncryptionProfileSummary({
    @_s.required this.encryptionEntities,
    @_s.required this.id,
    @_s.required this.lastModifiedTime,
    @_s.required this.name,
    this.comment,
  });
  factory FieldLevelEncryptionProfileSummary.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionProfileSummary(
      encryptionEntities: _s
          .extractXmlChild(elem, 'EncryptionEntities')
          ?.let((e) => EncryptionEntities.fromXml(e)),
      id: _s.extractXmlStringValue(elem, 'Id'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
      name: _s.extractXmlStringValue(elem, 'Name'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
    );
  }
}

/// A summary of a field-level encryption item.
class FieldLevelEncryptionSummary {
  /// The unique ID of a field-level encryption item.
  final String id;

  /// The last time that the summary of field-level encryption items was modified.
  final DateTime lastModifiedTime;

  /// An optional comment about the field-level encryption item.
  final String comment;

  /// A summary of a content type-profile mapping.
  final ContentTypeProfileConfig contentTypeProfileConfig;

  /// A summary of a query argument-profile mapping.
  final QueryArgProfileConfig queryArgProfileConfig;

  FieldLevelEncryptionSummary({
    @_s.required this.id,
    @_s.required this.lastModifiedTime,
    this.comment,
    this.contentTypeProfileConfig,
    this.queryArgProfileConfig,
  });
  factory FieldLevelEncryptionSummary.fromXml(_s.XmlElement elem) {
    return FieldLevelEncryptionSummary(
      id: _s.extractXmlStringValue(elem, 'Id'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      contentTypeProfileConfig: _s
          .extractXmlChild(elem, 'ContentTypeProfileConfig')
          ?.let((e) => ContentTypeProfileConfig.fromXml(e)),
      queryArgProfileConfig: _s
          .extractXmlChild(elem, 'QueryArgProfileConfig')
          ?.let((e) => QueryArgProfileConfig.fromXml(e)),
    );
  }
}

/// A complex data type that includes the field patterns to match for
/// field-level encryption.
class FieldPatterns {
  /// The number of field-level encryption field patterns.
  final int quantity;

  /// An array of the field-level encryption field patterns.
  final List<String> items;

  FieldPatterns({
    @_s.required this.quantity,
    this.items,
  });
  factory FieldPatterns.fromXml(_s.XmlElement elem) {
    return FieldPatterns(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'FieldPattern')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('FieldPattern', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum Format {
  uRLEncoded,
}

extension on Format {
  String toValue() {
    switch (this) {
      case Format.uRLEncoded:
        return 'URLEncoded';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  Format toFormat() {
    switch (this) {
      case 'URLEncoded':
        return Format.uRLEncoded;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A complex type that specifies how CloudFront handles query strings and
/// cookies.
class ForwardedValues {
  /// A complex type that specifies whether you want CloudFront to forward cookies
  /// to the origin and, if so, which ones. For more information about forwarding
  /// cookies to the origin, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How
  /// CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon
  /// CloudFront Developer Guide</i>.
  final CookiePreference cookies;

  /// Indicates whether you want CloudFront to forward query strings to the origin
  /// that is associated with this cache behavior and cache based on the query
  /// string parameters. CloudFront behavior depends on the value of
  /// <code>QueryString</code> and on the values that you specify for
  /// <code>QueryStringCacheKeys</code>, if any:
  ///
  /// If you specify true for <code>QueryString</code> and you don't specify any
  /// values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query
  /// string parameters to the origin and caches based on all query string
  /// parameters. Depending on how many query string parameters and values you
  /// have, this can adversely affect performance because CloudFront must forward
  /// more requests to the origin.
  ///
  /// If you specify true for <code>QueryString</code> and you specify one or more
  /// values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query
  /// string parameters to the origin, but it only caches based on the query
  /// string parameters that you specify.
  ///
  /// If you specify false for <code>QueryString</code>, CloudFront doesn't
  /// forward any query string parameters to the origin, and doesn't cache based
  /// on query string parameters.
  ///
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html">Configuring
  /// CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon
  /// CloudFront Developer Guide</i>.
  final bool queryString;

  /// A complex type that specifies the <code>Headers</code>, if any, that you
  /// want CloudFront to base caching on for this cache behavior.
  final Headers headers;

  /// A complex type that contains information about the query string parameters
  /// that you want CloudFront to use for caching for this cache behavior.
  final QueryStringCacheKeys queryStringCacheKeys;

  ForwardedValues({
    @_s.required this.cookies,
    @_s.required this.queryString,
    this.headers,
    this.queryStringCacheKeys,
  });
  factory ForwardedValues.fromXml(_s.XmlElement elem) {
    return ForwardedValues(
      cookies: _s
          .extractXmlChild(elem, 'Cookies')
          ?.let((e) => CookiePreference.fromXml(e)),
      queryString: _s.extractXmlBoolValue(elem, 'QueryString'),
      headers:
          _s.extractXmlChild(elem, 'Headers')?.let((e) => Headers.fromXml(e)),
      queryStringCacheKeys: _s
          .extractXmlChild(elem, 'QueryStringCacheKeys')
          ?.let((e) => QueryStringCacheKeys.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue('QueryString', queryString),
      cookies?.toXml('Cookies'),
      headers?.toXml('Headers'),
      queryStringCacheKeys?.toXml('QueryStringCacheKeys'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that controls the countries in which your content is
/// distributed. CloudFront determines the location of your users using
/// <code>MaxMind</code> GeoIP databases.
class GeoRestriction {
  /// When geo restriction is <code>enabled</code>, this is the number of
  /// countries in your <code>whitelist</code> or <code>blacklist</code>.
  /// Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>,
  /// and you can omit <code>Items</code>.
  final int quantity;

  /// The method that you want to use to restrict distribution of your content by
  /// country:
  ///
  /// <ul>
  /// <li>
  /// <code>none</code>: No geo restriction is enabled, meaning access to content
  /// is not restricted by client geo location.
  /// </li>
  /// <li>
  /// <code>blacklist</code>: The <code>Location</code> elements specify the
  /// countries in which you don't want CloudFront to distribute your content.
  /// </li>
  /// <li>
  /// <code>whitelist</code>: The <code>Location</code> elements specify the
  /// countries in which you want CloudFront to distribute your content.
  /// </li>
  /// </ul>
  final GeoRestrictionType restrictionType;

  /// A complex type that contains a <code>Location</code> element for each
  /// country in which you want CloudFront either to distribute your content
  /// (<code>whitelist</code>) or not distribute your content
  /// (<code>blacklist</code>).
  ///
  /// The <code>Location</code> element is a two-letter, uppercase country code
  /// for a country that you want to include in your <code>blacklist</code> or
  /// <code>whitelist</code>. Include one <code>Location</code> element for each
  /// country.
  ///
  /// CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country
  /// codes. For the current list of countries and the corresponding codes, see
  /// <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization
  /// for Standardization</i> website. You can also refer to the country list on
  /// the CloudFront console, which includes both country names and codes.
  final List<String> items;

  GeoRestriction({
    @_s.required this.quantity,
    @_s.required this.restrictionType,
    this.items,
  });
  factory GeoRestriction.fromXml(_s.XmlElement elem) {
    return GeoRestriction(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      restrictionType: _s
          .extractXmlStringValue(elem, 'RestrictionType')
          ?.toGeoRestrictionType(),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Location')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('RestrictionType', restrictionType?.toValue()),
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Location', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum GeoRestrictionType {
  blacklist,
  whitelist,
  none,
}

extension on GeoRestrictionType {
  String toValue() {
    switch (this) {
      case GeoRestrictionType.blacklist:
        return 'blacklist';
      case GeoRestrictionType.whitelist:
        return 'whitelist';
      case GeoRestrictionType.none:
        return 'none';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  GeoRestrictionType toGeoRestrictionType() {
    switch (this) {
      case 'blacklist':
        return GeoRestrictionType.blacklist;
      case 'whitelist':
        return GeoRestrictionType.whitelist;
      case 'none':
        return GeoRestrictionType.none;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// The returned result of the corresponding request.
class GetCloudFrontOriginAccessIdentityConfigResult {
  /// The origin access identity's configuration information.
  final CloudFrontOriginAccessIdentityConfig
      cloudFrontOriginAccessIdentityConfig;

  /// The current version of the configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  GetCloudFrontOriginAccessIdentityConfigResult({
    this.cloudFrontOriginAccessIdentityConfig,
    this.eTag,
  });
  factory GetCloudFrontOriginAccessIdentityConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetCloudFrontOriginAccessIdentityConfigResult(
      cloudFrontOriginAccessIdentityConfig:
          elem?.let((e) => CloudFrontOriginAccessIdentityConfig.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
    );
  }
}

/// The returned result of the corresponding request.
class GetCloudFrontOriginAccessIdentityResult {
  /// The origin access identity's information.
  final CloudFrontOriginAccessIdentity cloudFrontOriginAccessIdentity;

  /// The current version of the origin access identity's information. For
  /// example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  GetCloudFrontOriginAccessIdentityResult({
    this.cloudFrontOriginAccessIdentity,
    this.eTag,
  });
  factory GetCloudFrontOriginAccessIdentityResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetCloudFrontOriginAccessIdentityResult(
      cloudFrontOriginAccessIdentity:
          elem?.let((e) => CloudFrontOriginAccessIdentity.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
    );
  }
}

/// The returned result of the corresponding request.
class GetDistributionConfigResult {
  /// The distribution's configuration information.
  final DistributionConfig distributionConfig;

  /// The current version of the configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  GetDistributionConfigResult({
    this.distributionConfig,
    this.eTag,
  });
  factory GetDistributionConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetDistributionConfigResult(
      distributionConfig: elem?.let((e) => DistributionConfig.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
    );
  }
}

/// The returned result of the corresponding request.
class GetDistributionResult {
  /// The distribution's information.
  final Distribution distribution;

  /// The current version of the distribution's information. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  GetDistributionResult({
    this.distribution,
    this.eTag,
  });
  factory GetDistributionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetDistributionResult(
      distribution: elem?.let((e) => Distribution.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
    );
  }
}

class GetFieldLevelEncryptionConfigResult {
  /// The current version of the field level encryption configuration. For
  /// example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the field-level encryption configuration information.
  final FieldLevelEncryptionConfig fieldLevelEncryptionConfig;

  GetFieldLevelEncryptionConfigResult({
    this.eTag,
    this.fieldLevelEncryptionConfig,
  });
  factory GetFieldLevelEncryptionConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetFieldLevelEncryptionConfigResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryptionConfig:
          elem?.let((e) => FieldLevelEncryptionConfig.fromXml(e)),
    );
  }
}

class GetFieldLevelEncryptionProfileConfigResult {
  /// The current version of the field-level encryption profile configuration
  /// result. For example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the field-level encryption profile configuration information.
  final FieldLevelEncryptionProfileConfig fieldLevelEncryptionProfileConfig;

  GetFieldLevelEncryptionProfileConfigResult({
    this.eTag,
    this.fieldLevelEncryptionProfileConfig,
  });
  factory GetFieldLevelEncryptionProfileConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetFieldLevelEncryptionProfileConfigResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryptionProfileConfig:
          elem?.let((e) => FieldLevelEncryptionProfileConfig.fromXml(e)),
    );
  }
}

class GetFieldLevelEncryptionProfileResult {
  /// The current version of the field level encryption profile. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the field-level encryption profile information.
  final FieldLevelEncryptionProfile fieldLevelEncryptionProfile;

  GetFieldLevelEncryptionProfileResult({
    this.eTag,
    this.fieldLevelEncryptionProfile,
  });
  factory GetFieldLevelEncryptionProfileResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetFieldLevelEncryptionProfileResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryptionProfile:
          elem?.let((e) => FieldLevelEncryptionProfile.fromXml(e)),
    );
  }
}

class GetFieldLevelEncryptionResult {
  /// The current version of the field level encryption configuration. For
  /// example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the field-level encryption configuration information.
  final FieldLevelEncryption fieldLevelEncryption;

  GetFieldLevelEncryptionResult({
    this.eTag,
    this.fieldLevelEncryption,
  });
  factory GetFieldLevelEncryptionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetFieldLevelEncryptionResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryption: elem?.let((e) => FieldLevelEncryption.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class GetInvalidationResult {
  /// The invalidation's information. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html">Invalidation
  /// Complex Type</a>.
  final Invalidation invalidation;

  GetInvalidationResult({
    this.invalidation,
  });
  factory GetInvalidationResult.fromXml(_s.XmlElement elem) {
    return GetInvalidationResult(
      invalidation: elem?.let((e) => Invalidation.fromXml(e)),
    );
  }
}

class GetPublicKeyConfigResult {
  /// The current version of the public key configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the result for the public key configuration.
  final PublicKeyConfig publicKeyConfig;

  GetPublicKeyConfigResult({
    this.eTag,
    this.publicKeyConfig,
  });
  factory GetPublicKeyConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetPublicKeyConfigResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      publicKeyConfig: elem?.let((e) => PublicKeyConfig.fromXml(e)),
    );
  }
}

class GetPublicKeyResult {
  /// The current version of the public key. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the public key.
  final PublicKey publicKey;

  GetPublicKeyResult({
    this.eTag,
    this.publicKey,
  });
  factory GetPublicKeyResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetPublicKeyResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      publicKey: elem?.let((e) => PublicKey.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class GetStreamingDistributionConfigResult {
  /// The current version of the configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// The streaming distribution's configuration information.
  final StreamingDistributionConfig streamingDistributionConfig;

  GetStreamingDistributionConfigResult({
    this.eTag,
    this.streamingDistributionConfig,
  });
  factory GetStreamingDistributionConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetStreamingDistributionConfigResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      streamingDistributionConfig:
          elem?.let((e) => StreamingDistributionConfig.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class GetStreamingDistributionResult {
  /// The current version of the streaming distribution's information. For
  /// example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// The streaming distribution's information.
  final StreamingDistribution streamingDistribution;

  GetStreamingDistributionResult({
    this.eTag,
    this.streamingDistribution,
  });
  factory GetStreamingDistributionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return GetStreamingDistributionResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      streamingDistribution: elem?.let((e) => StreamingDistribution.fromXml(e)),
    );
  }
}

/// A complex type that specifies the request headers, if any, that you want
/// CloudFront to base caching on for this cache behavior.
///
/// For the headers that you specify, CloudFront caches separate versions of a
/// specified object based on the header values in viewer requests. For example,
/// suppose viewer requests for <code>logo.jpg</code> contain a custom
/// <code>product</code> header that has a value of either <code>acme</code> or
/// <code>apex</code>, and you configure CloudFront to cache your content based
/// on values in the <code>product</code> header. CloudFront forwards the
/// <code>product</code> header to the origin and caches the response from the
/// origin once for each header value. For more information about caching based
/// on header values, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">How
/// CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront
/// Developer Guide</i>.
class Headers {
  /// The number of different headers that you want CloudFront to base caching on
  /// for this cache behavior. You can configure each cache behavior in a web
  /// distribution to do one of the following:
  ///
  /// <ul>
  /// <li>
  /// <b>Forward all headers to your origin</b>: Specify <code>1</code> for
  /// <code>Quantity</code> and <code>*</code> for <code>Name</code>.
  /// <important>
  /// CloudFront doesn't cache the objects that are associated with this cache
  /// behavior. Instead, CloudFront sends every request to the origin.
  /// </important> </li>
  /// <li>
  /// <b>Forward a whitelist of headers you specify</b>: Specify the number of
  /// headers that you want CloudFront to base caching on. Then specify the header
  /// names in <code>Name</code> elements. CloudFront caches your objects based on
  /// the values in the specified headers.
  /// </li>
  /// <li>
  /// <b>Forward only the default headers</b>: Specify <code>0</code> for
  /// <code>Quantity</code> and omit <code>Items</code>. In this configuration,
  /// CloudFront doesn't cache based on the values in the request headers.
  /// </li>
  /// </ul>
  /// Regardless of which option you choose, CloudFront forwards headers to your
  /// origin based on whether the origin is an S3 bucket or a custom origin. See
  /// the following documentation:
  ///
  /// <ul>
  /// <li>
  /// <b>S3 bucket</b>: See <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorS3Origin.html#request-s3-removed-headers">HTTP
  /// Request Headers That CloudFront Removes or Updates</a>
  /// </li>
  /// <li>
  /// <b>Custom origin</b>: See <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorCustomOrigin.html#request-custom-headers-behavior">HTTP
  /// Request Headers and CloudFront Behavior</a>
  /// </li>
  /// </ul>
  final int quantity;

  /// A list that contains one <code>Name</code> element for each header that you
  /// want CloudFront to use for caching in this cache behavior. If
  /// <code>Quantity</code> is <code>0</code>, omit <code>Items</code>.
  final List<String> items;

  Headers({
    @_s.required this.quantity,
    this.items,
  });
  factory Headers.fromXml(_s.XmlElement elem) {
    return Headers(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Name')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Name', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum HttpVersion {
  http1_1,
  http2,
}

extension on HttpVersion {
  String toValue() {
    switch (this) {
      case HttpVersion.http1_1:
        return 'http1.1';
      case HttpVersion.http2:
        return 'http2';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  HttpVersion toHttpVersion() {
    switch (this) {
      case 'http1.1':
        return HttpVersion.http1_1;
      case 'http2':
        return HttpVersion.http2;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// The specified configuration for field-level encryption can't be associated
/// with the specified cache behavior.
class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior
    implements _s.AwsException {
  final String message;

  IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior({
    this.message,
  });
  factory IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior.fromXml(
      _s.XmlElement elem) {
    return IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Origin and <code>CallerReference</code> cannot be updated.
class IllegalUpdate implements _s.AwsException {
  final String message;

  IllegalUpdate({
    this.message,
  });
  factory IllegalUpdate.fromXml(_s.XmlElement elem) {
    return IllegalUpdate(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The value of <code>Quantity</code> and the size of <code>Items</code> don't
/// match.
class InconsistentQuantities implements _s.AwsException {
  final String message;

  InconsistentQuantities({
    this.message,
  });
  factory InconsistentQuantities.fromXml(_s.XmlElement elem) {
    return InconsistentQuantities(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The argument is invalid.
class InvalidArgument implements _s.AwsException {
  final String message;

  InvalidArgument({
    this.message,
  });
  factory InvalidArgument.fromXml(_s.XmlElement elem) {
    return InvalidArgument(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The default root object file name is too big or contains an invalid
/// character.
class InvalidDefaultRootObject implements _s.AwsException {
  final String message;

  InvalidDefaultRootObject({
    this.message,
  });
  factory InvalidDefaultRootObject.fromXml(_s.XmlElement elem) {
    return InvalidDefaultRootObject(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidErrorCode implements _s.AwsException {
  final String message;

  InvalidErrorCode({
    this.message,
  });
  factory InvalidErrorCode.fromXml(_s.XmlElement elem) {
    return InvalidErrorCode(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Your request contains forward cookies option which doesn't match with the
/// expectation for the <code>whitelisted</code> list of cookie names. Either
/// list of cookie names has been specified when not allowed or list of cookie
/// names is missing when expected.
class InvalidForwardCookies implements _s.AwsException {
  final String message;

  InvalidForwardCookies({
    this.message,
  });
  factory InvalidForwardCookies.fromXml(_s.XmlElement elem) {
    return InvalidForwardCookies(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidGeoRestrictionParameter implements _s.AwsException {
  final String message;

  InvalidGeoRestrictionParameter({
    this.message,
  });
  factory InvalidGeoRestrictionParameter.fromXml(_s.XmlElement elem) {
    return InvalidGeoRestrictionParameter(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidHeadersForS3Origin implements _s.AwsException {
  final String message;

  InvalidHeadersForS3Origin({
    this.message,
  });
  factory InvalidHeadersForS3Origin.fromXml(_s.XmlElement elem) {
    return InvalidHeadersForS3Origin(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The <code>If-Match</code> version is missing or not valid for the
/// distribution.
class InvalidIfMatchVersion implements _s.AwsException {
  final String message;

  InvalidIfMatchVersion({
    this.message,
  });
  factory InvalidIfMatchVersion.fromXml(_s.XmlElement elem) {
    return InvalidIfMatchVersion(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified Lambda function association is invalid.
class InvalidLambdaFunctionAssociation implements _s.AwsException {
  final String message;

  InvalidLambdaFunctionAssociation({
    this.message,
  });
  factory InvalidLambdaFunctionAssociation.fromXml(_s.XmlElement elem) {
    return InvalidLambdaFunctionAssociation(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidLocationCode implements _s.AwsException {
  final String message;

  InvalidLocationCode({
    this.message,
  });
  factory InvalidLocationCode.fromXml(_s.XmlElement elem) {
    return InvalidLocationCode(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidMinimumProtocolVersion implements _s.AwsException {
  final String message;

  InvalidMinimumProtocolVersion({
    this.message,
  });
  factory InvalidMinimumProtocolVersion.fromXml(_s.XmlElement elem) {
    return InvalidMinimumProtocolVersion(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The Amazon S3 origin server specified does not refer to a valid Amazon S3
/// bucket.
class InvalidOrigin implements _s.AwsException {
  final String message;

  InvalidOrigin({
    this.message,
  });
  factory InvalidOrigin.fromXml(_s.XmlElement elem) {
    return InvalidOrigin(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The origin access identity is not valid or doesn't exist.
class InvalidOriginAccessIdentity implements _s.AwsException {
  final String message;

  InvalidOriginAccessIdentity({
    this.message,
  });
  factory InvalidOriginAccessIdentity.fromXml(_s.XmlElement elem) {
    return InvalidOriginAccessIdentity(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidOriginKeepaliveTimeout implements _s.AwsException {
  final String message;

  InvalidOriginKeepaliveTimeout({
    this.message,
  });
  factory InvalidOriginKeepaliveTimeout.fromXml(_s.XmlElement elem) {
    return InvalidOriginKeepaliveTimeout(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidOriginReadTimeout implements _s.AwsException {
  final String message;

  InvalidOriginReadTimeout({
    this.message,
  });
  factory InvalidOriginReadTimeout.fromXml(_s.XmlElement elem) {
    return InvalidOriginReadTimeout(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// You cannot specify SSLv3 as the minimum protocol version if you only want to
/// support only clients that support Server Name Indication (SNI).
class InvalidProtocolSettings implements _s.AwsException {
  final String message;

  InvalidProtocolSettings({
    this.message,
  });
  factory InvalidProtocolSettings.fromXml(_s.XmlElement elem) {
    return InvalidProtocolSettings(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidQueryStringParameters implements _s.AwsException {
  final String message;

  InvalidQueryStringParameters({
    this.message,
  });
  factory InvalidQueryStringParameters.fromXml(_s.XmlElement elem) {
    return InvalidQueryStringParameters(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The relative path is too big, is not URL-encoded, or does not begin with a
/// slash (/).
class InvalidRelativePath implements _s.AwsException {
  final String message;

  InvalidRelativePath({
    this.message,
  });
  factory InvalidRelativePath.fromXml(_s.XmlElement elem) {
    return InvalidRelativePath(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// This operation requires the HTTPS protocol. Ensure that you specify the
/// HTTPS protocol in your request, or omit the <code>RequiredProtocols</code>
/// element from your distribution configuration.
class InvalidRequiredProtocol implements _s.AwsException {
  final String message;

  InvalidRequiredProtocol({
    this.message,
  });
  factory InvalidRequiredProtocol.fromXml(_s.XmlElement elem) {
    return InvalidRequiredProtocol(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidResponseCode implements _s.AwsException {
  final String message;

  InvalidResponseCode({
    this.message,
  });
  factory InvalidResponseCode.fromXml(_s.XmlElement elem) {
    return InvalidResponseCode(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidTTLOrder implements _s.AwsException {
  final String message;

  InvalidTTLOrder({
    this.message,
  });
  factory InvalidTTLOrder.fromXml(_s.XmlElement elem) {
    return InvalidTTLOrder(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidTagging implements _s.AwsException {
  final String message;

  InvalidTagging({
    this.message,
  });
  factory InvalidTagging.fromXml(_s.XmlElement elem) {
    return InvalidTagging(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidViewerCertificate implements _s.AwsException {
  final String message;

  InvalidViewerCertificate({
    this.message,
  });
  factory InvalidViewerCertificate.fromXml(_s.XmlElement elem) {
    return InvalidViewerCertificate(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class InvalidWebACLId implements _s.AwsException {
  final String message;

  InvalidWebACLId({
    this.message,
  });
  factory InvalidWebACLId.fromXml(_s.XmlElement elem) {
    return InvalidWebACLId(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// An invalidation.
class Invalidation {
  /// The date and time the invalidation request was first made.
  final DateTime createTime;

  /// The identifier for the invalidation request. For example:
  /// <code>IDFDVBD632BHDS5</code>.
  final String id;

  /// The current invalidation information for the batch request.
  final InvalidationBatch invalidationBatch;

  /// The status of the invalidation request. When the invalidation batch is
  /// finished, the status is <code>Completed</code>.
  final String status;

  Invalidation({
    @_s.required this.createTime,
    @_s.required this.id,
    @_s.required this.invalidationBatch,
    @_s.required this.status,
  });
  factory Invalidation.fromXml(_s.XmlElement elem) {
    return Invalidation(
      createTime: _s.extractXmlDateTimeValue(elem, 'CreateTime'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      invalidationBatch: _s
          .extractXmlChild(elem, 'InvalidationBatch')
          ?.let((e) => InvalidationBatch.fromXml(e)),
      status: _s.extractXmlStringValue(elem, 'Status'),
    );
  }
}

/// An invalidation batch.
class InvalidationBatch {
  /// A value that you specify to uniquely identify an invalidation request.
  /// CloudFront uses the value to prevent you from accidentally resubmitting an
  /// identical request. Whenever you create a new invalidation request, you must
  /// specify a new value for <code>CallerReference</code> and change other values
  /// in the request as applicable. One way to ensure that the value of
  /// <code>CallerReference</code> is unique is to use a <code>timestamp</code>,
  /// for example, <code>20120301090000</code>.
  ///
  /// If you make a second invalidation request with the same value for
  /// <code>CallerReference</code>, and if the rest of the request is the same,
  /// CloudFront doesn't create a new invalidation request. Instead, CloudFront
  /// returns information about the invalidation request that you previously
  /// created with the same <code>CallerReference</code>.
  ///
  /// If <code>CallerReference</code> is a value you already sent in a previous
  /// invalidation batch request but the content of any <code>Path</code> is
  /// different from the original request, CloudFront returns an
  /// <code>InvalidationBatchAlreadyExists</code> error.
  final String callerReference;

  /// A complex type that contains information about the objects that you want to
  /// invalidate. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying
  /// the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  final Paths paths;

  InvalidationBatch({
    @_s.required this.callerReference,
    @_s.required this.paths,
  });
  factory InvalidationBatch.fromXml(_s.XmlElement elem) {
    return InvalidationBatch(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      paths: _s.extractXmlChild(elem, 'Paths')?.let((e) => Paths.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      paths?.toXml('Paths'),
      _s.encodeXmlStringValue('CallerReference', callerReference),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The <code>InvalidationList</code> complex type describes the list of
/// invalidation objects. For more information about invalidation, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating
/// Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer
/// Guide</i>.
class InvalidationList {
  /// A flag that indicates whether more invalidation batch requests remain to be
  /// listed. If your results were truncated, you can make a follow-up pagination
  /// request using the <code>Marker</code> request parameter to retrieve more
  /// invalidation batches in the list.
  final bool isTruncated;

  /// The value that you provided for the <code>Marker</code> request parameter.
  final String marker;

  /// The value that you provided for the <code>MaxItems</code> request parameter.
  final int maxItems;

  /// The number of invalidation batches that were created by the current AWS
  /// account.
  final int quantity;

  /// A complex type that contains one <code>InvalidationSummary</code> element
  /// for each invalidation batch created by the current AWS account.
  final List<InvalidationSummary> items;

  /// If <code>IsTruncated</code> is <code>true</code>, this element is present
  /// and contains the value that you can use for the <code>Marker</code> request
  /// parameter to continue listing your invalidation batches where they left off.
  final String nextMarker;

  InvalidationList({
    @_s.required this.isTruncated,
    @_s.required this.marker,
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory InvalidationList.fromXml(_s.XmlElement elem) {
    return InvalidationList(
      isTruncated: _s.extractXmlBoolValue(elem, 'IsTruncated'),
      marker: _s.extractXmlStringValue(elem, 'Marker'),
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('InvalidationSummary')
          .map((c) => InvalidationSummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

/// A summary of an invalidation request.
class InvalidationSummary {
  final DateTime createTime;

  /// The unique ID for an invalidation request.
  final String id;

  /// The status of an invalidation request.
  final String status;

  InvalidationSummary({
    @_s.required this.createTime,
    @_s.required this.id,
    @_s.required this.status,
  });
  factory InvalidationSummary.fromXml(_s.XmlElement elem) {
    return InvalidationSummary(
      createTime: _s.extractXmlDateTimeValue(elem, 'CreateTime'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      status: _s.extractXmlStringValue(elem, 'Status'),
    );
  }
}

enum ItemSelection {
  none,
  whitelist,
  all,
}

extension on ItemSelection {
  String toValue() {
    switch (this) {
      case ItemSelection.none:
        return 'none';
      case ItemSelection.whitelist:
        return 'whitelist';
      case ItemSelection.all:
        return 'all';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  ItemSelection toItemSelection() {
    switch (this) {
      case 'none':
        return ItemSelection.none;
      case 'whitelist':
        return ItemSelection.whitelist;
      case 'all':
        return ItemSelection.all;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A complex type that lists the active CloudFront key pairs, if any, that are
/// associated with <code>AwsAccountNumber</code>.
///
/// For more information, see <a>ActiveTrustedSigners</a>.
class KeyPairIds {
  /// The number of active CloudFront key pairs for <code>AwsAccountNumber</code>.
  ///
  /// For more information, see <a>ActiveTrustedSigners</a>.
  final int quantity;

  /// A complex type that lists the active CloudFront key pairs, if any, that are
  /// associated with <code>AwsAccountNumber</code>.
  ///
  /// For more information, see <a>ActiveTrustedSigners</a>.
  final List<String> items;

  KeyPairIds({
    @_s.required this.quantity,
    this.items,
  });
  factory KeyPairIds.fromXml(_s.XmlElement elem) {
    return KeyPairIds(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'KeyPairId')),
    );
  }
}

/// A complex type that contains a Lambda function association.
class LambdaFunctionAssociation {
  /// Specifies the event type that triggers a Lambda function invocation. You can
  /// specify the following values:
  ///
  /// <ul>
  /// <li>
  /// <code>viewer-request</code>: The function executes when CloudFront receives
  /// a request from a viewer and before it checks to see whether the requested
  /// object is in the edge cache.
  /// </li>
  /// <li>
  /// <code>origin-request</code>: The function executes only when CloudFront
  /// forwards a request to your origin. When the requested object is in the edge
  /// cache, the function doesn't execute.
  /// </li>
  /// <li>
  /// <code>origin-response</code>: The function executes after CloudFront
  /// receives a response from the origin and before it caches the object in the
  /// response. When the requested object is in the edge cache, the function
  /// doesn't execute.
  ///
  /// If the origin returns an HTTP status code other than HTTP 200 (OK), the
  /// function doesn't execute.
  /// </li>
  /// <li>
  /// <code>viewer-response</code>: The function executes before CloudFront
  /// returns the requested object to the viewer. The function executes regardless
  /// of whether the object was already in the edge cache.
  ///
  /// If the origin returns an HTTP status code other than HTTP 200 (OK), the
  /// function doesn't execute.
  /// </li>
  /// </ul>
  final EventType eventType;

  /// The ARN of the Lambda function. You must specify the ARN of a function
  /// version; you can't specify a Lambda alias or $LATEST.
  final String lambdaFunctionARN;

  LambdaFunctionAssociation({
    @_s.required this.eventType,
    @_s.required this.lambdaFunctionARN,
  });
  factory LambdaFunctionAssociation.fromXml(_s.XmlElement elem) {
    return LambdaFunctionAssociation(
      eventType: _s.extractXmlStringValue(elem, 'EventType')?.toEventType(),
      lambdaFunctionARN: _s.extractXmlStringValue(elem, 'LambdaFunctionARN'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('LambdaFunctionARN', lambdaFunctionARN),
      _s.encodeXmlStringValue('EventType', eventType?.toValue()),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that specifies a list of Lambda functions associations for a
/// cache behavior.
///
/// If you want to invoke one or more Lambda functions triggered by requests
/// that match the <code>PathPattern</code> of the cache behavior, specify the
/// applicable values for <code>Quantity</code> and <code>Items</code>. Note
/// that there can be up to 4 <code>LambdaFunctionAssociation</code> items in
/// this list (one for each possible value of <code>EventType</code>) and each
/// <code>EventType</code> can be associated with the Lambda function only once.
///
/// If you don't want to invoke any Lambda functions for the requests that match
/// <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code>
/// and omit <code>Items</code>.
class LambdaFunctionAssociations {
  /// The number of Lambda function associations for this cache behavior.
  final int quantity;

  /// <b>Optional</b>: A complex type that contains
  /// <code>LambdaFunctionAssociation</code> items for this cache behavior. If
  /// <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.
  final List<LambdaFunctionAssociation> items;

  LambdaFunctionAssociations({
    @_s.required this.quantity,
    this.items,
  });
  factory LambdaFunctionAssociations.fromXml(_s.XmlElement elem) {
    return LambdaFunctionAssociations(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('LambdaFunctionAssociation')
          .map((c) => LambdaFunctionAssociation.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The returned result of the corresponding request.
class ListCloudFrontOriginAccessIdentitiesResult {
  /// The <code>CloudFrontOriginAccessIdentityList</code> type.
  final CloudFrontOriginAccessIdentityList cloudFrontOriginAccessIdentityList;

  ListCloudFrontOriginAccessIdentitiesResult({
    this.cloudFrontOriginAccessIdentityList,
  });
  factory ListCloudFrontOriginAccessIdentitiesResult.fromXml(
      _s.XmlElement elem) {
    return ListCloudFrontOriginAccessIdentitiesResult(
      cloudFrontOriginAccessIdentityList:
          elem?.let((e) => CloudFrontOriginAccessIdentityList.fromXml(e)),
    );
  }
}

/// The response to a request to list the distributions that are associated with
/// a specified AWS WAF web ACL.
class ListDistributionsByWebACLIdResult {
  /// The <code>DistributionList</code> type.
  final DistributionList distributionList;

  ListDistributionsByWebACLIdResult({
    this.distributionList,
  });
  factory ListDistributionsByWebACLIdResult.fromXml(_s.XmlElement elem) {
    return ListDistributionsByWebACLIdResult(
      distributionList: elem?.let((e) => DistributionList.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class ListDistributionsResult {
  /// The <code>DistributionList</code> type.
  final DistributionList distributionList;

  ListDistributionsResult({
    this.distributionList,
  });
  factory ListDistributionsResult.fromXml(_s.XmlElement elem) {
    return ListDistributionsResult(
      distributionList: elem?.let((e) => DistributionList.fromXml(e)),
    );
  }
}

class ListFieldLevelEncryptionConfigsResult {
  /// Returns a list of all field-level encryption configurations that have been
  /// created in CloudFront for this account.
  final FieldLevelEncryptionList fieldLevelEncryptionList;

  ListFieldLevelEncryptionConfigsResult({
    this.fieldLevelEncryptionList,
  });
  factory ListFieldLevelEncryptionConfigsResult.fromXml(_s.XmlElement elem) {
    return ListFieldLevelEncryptionConfigsResult(
      fieldLevelEncryptionList:
          elem?.let((e) => FieldLevelEncryptionList.fromXml(e)),
    );
  }
}

class ListFieldLevelEncryptionProfilesResult {
  /// Returns a list of the field-level encryption profiles that have been created
  /// in CloudFront for this account.
  final FieldLevelEncryptionProfileList fieldLevelEncryptionProfileList;

  ListFieldLevelEncryptionProfilesResult({
    this.fieldLevelEncryptionProfileList,
  });
  factory ListFieldLevelEncryptionProfilesResult.fromXml(_s.XmlElement elem) {
    return ListFieldLevelEncryptionProfilesResult(
      fieldLevelEncryptionProfileList:
          elem?.let((e) => FieldLevelEncryptionProfileList.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class ListInvalidationsResult {
  /// Information about invalidation batches.
  final InvalidationList invalidationList;

  ListInvalidationsResult({
    this.invalidationList,
  });
  factory ListInvalidationsResult.fromXml(_s.XmlElement elem) {
    return ListInvalidationsResult(
      invalidationList: elem?.let((e) => InvalidationList.fromXml(e)),
    );
  }
}

class ListPublicKeysResult {
  /// Returns a list of all public keys that have been added to CloudFront for
  /// this account.
  final PublicKeyList publicKeyList;

  ListPublicKeysResult({
    this.publicKeyList,
  });
  factory ListPublicKeysResult.fromXml(_s.XmlElement elem) {
    return ListPublicKeysResult(
      publicKeyList: elem?.let((e) => PublicKeyList.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class ListStreamingDistributionsResult {
  /// The <code>StreamingDistributionList</code> type.
  final StreamingDistributionList streamingDistributionList;

  ListStreamingDistributionsResult({
    this.streamingDistributionList,
  });
  factory ListStreamingDistributionsResult.fromXml(_s.XmlElement elem) {
    return ListStreamingDistributionsResult(
      streamingDistributionList:
          elem?.let((e) => StreamingDistributionList.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class ListTagsForResourceResult {
  /// A complex type that contains zero or more <code>Tag</code> elements.
  final Tags tags;

  ListTagsForResourceResult({
    @_s.required this.tags,
  });
  factory ListTagsForResourceResult.fromXml(_s.XmlElement elem) {
    return ListTagsForResourceResult(
      tags: elem?.let((e) => Tags.fromXml(e)),
    );
  }
}

/// A complex type that controls whether access logs are written for the
/// distribution.
class LoggingConfig {
  /// The Amazon S3 bucket to store the access logs in, for example,
  /// <code>myawslogbucket.s3.amazonaws.com</code>.
  final String bucket;

  /// Specifies whether you want CloudFront to save access logs to an Amazon S3
  /// bucket. If you don't want to enable logging when you create a distribution
  /// or if you want to disable logging for an existing distribution, specify
  /// <code>false</code> for <code>Enabled</code>, and specify empty
  /// <code>Bucket</code> and <code>Prefix</code> elements. If you specify
  /// <code>false</code> for <code>Enabled</code> but you specify values for
  /// <code>Bucket</code>, <code>prefix</code>, and <code>IncludeCookies</code>,
  /// the values are automatically deleted.
  final bool enabled;

  /// Specifies whether you want CloudFront to include cookies in access logs,
  /// specify <code>true</code> for <code>IncludeCookies</code>. If you choose to
  /// include cookies in logs, CloudFront logs all cookies regardless of how you
  /// configure the cache behaviors for this distribution. If you don't want to
  /// include cookies when you create a distribution or if you want to disable
  /// include cookies for an existing distribution, specify <code>false</code> for
  /// <code>IncludeCookies</code>.
  final bool includeCookies;

  /// An optional string that you want CloudFront to prefix to the access log
  /// <code>filenames</code> for this distribution, for example,
  /// <code>myprefix/</code>. If you want to enable logging, but you don't want to
  /// specify a prefix, you still must include an empty <code>Prefix</code>
  /// element in the <code>Logging</code> element.
  final String prefix;

  LoggingConfig({
    @_s.required this.bucket,
    @_s.required this.enabled,
    @_s.required this.includeCookies,
    @_s.required this.prefix,
  });
  factory LoggingConfig.fromXml(_s.XmlElement elem) {
    return LoggingConfig(
      bucket: _s.extractXmlStringValue(elem, 'Bucket'),
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      includeCookies: _s.extractXmlBoolValue(elem, 'IncludeCookies'),
      prefix: _s.extractXmlStringValue(elem, 'Prefix'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue('Enabled', enabled),
      _s.encodeXmlBoolValue('IncludeCookies', includeCookies),
      _s.encodeXmlStringValue('Bucket', bucket),
      _s.encodeXmlStringValue('Prefix', prefix),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum Method {
  get,
  head,
  post,
  put,
  patch,
  options,
  delete,
}

extension on Method {
  String toValue() {
    switch (this) {
      case Method.get:
        return 'GET';
      case Method.head:
        return 'HEAD';
      case Method.post:
        return 'POST';
      case Method.put:
        return 'PUT';
      case Method.patch:
        return 'PATCH';
      case Method.options:
        return 'OPTIONS';
      case Method.delete:
        return 'DELETE';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  Method toMethod() {
    switch (this) {
      case 'GET':
        return Method.get;
      case 'HEAD':
        return Method.head;
      case 'POST':
        return Method.post;
      case 'PUT':
        return Method.put;
      case 'PATCH':
        return Method.patch;
      case 'OPTIONS':
        return Method.options;
      case 'DELETE':
        return Method.delete;
    }
    throw Exception('Unknown enum value: $this');
  }
}

enum MinimumProtocolVersion {
  sSLv3,
  tLSv1,
  tLSv1_2016,
  tLSv1_1_2016,
  tLSv1_2_2018,
}

extension on MinimumProtocolVersion {
  String toValue() {
    switch (this) {
      case MinimumProtocolVersion.sSLv3:
        return 'SSLv3';
      case MinimumProtocolVersion.tLSv1:
        return 'TLSv1';
      case MinimumProtocolVersion.tLSv1_2016:
        return 'TLSv1_2016';
      case MinimumProtocolVersion.tLSv1_1_2016:
        return 'TLSv1.1_2016';
      case MinimumProtocolVersion.tLSv1_2_2018:
        return 'TLSv1.2_2018';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  MinimumProtocolVersion toMinimumProtocolVersion() {
    switch (this) {
      case 'SSLv3':
        return MinimumProtocolVersion.sSLv3;
      case 'TLSv1':
        return MinimumProtocolVersion.tLSv1;
      case 'TLSv1_2016':
        return MinimumProtocolVersion.tLSv1_2016;
      case 'TLSv1.1_2016':
        return MinimumProtocolVersion.tLSv1_1_2016;
      case 'TLSv1.2_2018':
        return MinimumProtocolVersion.tLSv1_2_2018;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// This operation requires a body. Ensure that the body is present and the
/// <code>Content-Type</code> header is set.
class MissingBody implements _s.AwsException {
  final String message;

  MissingBody({
    this.message,
  });
  factory MissingBody.fromXml(_s.XmlElement elem) {
    return MissingBody(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified origin access identity does not exist.
class NoSuchCloudFrontOriginAccessIdentity implements _s.AwsException {
  final String message;

  NoSuchCloudFrontOriginAccessIdentity({
    this.message,
  });
  factory NoSuchCloudFrontOriginAccessIdentity.fromXml(_s.XmlElement elem) {
    return NoSuchCloudFrontOriginAccessIdentity(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified distribution does not exist.
class NoSuchDistribution implements _s.AwsException {
  final String message;

  NoSuchDistribution({
    this.message,
  });
  factory NoSuchDistribution.fromXml(_s.XmlElement elem) {
    return NoSuchDistribution(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified configuration for field-level encryption doesn't exist.
class NoSuchFieldLevelEncryptionConfig implements _s.AwsException {
  final String message;

  NoSuchFieldLevelEncryptionConfig({
    this.message,
  });
  factory NoSuchFieldLevelEncryptionConfig.fromXml(_s.XmlElement elem) {
    return NoSuchFieldLevelEncryptionConfig(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified profile for field-level encryption doesn't exist.
class NoSuchFieldLevelEncryptionProfile implements _s.AwsException {
  final String message;

  NoSuchFieldLevelEncryptionProfile({
    this.message,
  });
  factory NoSuchFieldLevelEncryptionProfile.fromXml(_s.XmlElement elem) {
    return NoSuchFieldLevelEncryptionProfile(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified invalidation does not exist.
class NoSuchInvalidation implements _s.AwsException {
  final String message;

  NoSuchInvalidation({
    this.message,
  });
  factory NoSuchInvalidation.fromXml(_s.XmlElement elem) {
    return NoSuchInvalidation(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// No origin exists with the specified <code>Origin Id</code>.
class NoSuchOrigin implements _s.AwsException {
  final String message;

  NoSuchOrigin({
    this.message,
  });
  factory NoSuchOrigin.fromXml(_s.XmlElement elem) {
    return NoSuchOrigin(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified public key doesn't exist.
class NoSuchPublicKey implements _s.AwsException {
  final String message;

  NoSuchPublicKey({
    this.message,
  });
  factory NoSuchPublicKey.fromXml(_s.XmlElement elem) {
    return NoSuchPublicKey(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class NoSuchResource implements _s.AwsException {
  final String message;

  NoSuchResource({
    this.message,
  });
  factory NoSuchResource.fromXml(_s.XmlElement elem) {
    return NoSuchResource(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The specified streaming distribution does not exist.
class NoSuchStreamingDistribution implements _s.AwsException {
  final String message;

  NoSuchStreamingDistribution({
    this.message,
  });
  factory NoSuchStreamingDistribution.fromXml(_s.XmlElement elem) {
    return NoSuchStreamingDistribution(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A complex type that describes the Amazon S3 bucket or the HTTP server (for
/// example, a web server) from which CloudFront gets your files. You must
/// create at least one origin.
///
/// For the current limit on the number of origins that you can create for a
/// distribution, see <a
/// href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon
/// CloudFront Limits</a> in the <i>AWS General Reference</i>.
class Origin {
  /// <b>Amazon S3 origins</b>: The DNS name of the Amazon S3 bucket from which
  /// you want CloudFront to get objects for this origin, for example,
  /// <code>myawsbucket.s3.amazonaws.com</code>.
  ///
  /// Constraints for Amazon S3 origins:
  ///
  /// <ul>
  /// <li>
  /// If you configured Amazon S3 Transfer Acceleration for your bucket, don't
  /// specify the <code>s3-accelerate</code> endpoint for <code>DomainName</code>.
  /// </li>
  /// <li>
  /// The bucket name must be between 3 and 63 characters long (inclusive).
  /// </li>
  /// <li>
  /// The bucket name must contain only lowercase characters, numbers, periods,
  /// underscores, and dashes.
  /// </li>
  /// <li>
  /// The bucket name must not contain adjacent periods.
  /// </li>
  /// </ul>
  /// <b>Custom Origins</b>: The DNS domain name for the HTTP server from which
  /// you want CloudFront to get objects for this origin, for example,
  /// <code>www.example.com</code>.
  ///
  /// Constraints for custom origins:
  ///
  /// <ul>
  /// <li>
  /// <code>DomainName</code> must be a valid DNS name that contains only a-z,
  /// A-Z, 0-9, dot (.), hyphen (-), or underscore (_) characters.
  /// </li>
  /// <li>
  /// The name cannot exceed 128 characters.
  /// </li>
  /// </ul>
  final String domainName;

  /// A unique identifier for the origin. The value of <code>Id</code> must be
  /// unique within the distribution.
  ///
  /// When you specify the value of <code>TargetOriginId</code> for the default
  /// cache behavior or for another cache behavior, you indicate the origin to
  /// which you want the cache behavior to route requests by specifying the value
  /// of the <code>Id</code> element for that origin. When a request matches the
  /// path pattern for that cache behavior, CloudFront routes the request to the
  /// specified origin. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache
  /// Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final String id;

  /// A complex type that contains names and values for the custom headers that
  /// you want.
  final CustomHeaders customHeaders;

  /// A complex type that contains information about a custom origin. If the
  /// origin is an Amazon S3 bucket, use the <code>S3OriginConfig</code> element
  /// instead.
  final CustomOriginConfig customOriginConfig;

  /// An optional element that causes CloudFront to request your content from a
  /// directory in your Amazon S3 bucket or your custom origin. When you include
  /// the <code>OriginPath</code> element, specify the directory name, beginning
  /// with a <code>/</code>. CloudFront appends the directory name to the value of
  /// <code>DomainName</code>, for example, <code>example.com/production</code>.
  /// Do not include a <code>/</code> at the end of the directory name.
  ///
  /// For example, suppose you've specified the following values for your
  /// distribution:
  ///
  /// <ul>
  /// <li>
  /// <code>DomainName</code>: An Amazon S3 bucket named <code>myawsbucket</code>.
  /// </li>
  /// <li>
  /// <code>OriginPath</code>: <code>/production</code>
  /// </li>
  /// <li>
  /// <code>CNAME</code>: <code>example.com</code>
  /// </li>
  /// </ul>
  /// When a user enters <code>example.com/index.html</code> in a browser,
  /// CloudFront sends a request to Amazon S3 for
  /// <code>myawsbucket/production/index.html</code>.
  ///
  /// When a user enters <code>example.com/acme/index.html</code> in a browser,
  /// CloudFront sends a request to Amazon S3 for
  /// <code>myawsbucket/production/acme/index.html</code>.
  final String originPath;

  /// A complex type that contains information about the Amazon S3 origin. If the
  /// origin is a custom origin, use the <code>CustomOriginConfig</code> element
  /// instead.
  final S3OriginConfig s3OriginConfig;

  Origin({
    @_s.required this.domainName,
    @_s.required this.id,
    this.customHeaders,
    this.customOriginConfig,
    this.originPath,
    this.s3OriginConfig,
  });
  factory Origin.fromXml(_s.XmlElement elem) {
    return Origin(
      domainName: _s.extractXmlStringValue(elem, 'DomainName'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      customHeaders: _s
          .extractXmlChild(elem, 'CustomHeaders')
          ?.let((e) => CustomHeaders.fromXml(e)),
      customOriginConfig: _s
          .extractXmlChild(elem, 'CustomOriginConfig')
          ?.let((e) => CustomOriginConfig.fromXml(e)),
      originPath: _s.extractXmlStringValue(elem, 'OriginPath'),
      s3OriginConfig: _s
          .extractXmlChild(elem, 'S3OriginConfig')
          ?.let((e) => S3OriginConfig.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('Id', id),
      _s.encodeXmlStringValue('DomainName', domainName),
      _s.encodeXmlStringValue('OriginPath', originPath),
      customHeaders?.toXml('CustomHeaders'),
      s3OriginConfig?.toXml('S3OriginConfig'),
      customOriginConfig?.toXml('CustomOriginConfig'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains <code>HeaderName</code> and
/// <code>HeaderValue</code> elements, if any, for this distribution.
class OriginCustomHeader {
  /// The name of a header that you want CloudFront to forward to your origin. For
  /// more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html">Forwarding
  /// Custom Headers to Your Origin (Web Distributions Only)</a> in the <i>Amazon
  /// Amazon CloudFront Developer Guide</i>.
  final String headerName;

  /// The value for the header that you specified in the <code>HeaderName</code>
  /// field.
  final String headerValue;

  OriginCustomHeader({
    @_s.required this.headerName,
    @_s.required this.headerValue,
  });
  factory OriginCustomHeader.fromXml(_s.XmlElement elem) {
    return OriginCustomHeader(
      headerName: _s.extractXmlStringValue(elem, 'HeaderName'),
      headerValue: _s.extractXmlStringValue(elem, 'HeaderValue'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('HeaderName', headerName),
      _s.encodeXmlStringValue('HeaderValue', headerValue),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum OriginProtocolPolicy {
  httpOnly,
  matchViewer,
  httpsOnly,
}

extension on OriginProtocolPolicy {
  String toValue() {
    switch (this) {
      case OriginProtocolPolicy.httpOnly:
        return 'http-only';
      case OriginProtocolPolicy.matchViewer:
        return 'match-viewer';
      case OriginProtocolPolicy.httpsOnly:
        return 'https-only';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  OriginProtocolPolicy toOriginProtocolPolicy() {
    switch (this) {
      case 'http-only':
        return OriginProtocolPolicy.httpOnly;
      case 'match-viewer':
        return OriginProtocolPolicy.matchViewer;
      case 'https-only':
        return OriginProtocolPolicy.httpsOnly;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A complex type that contains information about the SSL/TLS protocols that
/// CloudFront can use when establishing an HTTPS connection with your origin.
class OriginSslProtocols {
  /// A list that contains allowed SSL/TLS protocols for this distribution.
  final List<String> items;

  /// The number of SSL/TLS protocols that you want to allow CloudFront to use
  /// when establishing an HTTPS connection with this origin.
  final int quantity;

  OriginSslProtocols({
    @_s.required this.items,
    @_s.required this.quantity,
  });
  factory OriginSslProtocols.fromXml(_s.XmlElement elem) {
    return OriginSslProtocols(
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'SslProtocol')),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('SslProtocol', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains information about origins for this
/// distribution.
class Origins {
  /// The number of origins for this distribution.
  final int quantity;

  /// A complex type that contains origins for this distribution.
  final List<Origin> items;

  Origins({
    @_s.required this.quantity,
    this.items,
  });
  factory Origins.fromXml(_s.XmlElement elem) {
    return Origins(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) =>
          elem.findElements('Origin').map((c) => Origin.fromXml(c)).toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains information about the objects that you want to
/// invalidate. For more information, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying
/// the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer
/// Guide</i>.
class Paths {
  /// The number of objects that you want to invalidate.
  final int quantity;

  /// A complex type that contains a list of the paths that you want to
  /// invalidate.
  final List<String> items;

  Paths({
    @_s.required this.quantity,
    this.items,
  });
  factory Paths.fromXml(_s.XmlElement elem) {
    return Paths(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Path')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Path', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The precondition given in one or more of the request-header fields evaluated
/// to <code>false</code>.
class PreconditionFailed implements _s.AwsException {
  final String message;

  PreconditionFailed({
    this.message,
  });
  factory PreconditionFailed.fromXml(_s.XmlElement elem) {
    return PreconditionFailed(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

enum PriceClass {
  priceClass_100,
  priceClass_200,
  priceClassAll,
}

extension on PriceClass {
  String toValue() {
    switch (this) {
      case PriceClass.priceClass_100:
        return 'PriceClass_100';
      case PriceClass.priceClass_200:
        return 'PriceClass_200';
      case PriceClass.priceClassAll:
        return 'PriceClass_All';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  PriceClass toPriceClass() {
    switch (this) {
      case 'PriceClass_100':
        return PriceClass.priceClass_100;
      case 'PriceClass_200':
        return PriceClass.priceClass_200;
      case 'PriceClass_All':
        return PriceClass.priceClassAll;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A complex data type of public keys you add to CloudFront to use with
/// features like field-level encryption.
class PublicKey {
  /// A time you added a public key to CloudFront.
  final DateTime createdTime;

  /// A unique ID assigned to a public key you've added to CloudFront.
  final String id;

  /// A complex data type for a public key you add to CloudFront to use with
  /// features like field-level encryption.
  final PublicKeyConfig publicKeyConfig;

  PublicKey({
    @_s.required this.createdTime,
    @_s.required this.id,
    @_s.required this.publicKeyConfig,
  });
  factory PublicKey.fromXml(_s.XmlElement elem) {
    return PublicKey(
      createdTime: _s.extractXmlDateTimeValue(elem, 'CreatedTime'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      publicKeyConfig: _s
          .extractXmlChild(elem, 'PublicKeyConfig')
          ?.let((e) => PublicKeyConfig.fromXml(e)),
    );
  }
}

/// The specified public key already exists.
class PublicKeyAlreadyExists implements _s.AwsException {
  final String message;

  PublicKeyAlreadyExists({
    this.message,
  });
  factory PublicKeyAlreadyExists.fromXml(_s.XmlElement elem) {
    return PublicKeyAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Information about a public key you add to CloudFront to use with features
/// like field-level encryption.
class PublicKeyConfig {
  /// A unique number that ensures the request can't be replayed.
  final String callerReference;

  /// The encoded public key that you want to add to CloudFront to use with
  /// features like field-level encryption.
  final String encodedKey;

  /// The name for a public key you add to CloudFront to use with features like
  /// field-level encryption.
  final String name;

  /// An optional comment about a public key.
  final String comment;

  PublicKeyConfig({
    @_s.required this.callerReference,
    @_s.required this.encodedKey,
    @_s.required this.name,
    this.comment,
  });
  factory PublicKeyConfig.fromXml(_s.XmlElement elem) {
    return PublicKeyConfig(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      encodedKey: _s.extractXmlStringValue(elem, 'EncodedKey'),
      name: _s.extractXmlStringValue(elem, 'Name'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('CallerReference', callerReference),
      _s.encodeXmlStringValue('Name', name),
      _s.encodeXmlStringValue('EncodedKey', encodedKey),
      _s.encodeXmlStringValue('Comment', comment),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The specified public key is in use.
class PublicKeyInUse implements _s.AwsException {
  final String message;

  PublicKeyInUse({
    this.message,
  });
  factory PublicKeyInUse.fromXml(_s.XmlElement elem) {
    return PublicKeyInUse(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A list of public keys you've added to CloudFront to use with features like
/// field-level encryption.
class PublicKeyList {
  /// The maximum number of public keys you want in the response body.
  final int maxItems;

  /// The number of public keys you added to CloudFront to use with features like
  /// field-level encryption.
  final int quantity;

  /// An array of information about a public key you add to CloudFront to use with
  /// features like field-level encryption.
  final List<PublicKeySummary> items;

  /// If there are more elements to be listed, this element is present and
  /// contains the value that you can use for the <code>Marker</code> request
  /// parameter to continue listing your public keys where you left off.
  final String nextMarker;

  PublicKeyList({
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory PublicKeyList.fromXml(_s.XmlElement elem) {
    return PublicKeyList(
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('PublicKeySummary')
          .map((c) => PublicKeySummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

/// Public key information summary.
class PublicKeySummary {
  /// Creation time for public key information summary.
  final DateTime createdTime;

  /// Encoded key for public key information summary.
  final String encodedKey;

  /// ID for public key information summary.
  final String id;

  /// Name for public key information summary.
  final String name;

  /// Comment for public key information summary.
  final String comment;

  PublicKeySummary({
    @_s.required this.createdTime,
    @_s.required this.encodedKey,
    @_s.required this.id,
    @_s.required this.name,
    this.comment,
  });
  factory PublicKeySummary.fromXml(_s.XmlElement elem) {
    return PublicKeySummary(
      createdTime: _s.extractXmlDateTimeValue(elem, 'CreatedTime'),
      encodedKey: _s.extractXmlStringValue(elem, 'EncodedKey'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      name: _s.extractXmlStringValue(elem, 'Name'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
    );
  }
}

/// Query argument-profile mapping for field-level encryption.
class QueryArgProfile {
  /// ID of profile to use for field-level encryption query argument-profile
  /// mapping
  final String profileId;

  /// Query argument for field-level encryption query argument-profile mapping.
  final String queryArg;

  QueryArgProfile({
    @_s.required this.profileId,
    @_s.required this.queryArg,
  });
  factory QueryArgProfile.fromXml(_s.XmlElement elem) {
    return QueryArgProfile(
      profileId: _s.extractXmlStringValue(elem, 'ProfileId'),
      queryArg: _s.extractXmlStringValue(elem, 'QueryArg'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('QueryArg', queryArg),
      _s.encodeXmlStringValue('ProfileId', profileId),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// Configuration for query argument-profile mapping for field-level encryption.
class QueryArgProfileConfig {
  /// Flag to set if you want a request to be forwarded to the origin even if the
  /// profile specified by the field-level encryption query argument, fle-profile,
  /// is unknown.
  final bool forwardWhenQueryArgProfileIsUnknown;

  /// Profiles specified for query argument-profile mapping for field-level
  /// encryption.
  final QueryArgProfiles queryArgProfiles;

  QueryArgProfileConfig({
    @_s.required this.forwardWhenQueryArgProfileIsUnknown,
    this.queryArgProfiles,
  });
  factory QueryArgProfileConfig.fromXml(_s.XmlElement elem) {
    return QueryArgProfileConfig(
      forwardWhenQueryArgProfileIsUnknown:
          _s.extractXmlBoolValue(elem, 'ForwardWhenQueryArgProfileIsUnknown'),
      queryArgProfiles: _s
          .extractXmlChild(elem, 'QueryArgProfiles')
          ?.let((e) => QueryArgProfiles.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue('ForwardWhenQueryArgProfileIsUnknown',
          forwardWhenQueryArgProfileIsUnknown),
      queryArgProfiles?.toXml('QueryArgProfiles'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// No profile specified for the field-level encryption query argument.
class QueryArgProfileEmpty implements _s.AwsException {
  final String message;

  QueryArgProfileEmpty({
    this.message,
  });
  factory QueryArgProfileEmpty.fromXml(_s.XmlElement elem) {
    return QueryArgProfileEmpty(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Query argument-profile mapping for field-level encryption.
class QueryArgProfiles {
  /// Number of profiles for query argument-profile mapping for field-level
  /// encryption.
  final int quantity;

  /// Number of items for query argument-profile mapping for field-level
  /// encryption.
  final List<QueryArgProfile> items;

  QueryArgProfiles({
    @_s.required this.quantity,
    this.items,
  });
  factory QueryArgProfiles.fromXml(_s.XmlElement elem) {
    return QueryArgProfiles(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('QueryArgProfile')
          .map((c) => QueryArgProfile.fromXml(c))
          .toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

class QueryStringCacheKeys {
  /// The number of <code>whitelisted</code> query string parameters for this
  /// cache behavior.
  final int quantity;

  /// (Optional) A list that contains the query string parameters that you want
  /// CloudFront to use as a basis for caching for this cache behavior. If
  /// <code>Quantity</code> is 0, you can omit <code>Items</code>.
  final List<String> items;

  QueryStringCacheKeys({
    @_s.required this.quantity,
    this.items,
  });
  factory QueryStringCacheKeys.fromXml(_s.XmlElement elem) {
    return QueryStringCacheKeys(
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s
          .extractXmlChild(elem, 'Items')
          ?.let((elem) => _s.extractXmlStringListValues(elem, 'Name')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Name', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that identifies ways in which you want to restrict
/// distribution of your content.
class Restrictions {
  final GeoRestriction geoRestriction;

  Restrictions({
    @_s.required this.geoRestriction,
  });
  factory Restrictions.fromXml(_s.XmlElement elem) {
    return Restrictions(
      geoRestriction: _s
          .extractXmlChild(elem, 'GeoRestriction')
          ?.let((e) => GeoRestriction.fromXml(e)),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      geoRestriction?.toXml('GeoRestriction'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains information about the Amazon S3 bucket from
/// which you want CloudFront to get your media files for distribution.
class S3Origin {
  /// The DNS name of the Amazon S3 origin.
  final String domainName;

  /// The CloudFront origin access identity to associate with the RTMP
  /// distribution. Use an origin access identity to configure the distribution so
  /// that end users can only access objects in an Amazon S3 bucket through
  /// CloudFront.
  ///
  /// If you want end users to be able to access objects using either the
  /// CloudFront URL or the Amazon S3 URL, specify an empty
  /// <code>OriginAccessIdentity</code> element.
  ///
  /// To delete the origin access identity from an existing distribution, update
  /// the distribution configuration and include an empty
  /// <code>OriginAccessIdentity</code> element.
  ///
  /// To replace the origin access identity, update the distribution configuration
  /// and specify the new origin access identity.
  ///
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">Using
  /// an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a>
  /// in the <i>Amazon Amazon CloudFront Developer Guide</i>.
  final String originAccessIdentity;

  S3Origin({
    @_s.required this.domainName,
    @_s.required this.originAccessIdentity,
  });
  factory S3Origin.fromXml(_s.XmlElement elem) {
    return S3Origin(
      domainName: _s.extractXmlStringValue(elem, 'DomainName'),
      originAccessIdentity:
          _s.extractXmlStringValue(elem, 'OriginAccessIdentity'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('DomainName', domainName),
      _s.encodeXmlStringValue('OriginAccessIdentity', originAccessIdentity),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains information about the Amazon S3 origin. If the
/// origin is a custom origin, use the <code>CustomOriginConfig</code> element
/// instead.
class S3OriginConfig {
  /// The CloudFront origin access identity to associate with the origin. Use an
  /// origin access identity to configure the origin so that viewers can
  /// <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The
  /// format of the value is:
  ///
  /// origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i>
  ///
  /// where <code> <i>ID-of-origin-access-identity</i> </code> is the value that
  /// CloudFront returned in the <code>ID</code> element when you created the
  /// origin access identity.
  ///
  /// If you want viewers to be able to access objects using either the CloudFront
  /// URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code>
  /// element.
  ///
  /// To delete the origin access identity from an existing distribution, update
  /// the distribution configuration and include an empty
  /// <code>OriginAccessIdentity</code> element.
  ///
  /// To replace the origin access identity, update the distribution configuration
  /// and specify the new origin access identity.
  ///
  /// For more information about the origin access identity, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
  /// Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  final String originAccessIdentity;

  S3OriginConfig({
    @_s.required this.originAccessIdentity,
  });
  factory S3OriginConfig.fromXml(_s.XmlElement elem) {
    return S3OriginConfig(
      originAccessIdentity:
          _s.extractXmlStringValue(elem, 'OriginAccessIdentity'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('OriginAccessIdentity', originAccessIdentity),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum SSLSupportMethod {
  sniOnly,
  vip,
}

extension on SSLSupportMethod {
  String toValue() {
    switch (this) {
      case SSLSupportMethod.sniOnly:
        return 'sni-only';
      case SSLSupportMethod.vip:
        return 'vip';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  SSLSupportMethod toSSLSupportMethod() {
    switch (this) {
      case 'sni-only':
        return SSLSupportMethod.sniOnly;
      case 'vip':
        return SSLSupportMethod.vip;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A complex type that lists the AWS accounts that were included in the
/// <code>TrustedSigners</code> complex type, as well as their active CloudFront
/// key pair IDs, if any.
class Signer {
  /// An AWS account that is included in the <code>TrustedSigners</code> complex
  /// type for this RTMP distribution. Valid values include:
  ///
  /// <ul>
  /// <li>
  /// <code>self</code>, which is the AWS account used to create the distribution.
  /// </li>
  /// <li>
  /// An AWS account number.
  /// </li>
  /// </ul>
  final String awsAccountNumber;

  /// A complex type that lists the active CloudFront key pairs, if any, that are
  /// associated with <code>AwsAccountNumber</code>.
  final KeyPairIds keyPairIds;

  Signer({
    this.awsAccountNumber,
    this.keyPairIds,
  });
  factory Signer.fromXml(_s.XmlElement elem) {
    return Signer(
      awsAccountNumber: _s.extractXmlStringValue(elem, 'AwsAccountNumber'),
      keyPairIds: _s
          .extractXmlChild(elem, 'KeyPairIds')
          ?.let((e) => KeyPairIds.fromXml(e)),
    );
  }
}

enum SslProtocol {
  sSLv3,
  tLSv1,
  tLSv1_1,
  tLSv1_2,
}

extension on SslProtocol {
  String toValue() {
    switch (this) {
      case SslProtocol.sSLv3:
        return 'SSLv3';
      case SslProtocol.tLSv1:
        return 'TLSv1';
      case SslProtocol.tLSv1_1:
        return 'TLSv1.1';
      case SslProtocol.tLSv1_2:
        return 'TLSv1.2';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  SslProtocol toSslProtocol() {
    switch (this) {
      case 'SSLv3':
        return SslProtocol.sSLv3;
      case 'TLSv1':
        return SslProtocol.tLSv1;
      case 'TLSv1.1':
        return SslProtocol.tLSv1_1;
      case 'TLSv1.2':
        return SslProtocol.tLSv1_2;
    }
    throw Exception('Unknown enum value: $this');
  }
}

/// A streaming distribution.
class StreamingDistribution {
  final String arn;

  /// A complex type that lists the AWS accounts, if any, that you included in the
  /// <code>TrustedSigners</code> complex type for this distribution. These are
  /// the accounts that you want to allow to create signed URLs for private
  /// content.
  ///
  /// The <code>Signer</code> complex type lists the AWS account number of the
  /// trusted signer or <code>self</code> if the signer is the AWS account that
  /// created the distribution. The <code>Signer</code> element also includes the
  /// IDs of any active CloudFront key pairs that are associated with the trusted
  /// signer's AWS account. If no <code>KeyPairId</code> element appears for a
  /// <code>Signer</code>, that signer can't create signed URLs.
  ///
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
  /// Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  final ActiveTrustedSigners activeTrustedSigners;

  /// The domain name that corresponds to the streaming distribution, for example,
  /// <code>s5c39gqb8ow64r.cloudfront.net</code>.
  final String domainName;

  /// The identifier for the RTMP distribution. For example:
  /// <code>EGTXBD79EXAMPLE</code>.
  final String id;

  /// The current status of the RTMP distribution. When the status is
  /// <code>Deployed</code>, the distribution's information is propagated to all
  /// CloudFront edge locations.
  final String status;

  /// The current configuration information for the RTMP distribution.
  final StreamingDistributionConfig streamingDistributionConfig;

  /// The date and time that the distribution was last modified.
  final DateTime lastModifiedTime;

  StreamingDistribution({
    @_s.required this.arn,
    @_s.required this.activeTrustedSigners,
    @_s.required this.domainName,
    @_s.required this.id,
    @_s.required this.status,
    @_s.required this.streamingDistributionConfig,
    this.lastModifiedTime,
  });
  factory StreamingDistribution.fromXml(_s.XmlElement elem) {
    return StreamingDistribution(
      arn: _s.extractXmlStringValue(elem, 'ARN'),
      activeTrustedSigners: _s
          .extractXmlChild(elem, 'ActiveTrustedSigners')
          ?.let((e) => ActiveTrustedSigners.fromXml(e)),
      domainName: _s.extractXmlStringValue(elem, 'DomainName'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      status: _s.extractXmlStringValue(elem, 'Status'),
      streamingDistributionConfig: _s
          .extractXmlChild(elem, 'StreamingDistributionConfig')
          ?.let((e) => StreamingDistributionConfig.fromXml(e)),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
    );
  }
}

class StreamingDistributionAlreadyExists implements _s.AwsException {
  final String message;

  StreamingDistributionAlreadyExists({
    this.message,
  });
  factory StreamingDistributionAlreadyExists.fromXml(_s.XmlElement elem) {
    return StreamingDistributionAlreadyExists(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The RTMP distribution's configuration information.
class StreamingDistributionConfig {
  /// A unique number that ensures that the request can't be replayed. If the
  /// <code>CallerReference</code> is new (no matter the content of the
  /// <code>StreamingDistributionConfig</code> object), a new streaming
  /// distribution is created. If the <code>CallerReference</code> is a value that
  /// you already sent in a previous request to create a streaming distribution,
  /// and the content of the <code>StreamingDistributionConfig</code> is identical
  /// to the original request (ignoring white space), the response includes the
  /// same information returned to the original request. If the
  /// <code>CallerReference</code> is a value that you already sent in a previous
  /// request to create a streaming distribution but the content of the
  /// <code>StreamingDistributionConfig</code> is different from the original
  /// request, CloudFront returns a <code>DistributionAlreadyExists</code> error.
  final String callerReference;

  /// Any comments you want to include about the streaming distribution.
  final String comment;

  /// Whether the streaming distribution is enabled to accept user requests for
  /// content.
  final bool enabled;

  /// A complex type that contains information about the Amazon S3 bucket from
  /// which you want CloudFront to get your media files for distribution.
  final S3Origin s3Origin;

  /// A complex type that specifies any AWS accounts that you want to permit to
  /// create signed URLs for private content. If you want the distribution to use
  /// signed URLs, include this element; if you want the distribution to use
  /// public URLs, remove this element. For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
  /// Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  final TrustedSigners trustedSigners;

  /// A complex type that contains information about CNAMEs (alternate domain
  /// names), if any, for this streaming distribution.
  final Aliases aliases;

  /// A complex type that controls whether access logs are written for the
  /// streaming distribution.
  final StreamingLoggingConfig logging;

  /// A complex type that contains information about price class for this
  /// streaming distribution.
  final PriceClass priceClass;

  StreamingDistributionConfig({
    @_s.required this.callerReference,
    @_s.required this.comment,
    @_s.required this.enabled,
    @_s.required this.s3Origin,
    @_s.required this.trustedSigners,
    this.aliases,
    this.logging,
    this.priceClass,
  });
  factory StreamingDistributionConfig.fromXml(_s.XmlElement elem) {
    return StreamingDistributionConfig(
      callerReference: _s.extractXmlStringValue(elem, 'CallerReference'),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      s3Origin:
          _s.extractXmlChild(elem, 'S3Origin')?.let((e) => S3Origin.fromXml(e)),
      trustedSigners: _s
          .extractXmlChild(elem, 'TrustedSigners')
          ?.let((e) => TrustedSigners.fromXml(e)),
      aliases:
          _s.extractXmlChild(elem, 'Aliases')?.let((e) => Aliases.fromXml(e)),
      logging: _s
          .extractXmlChild(elem, 'Logging')
          ?.let((e) => StreamingLoggingConfig.fromXml(e)),
      priceClass: _s.extractXmlStringValue(elem, 'PriceClass')?.toPriceClass(),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('CallerReference', callerReference),
      s3Origin?.toXml('S3Origin'),
      aliases?.toXml('Aliases'),
      _s.encodeXmlStringValue('Comment', comment),
      logging?.toXml('Logging'),
      trustedSigners?.toXml('TrustedSigners'),
      _s.encodeXmlStringValue('PriceClass', priceClass?.toValue()),
      _s.encodeXmlBoolValue('Enabled', enabled),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A streaming distribution Configuration and a list of tags to be associated
/// with the streaming distribution.
class StreamingDistributionConfigWithTags {
  /// A streaming distribution Configuration.
  final StreamingDistributionConfig streamingDistributionConfig;

  /// A complex type that contains zero or more <code>Tag</code> elements.
  final Tags tags;

  StreamingDistributionConfigWithTags({
    @_s.required this.streamingDistributionConfig,
    @_s.required this.tags,
  });
  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      streamingDistributionConfig?.toXml('StreamingDistributionConfig'),
      tags?.toXml('Tags'),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A streaming distribution list.
class StreamingDistributionList {
  /// A flag that indicates whether more streaming distributions remain to be
  /// listed. If your results were truncated, you can make a follow-up pagination
  /// request using the <code>Marker</code> request parameter to retrieve more
  /// distributions in the list.
  final bool isTruncated;

  /// The value you provided for the <code>Marker</code> request parameter.
  final String marker;

  /// The value you provided for the <code>MaxItems</code> request parameter.
  final int maxItems;

  /// The number of streaming distributions that were created by the current AWS
  /// account.
  final int quantity;

  /// A complex type that contains one <code>StreamingDistributionSummary</code>
  /// element for each distribution that was created by the current AWS account.
  final List<StreamingDistributionSummary> items;

  /// If <code>IsTruncated</code> is <code>true</code>, this element is present
  /// and contains the value you can use for the <code>Marker</code> request
  /// parameter to continue listing your RTMP distributions where they left off.
  final String nextMarker;

  StreamingDistributionList({
    @_s.required this.isTruncated,
    @_s.required this.marker,
    @_s.required this.maxItems,
    @_s.required this.quantity,
    this.items,
    this.nextMarker,
  });
  factory StreamingDistributionList.fromXml(_s.XmlElement elem) {
    return StreamingDistributionList(
      isTruncated: _s.extractXmlBoolValue(elem, 'IsTruncated'),
      marker: _s.extractXmlStringValue(elem, 'Marker'),
      maxItems: _s.extractXmlIntValue(elem, 'MaxItems'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) => elem
          .findElements('StreamingDistributionSummary')
          .map((c) => StreamingDistributionSummary.fromXml(c))
          .toList()),
      nextMarker: _s.extractXmlStringValue(elem, 'NextMarker'),
    );
  }
}

class StreamingDistributionNotDisabled implements _s.AwsException {
  final String message;

  StreamingDistributionNotDisabled({
    this.message,
  });
  factory StreamingDistributionNotDisabled.fromXml(_s.XmlElement elem) {
    return StreamingDistributionNotDisabled(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A summary of the information for an Amazon CloudFront streaming
/// distribution.
class StreamingDistributionSummary {
  /// The ARN (Amazon Resource Name) for the streaming distribution. For example:
  /// <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>,
  /// where <code>123456789012</code> is your AWS account ID.
  final String arn;

  /// A complex type that contains information about CNAMEs (alternate domain
  /// names), if any, for this streaming distribution.
  final Aliases aliases;

  /// The comment originally specified when this distribution was created.
  final String comment;

  /// The domain name corresponding to the distribution, for example,
  /// <code>d111111abcdef8.cloudfront.net</code>.
  final String domainName;

  /// Whether the distribution is enabled to accept end user requests for content.
  final bool enabled;

  /// The identifier for the distribution, for example,
  /// <code>EDFDVBD632BHDS5</code>.
  final String id;

  /// The date and time the distribution was last modified.
  final DateTime lastModifiedTime;
  final PriceClass priceClass;

  /// A complex type that contains information about the Amazon S3 bucket from
  /// which you want CloudFront to get your media files for distribution.
  final S3Origin s3Origin;

  /// Indicates the current status of the distribution. When the status is
  /// <code>Deployed</code>, the distribution's information is fully propagated
  /// throughout the Amazon CloudFront system.
  final String status;

  /// A complex type that specifies the AWS accounts, if any, that you want to
  /// allow to create signed URLs for private content. If you want to require
  /// signed URLs in requests for objects in the target origin that match the
  /// <code>PathPattern</code> for this cache behavior, specify <code>true</code>
  /// for <code>Enabled</code>, and specify the applicable values for
  /// <code>Quantity</code> and <code>Items</code>.If you don't want to require
  /// signed URLs in requests for objects that match <code>PathPattern</code>,
  /// specify <code>false</code> for <code>Enabled</code> and <code>0</code> for
  /// <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove
  /// one or more trusted signers, change <code>Enabled</code> to
  /// <code>true</code> (if it's currently <code>false</code>), change
  /// <code>Quantity</code> as applicable, and specify all of the trusted signers
  /// that you want to include in the updated distribution.
  final TrustedSigners trustedSigners;

  StreamingDistributionSummary({
    @_s.required this.arn,
    @_s.required this.aliases,
    @_s.required this.comment,
    @_s.required this.domainName,
    @_s.required this.enabled,
    @_s.required this.id,
    @_s.required this.lastModifiedTime,
    @_s.required this.priceClass,
    @_s.required this.s3Origin,
    @_s.required this.status,
    @_s.required this.trustedSigners,
  });
  factory StreamingDistributionSummary.fromXml(_s.XmlElement elem) {
    return StreamingDistributionSummary(
      arn: _s.extractXmlStringValue(elem, 'ARN'),
      aliases:
          _s.extractXmlChild(elem, 'Aliases')?.let((e) => Aliases.fromXml(e)),
      comment: _s.extractXmlStringValue(elem, 'Comment'),
      domainName: _s.extractXmlStringValue(elem, 'DomainName'),
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      id: _s.extractXmlStringValue(elem, 'Id'),
      lastModifiedTime: _s.extractXmlDateTimeValue(elem, 'LastModifiedTime'),
      priceClass: _s.extractXmlStringValue(elem, 'PriceClass')?.toPriceClass(),
      s3Origin:
          _s.extractXmlChild(elem, 'S3Origin')?.let((e) => S3Origin.fromXml(e)),
      status: _s.extractXmlStringValue(elem, 'Status'),
      trustedSigners: _s
          .extractXmlChild(elem, 'TrustedSigners')
          ?.let((e) => TrustedSigners.fromXml(e)),
    );
  }
}

/// A complex type that controls whether access logs are written for this
/// streaming distribution.
class StreamingLoggingConfig {
  /// The Amazon S3 bucket to store the access logs in, for example,
  /// <code>myawslogbucket.s3.amazonaws.com</code>.
  final String bucket;

  /// Specifies whether you want CloudFront to save access logs to an Amazon S3
  /// bucket. If you don't want to enable logging when you create a streaming
  /// distribution or if you want to disable logging for an existing streaming
  /// distribution, specify <code>false</code> for <code>Enabled</code>, and
  /// specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you
  /// specify <code>false</code> for <code>Enabled</code> but you specify values
  /// for <code>Bucket</code> and <code>Prefix</code>, the values are
  /// automatically deleted.
  final bool enabled;

  /// An optional string that you want CloudFront to prefix to the access log
  /// filenames for this streaming distribution, for example,
  /// <code>myprefix/</code>. If you want to enable logging, but you don't want to
  /// specify a prefix, you still must include an empty <code>Prefix</code>
  /// element in the <code>Logging</code> element.
  final String prefix;

  StreamingLoggingConfig({
    @_s.required this.bucket,
    @_s.required this.enabled,
    @_s.required this.prefix,
  });
  factory StreamingLoggingConfig.fromXml(_s.XmlElement elem) {
    return StreamingLoggingConfig(
      bucket: _s.extractXmlStringValue(elem, 'Bucket'),
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      prefix: _s.extractXmlStringValue(elem, 'Prefix'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue('Enabled', enabled),
      _s.encodeXmlStringValue('Bucket', bucket),
      _s.encodeXmlStringValue('Prefix', prefix),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains <code>Tag</code> key and <code>Tag</code>
/// value.
class Tag {
  /// A string that contains <code>Tag</code> key.
  ///
  /// The string length should be between 1 and 128 characters. Valid characters
  /// include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the
  /// special characters <code>_ - . : / = + @</code>.
  final String key;

  /// A string that contains an optional <code>Tag</code> value.
  ///
  /// The string length should be between 0 and 256 characters. Valid characters
  /// include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the
  /// special characters <code>_ - . : / = + @</code>.
  final String value;

  Tag({
    @_s.required this.key,
    this.value,
  });
  factory Tag.fromXml(_s.XmlElement elem) {
    return Tag(
      key: _s.extractXmlStringValue(elem, 'Key'),
      value: _s.extractXmlStringValue(elem, 'Value'),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlStringValue('Key', key),
      _s.encodeXmlStringValue('Value', value),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains zero or more <code>Tag</code> elements.
class TagKeys {
  /// A complex type that contains <code>Tag</code> key elements.
  final List<String> items;

  TagKeys({
    this.items,
  });
  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('Key', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// A complex type that contains zero or more <code>Tag</code> elements.
class Tags {
  /// A complex type that contains <code>Tag</code> elements.
  final List<Tag> items;

  Tags({
    this.items,
  });
  factory Tags.fromXml(_s.XmlElement elem) {
    return Tags(
      items: _s.extractXmlChild(elem, 'Items')?.let((elem) =>
          elem.findElements('Tag').map((c) => Tag.fromXml(c)).toList()),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [],
            <_s.XmlNode>[...items.map((v) => v.toXml('Items'))]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// You cannot create more cache behaviors for the distribution.
class TooManyCacheBehaviors implements _s.AwsException {
  final String message;

  TooManyCacheBehaviors({
    this.message,
  });
  factory TooManyCacheBehaviors.fromXml(_s.XmlElement elem) {
    return TooManyCacheBehaviors(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// You cannot create anymore custom SSL/TLS certificates.
class TooManyCertificates implements _s.AwsException {
  final String message;

  TooManyCertificates({
    this.message,
  });
  factory TooManyCertificates.fromXml(_s.XmlElement elem) {
    return TooManyCertificates(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Processing your request would cause you to exceed the maximum number of
/// origin access identities allowed.
class TooManyCloudFrontOriginAccessIdentities implements _s.AwsException {
  final String message;

  TooManyCloudFrontOriginAccessIdentities({
    this.message,
  });
  factory TooManyCloudFrontOriginAccessIdentities.fromXml(_s.XmlElement elem) {
    return TooManyCloudFrontOriginAccessIdentities(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Your request contains more cookie names in the whitelist than are allowed
/// per cache behavior.
class TooManyCookieNamesInWhiteList implements _s.AwsException {
  final String message;

  TooManyCookieNamesInWhiteList({
    this.message,
  });
  factory TooManyCookieNamesInWhiteList.fromXml(_s.XmlElement elem) {
    return TooManyCookieNamesInWhiteList(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Your request contains more CNAMEs than are allowed per distribution.
class TooManyDistributionCNAMEs implements _s.AwsException {
  final String message;

  TooManyDistributionCNAMEs({
    this.message,
  });
  factory TooManyDistributionCNAMEs.fromXml(_s.XmlElement elem) {
    return TooManyDistributionCNAMEs(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Processing your request would cause you to exceed the maximum number of
/// distributions allowed.
class TooManyDistributions implements _s.AwsException {
  final String message;

  TooManyDistributions({
    this.message,
  });
  factory TooManyDistributions.fromXml(_s.XmlElement elem) {
    return TooManyDistributions(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of distributions have been associated with the specified
/// configuration for field-level encryption.
class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig
    implements _s.AwsException {
  final String message;

  TooManyDistributionsAssociatedToFieldLevelEncryptionConfig({
    this.message,
  });
  factory TooManyDistributionsAssociatedToFieldLevelEncryptionConfig.fromXml(
      _s.XmlElement elem) {
    return TooManyDistributionsAssociatedToFieldLevelEncryptionConfig(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Processing your request would cause the maximum number of distributions with
/// Lambda function associations per owner to be exceeded.
class TooManyDistributionsWithLambdaAssociations implements _s.AwsException {
  final String message;

  TooManyDistributionsWithLambdaAssociations({
    this.message,
  });
  factory TooManyDistributionsWithLambdaAssociations.fromXml(
      _s.XmlElement elem) {
    return TooManyDistributionsWithLambdaAssociations(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of configurations for field-level encryption have been
/// created.
class TooManyFieldLevelEncryptionConfigs implements _s.AwsException {
  final String message;

  TooManyFieldLevelEncryptionConfigs({
    this.message,
  });
  factory TooManyFieldLevelEncryptionConfigs.fromXml(_s.XmlElement elem) {
    return TooManyFieldLevelEncryptionConfigs(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of content type profiles for field-level encryption have
/// been created.
class TooManyFieldLevelEncryptionContentTypeProfiles
    implements _s.AwsException {
  final String message;

  TooManyFieldLevelEncryptionContentTypeProfiles({
    this.message,
  });
  factory TooManyFieldLevelEncryptionContentTypeProfiles.fromXml(
      _s.XmlElement elem) {
    return TooManyFieldLevelEncryptionContentTypeProfiles(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of encryption entities for field-level encryption have
/// been created.
class TooManyFieldLevelEncryptionEncryptionEntities implements _s.AwsException {
  final String message;

  TooManyFieldLevelEncryptionEncryptionEntities({
    this.message,
  });
  factory TooManyFieldLevelEncryptionEncryptionEntities.fromXml(
      _s.XmlElement elem) {
    return TooManyFieldLevelEncryptionEncryptionEntities(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of field patterns for field-level encryption have been
/// created.
class TooManyFieldLevelEncryptionFieldPatterns implements _s.AwsException {
  final String message;

  TooManyFieldLevelEncryptionFieldPatterns({
    this.message,
  });
  factory TooManyFieldLevelEncryptionFieldPatterns.fromXml(_s.XmlElement elem) {
    return TooManyFieldLevelEncryptionFieldPatterns(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of profiles for field-level encryption have been created.
class TooManyFieldLevelEncryptionProfiles implements _s.AwsException {
  final String message;

  TooManyFieldLevelEncryptionProfiles({
    this.message,
  });
  factory TooManyFieldLevelEncryptionProfiles.fromXml(_s.XmlElement elem) {
    return TooManyFieldLevelEncryptionProfiles(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of query arg profiles for field-level encryption have
/// been created.
class TooManyFieldLevelEncryptionQueryArgProfiles implements _s.AwsException {
  final String message;

  TooManyFieldLevelEncryptionQueryArgProfiles({
    this.message,
  });
  factory TooManyFieldLevelEncryptionQueryArgProfiles.fromXml(
      _s.XmlElement elem) {
    return TooManyFieldLevelEncryptionQueryArgProfiles(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class TooManyHeadersInForwardedValues implements _s.AwsException {
  final String message;

  TooManyHeadersInForwardedValues({
    this.message,
  });
  factory TooManyHeadersInForwardedValues.fromXml(_s.XmlElement elem) {
    return TooManyHeadersInForwardedValues(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// You have exceeded the maximum number of allowable InProgress invalidation
/// batch requests, or invalidation objects.
class TooManyInvalidationsInProgress implements _s.AwsException {
  final String message;

  TooManyInvalidationsInProgress({
    this.message,
  });
  factory TooManyInvalidationsInProgress.fromXml(_s.XmlElement elem) {
    return TooManyInvalidationsInProgress(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Your request contains more Lambda function associations than are allowed per
/// distribution.
class TooManyLambdaFunctionAssociations implements _s.AwsException {
  final String message;

  TooManyLambdaFunctionAssociations({
    this.message,
  });
  factory TooManyLambdaFunctionAssociations.fromXml(_s.XmlElement elem) {
    return TooManyLambdaFunctionAssociations(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class TooManyOriginCustomHeaders implements _s.AwsException {
  final String message;

  TooManyOriginCustomHeaders({
    this.message,
  });
  factory TooManyOriginCustomHeaders.fromXml(_s.XmlElement elem) {
    return TooManyOriginCustomHeaders(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// You cannot create more origins for the distribution.
class TooManyOrigins implements _s.AwsException {
  final String message;

  TooManyOrigins({
    this.message,
  });
  factory TooManyOrigins.fromXml(_s.XmlElement elem) {
    return TooManyOrigins(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// The maximum number of public keys for field-level encryption have been
/// created. To create a new public key, delete one of the existing keys.
class TooManyPublicKeys implements _s.AwsException {
  final String message;

  TooManyPublicKeys({
    this.message,
  });
  factory TooManyPublicKeys.fromXml(_s.XmlElement elem) {
    return TooManyPublicKeys(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class TooManyQueryStringParameters implements _s.AwsException {
  final String message;

  TooManyQueryStringParameters({
    this.message,
  });
  factory TooManyQueryStringParameters.fromXml(_s.XmlElement elem) {
    return TooManyQueryStringParameters(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

class TooManyStreamingDistributionCNAMEs implements _s.AwsException {
  final String message;

  TooManyStreamingDistributionCNAMEs({
    this.message,
  });
  factory TooManyStreamingDistributionCNAMEs.fromXml(_s.XmlElement elem) {
    return TooManyStreamingDistributionCNAMEs(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Processing your request would cause you to exceed the maximum number of
/// streaming distributions allowed.
class TooManyStreamingDistributions implements _s.AwsException {
  final String message;

  TooManyStreamingDistributions({
    this.message,
  });
  factory TooManyStreamingDistributions.fromXml(_s.XmlElement elem) {
    return TooManyStreamingDistributions(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// Your request contains more trusted signers than are allowed per
/// distribution.
class TooManyTrustedSigners implements _s.AwsException {
  final String message;

  TooManyTrustedSigners({
    this.message,
  });
  factory TooManyTrustedSigners.fromXml(_s.XmlElement elem) {
    return TooManyTrustedSigners(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// One or more of your trusted signers don't exist.
class TrustedSignerDoesNotExist implements _s.AwsException {
  final String message;

  TrustedSignerDoesNotExist({
    this.message,
  });
  factory TrustedSignerDoesNotExist.fromXml(_s.XmlElement elem) {
    return TrustedSignerDoesNotExist(
      message: _s.extractXmlStringValue(elem, 'Message'),
    );
  }
}

/// A complex type that specifies the AWS accounts, if any, that you want to
/// allow to create signed URLs for private content.
///
/// If you want to require signed URLs in requests for objects in the target
/// origin that match the <code>PathPattern</code> for this cache behavior,
/// specify <code>true</code> for <code>Enabled</code>, and specify the
/// applicable values for <code>Quantity</code> and <code>Items</code>. For more
/// information, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving
/// Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront
/// Developer Guide</i>.
///
/// If you don't want to require signed URLs in requests for objects that match
/// <code>PathPattern</code>, specify <code>false</code> for
/// <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit
/// <code>Items</code>.
///
/// To add, change, or remove one or more trusted signers, change
/// <code>Enabled</code> to <code>true</code> (if it's currently
/// <code>false</code>), change <code>Quantity</code> as applicable, and specify
/// all of the trusted signers that you want to include in the updated
/// distribution.
///
/// For more information about updating the distribution configuration, see
/// <a>DistributionConfig</a> .
class TrustedSigners {
  /// Specifies whether you want to require viewers to use signed URLs to access
  /// the files specified by <code>PathPattern</code> and
  /// <code>TargetOriginId</code>.
  final bool enabled;

  /// The number of trusted signers for this cache behavior.
  final int quantity;

  /// <b>Optional</b>: A complex type that contains trusted signers for this cache
  /// behavior. If <code>Quantity</code> is <code>0</code>, you can omit
  /// <code>Items</code>.
  final List<String> items;

  TrustedSigners({
    @_s.required this.enabled,
    @_s.required this.quantity,
    this.items,
  });
  factory TrustedSigners.fromXml(_s.XmlElement elem) {
    return TrustedSigners(
      enabled: _s.extractXmlBoolValue(elem, 'Enabled'),
      quantity: _s.extractXmlIntValue(elem, 'Quantity'),
      items: _s.extractXmlChild(elem, 'Items')?.let(
          (elem) => _s.extractXmlStringListValues(elem, 'AwsAccountNumber')),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue('Enabled', enabled),
      _s.encodeXmlIntValue('Quantity', quantity),
      if (items != null)
        _s.XmlElement(_s.XmlName('Items'), [], <_s.XmlNode>[
          ...items.map((v) => _s.encodeXmlStringValue('AwsAccountNumber', v))
        ]),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

/// The returned result of the corresponding request.
class UpdateCloudFrontOriginAccessIdentityResult {
  /// The origin access identity's information.
  final CloudFrontOriginAccessIdentity cloudFrontOriginAccessIdentity;

  /// The current version of the configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  UpdateCloudFrontOriginAccessIdentityResult({
    this.cloudFrontOriginAccessIdentity,
    this.eTag,
  });
  factory UpdateCloudFrontOriginAccessIdentityResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return UpdateCloudFrontOriginAccessIdentityResult(
      cloudFrontOriginAccessIdentity:
          elem?.let((e) => CloudFrontOriginAccessIdentity.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
    );
  }
}

/// The returned result of the corresponding request.
class UpdateDistributionResult {
  /// The distribution's information.
  final Distribution distribution;

  /// The current version of the configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  UpdateDistributionResult({
    this.distribution,
    this.eTag,
  });
  factory UpdateDistributionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return UpdateDistributionResult(
      distribution: elem?.let((e) => Distribution.fromXml(e)),
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
    );
  }
}

class UpdateFieldLevelEncryptionConfigResult {
  /// The value of the <code>ETag</code> header that you received when updating
  /// the configuration. For example: <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the results of updating the configuration.
  final FieldLevelEncryption fieldLevelEncryption;

  UpdateFieldLevelEncryptionConfigResult({
    this.eTag,
    this.fieldLevelEncryption,
  });
  factory UpdateFieldLevelEncryptionConfigResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return UpdateFieldLevelEncryptionConfigResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryption: elem?.let((e) => FieldLevelEncryption.fromXml(e)),
    );
  }
}

class UpdateFieldLevelEncryptionProfileResult {
  /// The result of the field-level encryption profile request.
  final String eTag;

  /// Return the results of updating the profile.
  final FieldLevelEncryptionProfile fieldLevelEncryptionProfile;

  UpdateFieldLevelEncryptionProfileResult({
    this.eTag,
    this.fieldLevelEncryptionProfile,
  });
  factory UpdateFieldLevelEncryptionProfileResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return UpdateFieldLevelEncryptionProfileResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      fieldLevelEncryptionProfile:
          elem?.let((e) => FieldLevelEncryptionProfile.fromXml(e)),
    );
  }
}

class UpdatePublicKeyResult {
  /// The current version of the update public key result. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// Return the results of updating the public key.
  final PublicKey publicKey;

  UpdatePublicKeyResult({
    this.eTag,
    this.publicKey,
  });
  factory UpdatePublicKeyResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return UpdatePublicKeyResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      publicKey: elem?.let((e) => PublicKey.fromXml(e)),
    );
  }
}

/// The returned result of the corresponding request.
class UpdateStreamingDistributionResult {
  /// The current version of the configuration. For example:
  /// <code>E2QWRUHAPOMQZL</code>.
  final String eTag;

  /// The streaming distribution's information.
  final StreamingDistribution streamingDistribution;

  UpdateStreamingDistributionResult({
    this.eTag,
    this.streamingDistribution,
  });
  factory UpdateStreamingDistributionResult.fromXml(
    _s.XmlElement elem, {
    Map<String, String> headers,
  }) {
    return UpdateStreamingDistributionResult(
      eTag: _s.extractHeaderStringValue(headers, 'ETag'),
      streamingDistribution: elem?.let((e) => StreamingDistribution.fromXml(e)),
    );
  }
}

/// A complex type that specifies the following:
///
/// <ul>
/// <li>
/// Whether you want viewers to use HTTP or HTTPS to request your objects.
/// </li>
/// <li>
/// If you want viewers to use HTTPS, whether you're using an alternate domain
/// name such as <code>example.com</code> or the CloudFront domain name for your
/// distribution, such as <code>d111111abcdef8.cloudfront.net</code>.
/// </li>
/// <li>
/// If you're using an alternate domain name, whether AWS Certificate Manager
/// (ACM) provided the certificate, or you purchased a certificate from a
/// third-party certificate authority and imported it into ACM or uploaded it to
/// the IAM certificate store.
/// </li>
/// </ul>
/// You must specify only one of the following values:
///
/// <ul>
/// <li>
/// <a>ViewerCertificate$ACMCertificateArn</a>
/// </li>
/// <li>
/// <a>ViewerCertificate$IAMCertificateId</a>
/// </li>
/// <li>
/// <a>ViewerCertificate$CloudFrontDefaultCertificate</a>
/// </li>
/// </ul>
/// Don't specify <code>false</code> for
/// <code>CloudFrontDefaultCertificate</code>.
///
/// <b>If you want viewers to use HTTP instead of HTTPS to request your
/// objects</b>: Specify the following value:
///
/// <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code>
///
/// In addition, specify <code>allow-all</code> for
/// <code>ViewerProtocolPolicy</code> for all of your cache behaviors.
///
/// <b>If you want viewers to use HTTPS to request your objects</b>: Choose the
/// type of certificate that you want to use based on whether you're using an
/// alternate domain name for your objects or the CloudFront domain name:
///
/// <ul>
/// <li>
/// <b>If you're using an alternate domain name, such as example.com</b>:
/// Specify one of the following values, depending on whether ACM provided your
/// certificate or you purchased your certificate from third-party certificate
/// authority:
///
/// <ul>
/// <li>
/// <code>&lt;ACMCertificateArn&gt;<i>ARN for ACM SSL/TLS
/// certificate</i>&lt;ACMCertificateArn&gt;</code> where <code> <i>ARN for ACM
/// SSL/TLS certificate</i> </code> is the ARN for the ACM SSL/TLS certificate
/// that you want to use for this distribution.
/// </li>
/// <li>
/// <code>&lt;IAMCertificateId&gt;<i>IAM certificate
/// ID</i>&lt;IAMCertificateId&gt;</code> where <code> <i>IAM certificate ID</i>
/// </code> is the ID that IAM returned when you added the certificate to the
/// IAM certificate store.
/// </li>
/// </ul>
/// If you specify <code>ACMCertificateArn</code> or
/// <code>IAMCertificateId</code>, you must also specify a value for
/// <code>SSLSupportMethod</code>.
///
/// If you choose to use an ACM certificate or a certificate in the IAM
/// certificate store, we recommend that you use only an alternate domain name
/// in your object URLs (<code>https://example.com/logo.jpg</code>). If you use
/// the domain name that is associated with your CloudFront distribution (such
/// as <code>https://d111111abcdef8.cloudfront.net/logo.jpg</code>) and the
/// viewer supports <code>SNI</code>, then CloudFront behaves normally. However,
/// if the browser does not support SNI, the user's experience depends on the
/// value that you choose for <code>SSLSupportMethod</code>:
///
/// <ul>
/// <li>
/// <code>vip</code>: The viewer displays a warning because there is a mismatch
/// between the CloudFront domain name and the domain name in your SSL/TLS
/// certificate.
/// </li>
/// <li>
/// <code>sni-only</code>: CloudFront drops the connection with the browser
/// without returning the object.
/// </li>
/// </ul> </li>
/// <li>
/// <b>If you're using the CloudFront domain name for your distribution, such as
/// <code>d111111abcdef8.cloudfront.net</code> </b>: Specify the following
/// value:
///
/// <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;
/// </code>
/// </li>
/// </ul>
/// If you want viewers to use HTTPS, you must also specify one of the following
/// values in your cache behaviors:
///
/// <ul>
/// <li>
/// <code>
/// &lt;ViewerProtocolPolicy&gt;https-only&lt;ViewerProtocolPolicy&gt;</code>
/// </li>
/// <li>
/// <code>&lt;ViewerProtocolPolicy&gt;redirect-to-https&lt;ViewerProtocolPolicy&gt;</code>
/// </li>
/// </ul>
/// You can also optionally require that CloudFront use HTTPS to communicate
/// with your origin by specifying one of the following values for the
/// applicable origins:
///
/// <ul>
/// <li>
/// <code>&lt;OriginProtocolPolicy&gt;https-only&lt;OriginProtocolPolicy&gt;
/// </code>
/// </li>
/// <li>
/// <code>&lt;OriginProtocolPolicy&gt;match-viewer&lt;OriginProtocolPolicy&gt;
/// </code>
/// </li>
/// </ul>
/// For more information, see <a
/// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS">Using
/// Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer
/// Guide</i>.
class ViewerCertificate {
  /// For information about how and when to use <code>ACMCertificateArn</code>,
  /// see <a>ViewerCertificate</a>.
  final String aCMCertificateArn;

  /// This field has been deprecated. Use one of the following fields instead:
  ///
  /// <ul>
  /// <li>
  /// <a>ViewerCertificate$ACMCertificateArn</a>
  /// </li>
  /// <li>
  /// <a>ViewerCertificate$IAMCertificateId</a>
  /// </li>
  /// <li>
  /// <a>ViewerCertificate$CloudFrontDefaultCertificate</a>
  /// </li>
  /// </ul>
  final String certificate;

  /// This field has been deprecated. Use one of the following fields instead:
  ///
  /// <ul>
  /// <li>
  /// <a>ViewerCertificate$ACMCertificateArn</a>
  /// </li>
  /// <li>
  /// <a>ViewerCertificate$IAMCertificateId</a>
  /// </li>
  /// <li>
  /// <a>ViewerCertificate$CloudFrontDefaultCertificate</a>
  /// </li>
  /// </ul>
  final CertificateSource certificateSource;

  /// For information about how and when to use
  /// <code>CloudFrontDefaultCertificate</code>, see <a>ViewerCertificate</a>.
  final bool cloudFrontDefaultCertificate;

  /// For information about how and when to use <code>IAMCertificateId</code>, see
  /// <a>ViewerCertificate</a>.
  final String iAMCertificateId;

  /// Specify the security policy that you want CloudFront to use for HTTPS
  /// connections. A security policy determines two settings:
  ///
  /// <ul>
  /// <li>
  /// The minimum SSL/TLS protocol that CloudFront uses to communicate with
  /// viewers
  /// </li>
  /// <li>
  /// The cipher that CloudFront uses to encrypt the content that it returns to
  /// viewers
  /// </li>
  /// </ul> <note>
  /// On the CloudFront console, this setting is called <b>Security policy</b>.
  /// </note>
  /// We recommend that you specify <code>TLSv1.1_2016</code> unless your users
  /// are using browsers or devices that do not support TLSv1.1 or later.
  ///
  /// When both of the following are true, you must specify <code>TLSv1</code> or
  /// later for the security policy:
  ///
  /// <ul>
  /// <li>
  /// You're using a custom certificate: you specified a value for
  /// <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code>
  /// </li>
  /// <li>
  /// You're using SNI: you specified <code>sni-only</code> for
  /// <code>SSLSupportMethod</code>
  /// </li>
  /// </ul>
  /// If you specify <code>true</code> for
  /// <code>CloudFrontDefaultCertificate</code>, CloudFront automatically sets the
  /// security policy to <code>TLSv1</code> regardless of the value that you
  /// specify for <code>MinimumProtocolVersion</code>.
  ///
  /// For information about the relationship between the security policy that you
  /// choose and the protocols and ciphers that CloudFront uses to communicate
  /// with viewers, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers">
  /// Supported SSL/TLS Protocols and Ciphers for Communication Between Viewers
  /// and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.
  final MinimumProtocolVersion minimumProtocolVersion;

  /// If you specify a value for <a>ViewerCertificate$ACMCertificateArn</a> or for
  /// <a>ViewerCertificate$IAMCertificateId</a>, you must also specify how you
  /// want CloudFront to serve HTTPS requests: using a method that works for all
  /// clients or one that works for most clients:
  ///
  /// <ul>
  /// <li>
  /// <code>vip</code>: CloudFront uses dedicated IP addresses for your content
  /// and can respond to HTTPS requests from any viewer. However, you will incur
  /// additional monthly charges.
  /// </li>
  /// <li>
  /// <code>sni-only</code>: CloudFront can respond to HTTPS requests from viewers
  /// that support Server Name Indication (SNI). All modern browsers support SNI,
  /// but some browsers still in use don't support SNI. If some of your users'
  /// browsers don't support SNI, we recommend that you do one of the following:
  ///
  /// <ul>
  /// <li>
  /// Use the <code>vip</code> option (dedicated IP addresses) instead of
  /// <code>sni-only</code>.
  /// </li>
  /// <li>
  /// Use the CloudFront SSL/TLS certificate instead of a custom certificate. This
  /// requires that you use the CloudFront domain name of your distribution in the
  /// URLs for your objects, for example,
  /// <code>https://d111111abcdef8.cloudfront.net/logo.png</code>.
  /// </li>
  /// <li>
  /// If you can control which browser your users use, upgrade the browser to one
  /// that supports SNI.
  /// </li>
  /// <li>
  /// Use HTTP instead of HTTPS.
  /// </li>
  /// </ul> </li>
  /// </ul>
  /// Don't specify a value for <code>SSLSupportMethod</code> if you specified
  /// <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code>.
  ///
  /// For more information, see <a
  /// href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html">Using
  /// Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer
  /// Guide</i>.
  final SSLSupportMethod sSLSupportMethod;

  ViewerCertificate({
    this.aCMCertificateArn,
    this.certificate,
    this.certificateSource,
    this.cloudFrontDefaultCertificate,
    this.iAMCertificateId,
    this.minimumProtocolVersion,
    this.sSLSupportMethod,
  });
  factory ViewerCertificate.fromXml(_s.XmlElement elem) {
    return ViewerCertificate(
      aCMCertificateArn: _s.extractXmlStringValue(elem, 'ACMCertificateArn'),
      certificate: _s.extractXmlStringValue(elem, 'Certificate'),
      certificateSource: _s
          .extractXmlStringValue(elem, 'CertificateSource')
          ?.toCertificateSource(),
      cloudFrontDefaultCertificate:
          _s.extractXmlBoolValue(elem, 'CloudFrontDefaultCertificate'),
      iAMCertificateId: _s.extractXmlStringValue(elem, 'IAMCertificateId'),
      minimumProtocolVersion: _s
          .extractXmlStringValue(elem, 'MinimumProtocolVersion')
          ?.toMinimumProtocolVersion(),
      sSLSupportMethod: _s
          .extractXmlStringValue(elem, 'SSLSupportMethod')
          ?.toSSLSupportMethod(),
    );
  }

  _s.XmlElement toXml(String elemName, {List<_s.XmlAttribute> attributes}) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlBoolValue(
          'CloudFrontDefaultCertificate', cloudFrontDefaultCertificate),
      _s.encodeXmlStringValue('IAMCertificateId', iAMCertificateId),
      _s.encodeXmlStringValue('ACMCertificateArn', aCMCertificateArn),
      _s.encodeXmlStringValue('SSLSupportMethod', sSLSupportMethod?.toValue()),
      _s.encodeXmlStringValue(
          'MinimumProtocolVersion', minimumProtocolVersion?.toValue()),
      _s.encodeXmlStringValue('Certificate', certificate),
      _s.encodeXmlStringValue(
          'CertificateSource', certificateSource?.toValue()),
    ];
    final $attributes = <_s.XmlAttribute>[
      ...?attributes,
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      $attributes,
      $children.where((e) => e != null),
    );
  }
}

enum ViewerProtocolPolicy {
  allowAll,
  httpsOnly,
  redirectToHttps,
}

extension on ViewerProtocolPolicy {
  String toValue() {
    switch (this) {
      case ViewerProtocolPolicy.allowAll:
        return 'allow-all';
      case ViewerProtocolPolicy.httpsOnly:
        return 'https-only';
      case ViewerProtocolPolicy.redirectToHttps:
        return 'redirect-to-https';
    }
    throw Exception('Unknown enum value: $this');
  }
}

extension on String {
  ViewerProtocolPolicy toViewerProtocolPolicy() {
    switch (this) {
      case 'allow-all':
        return ViewerProtocolPolicy.allowAll;
      case 'https-only':
        return ViewerProtocolPolicy.httpsOnly;
      case 'redirect-to-https':
        return ViewerProtocolPolicy.redirectToHttps;
    }
    throw Exception('Unknown enum value: $this');
  }
}

final _exceptionFns = <String, _s.AwsExceptionFn>{
  'AccessDenied': (type, message) => AccessDenied(message: message),
  'BatchTooLarge': (type, message) => BatchTooLarge(message: message),
  'CNAMEAlreadyExists': (type, message) => CNAMEAlreadyExists(message: message),
  'CannotChangeImmutablePublicKeyFields': (type, message) =>
      CannotChangeImmutablePublicKeyFields(message: message),
  'CloudFrontOriginAccessIdentityAlreadyExists': (type, message) =>
      CloudFrontOriginAccessIdentityAlreadyExists(message: message),
  'CloudFrontOriginAccessIdentityInUse': (type, message) =>
      CloudFrontOriginAccessIdentityInUse(message: message),
  'DistributionAlreadyExists': (type, message) =>
      DistributionAlreadyExists(message: message),
  'DistributionNotDisabled': (type, message) =>
      DistributionNotDisabled(message: message),
  'FieldLevelEncryptionConfigAlreadyExists': (type, message) =>
      FieldLevelEncryptionConfigAlreadyExists(message: message),
  'FieldLevelEncryptionConfigInUse': (type, message) =>
      FieldLevelEncryptionConfigInUse(message: message),
  'FieldLevelEncryptionProfileAlreadyExists': (type, message) =>
      FieldLevelEncryptionProfileAlreadyExists(message: message),
  'FieldLevelEncryptionProfileInUse': (type, message) =>
      FieldLevelEncryptionProfileInUse(message: message),
  'FieldLevelEncryptionProfileSizeExceeded': (type, message) =>
      FieldLevelEncryptionProfileSizeExceeded(message: message),
  'IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior':
      (type, message) =>
          IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior(
              message: message),
  'IllegalUpdate': (type, message) => IllegalUpdate(message: message),
  'InconsistentQuantities': (type, message) =>
      InconsistentQuantities(message: message),
  'InvalidArgument': (type, message) => InvalidArgument(message: message),
  'InvalidDefaultRootObject': (type, message) =>
      InvalidDefaultRootObject(message: message),
  'InvalidErrorCode': (type, message) => InvalidErrorCode(message: message),
  'InvalidForwardCookies': (type, message) =>
      InvalidForwardCookies(message: message),
  'InvalidGeoRestrictionParameter': (type, message) =>
      InvalidGeoRestrictionParameter(message: message),
  'InvalidHeadersForS3Origin': (type, message) =>
      InvalidHeadersForS3Origin(message: message),
  'InvalidIfMatchVersion': (type, message) =>
      InvalidIfMatchVersion(message: message),
  'InvalidLambdaFunctionAssociation': (type, message) =>
      InvalidLambdaFunctionAssociation(message: message),
  'InvalidLocationCode': (type, message) =>
      InvalidLocationCode(message: message),
  'InvalidMinimumProtocolVersion': (type, message) =>
      InvalidMinimumProtocolVersion(message: message),
  'InvalidOrigin': (type, message) => InvalidOrigin(message: message),
  'InvalidOriginAccessIdentity': (type, message) =>
      InvalidOriginAccessIdentity(message: message),
  'InvalidOriginKeepaliveTimeout': (type, message) =>
      InvalidOriginKeepaliveTimeout(message: message),
  'InvalidOriginReadTimeout': (type, message) =>
      InvalidOriginReadTimeout(message: message),
  'InvalidProtocolSettings': (type, message) =>
      InvalidProtocolSettings(message: message),
  'InvalidQueryStringParameters': (type, message) =>
      InvalidQueryStringParameters(message: message),
  'InvalidRelativePath': (type, message) =>
      InvalidRelativePath(message: message),
  'InvalidRequiredProtocol': (type, message) =>
      InvalidRequiredProtocol(message: message),
  'InvalidResponseCode': (type, message) =>
      InvalidResponseCode(message: message),
  'InvalidTTLOrder': (type, message) => InvalidTTLOrder(message: message),
  'InvalidTagging': (type, message) => InvalidTagging(message: message),
  'InvalidViewerCertificate': (type, message) =>
      InvalidViewerCertificate(message: message),
  'InvalidWebACLId': (type, message) => InvalidWebACLId(message: message),
  'MissingBody': (type, message) => MissingBody(message: message),
  'NoSuchCloudFrontOriginAccessIdentity': (type, message) =>
      NoSuchCloudFrontOriginAccessIdentity(message: message),
  'NoSuchDistribution': (type, message) => NoSuchDistribution(message: message),
  'NoSuchFieldLevelEncryptionConfig': (type, message) =>
      NoSuchFieldLevelEncryptionConfig(message: message),
  'NoSuchFieldLevelEncryptionProfile': (type, message) =>
      NoSuchFieldLevelEncryptionProfile(message: message),
  'NoSuchInvalidation': (type, message) => NoSuchInvalidation(message: message),
  'NoSuchOrigin': (type, message) => NoSuchOrigin(message: message),
  'NoSuchPublicKey': (type, message) => NoSuchPublicKey(message: message),
  'NoSuchResource': (type, message) => NoSuchResource(message: message),
  'NoSuchStreamingDistribution': (type, message) =>
      NoSuchStreamingDistribution(message: message),
  'PreconditionFailed': (type, message) => PreconditionFailed(message: message),
  'PublicKeyAlreadyExists': (type, message) =>
      PublicKeyAlreadyExists(message: message),
  'PublicKeyInUse': (type, message) => PublicKeyInUse(message: message),
  'QueryArgProfileEmpty': (type, message) =>
      QueryArgProfileEmpty(message: message),
  'StreamingDistributionAlreadyExists': (type, message) =>
      StreamingDistributionAlreadyExists(message: message),
  'StreamingDistributionNotDisabled': (type, message) =>
      StreamingDistributionNotDisabled(message: message),
  'TooManyCacheBehaviors': (type, message) =>
      TooManyCacheBehaviors(message: message),
  'TooManyCertificates': (type, message) =>
      TooManyCertificates(message: message),
  'TooManyCloudFrontOriginAccessIdentities': (type, message) =>
      TooManyCloudFrontOriginAccessIdentities(message: message),
  'TooManyCookieNamesInWhiteList': (type, message) =>
      TooManyCookieNamesInWhiteList(message: message),
  'TooManyDistributionCNAMEs': (type, message) =>
      TooManyDistributionCNAMEs(message: message),
  'TooManyDistributions': (type, message) =>
      TooManyDistributions(message: message),
  'TooManyDistributionsAssociatedToFieldLevelEncryptionConfig':
      (type, message) =>
          TooManyDistributionsAssociatedToFieldLevelEncryptionConfig(
              message: message),
  'TooManyDistributionsWithLambdaAssociations': (type, message) =>
      TooManyDistributionsWithLambdaAssociations(message: message),
  'TooManyFieldLevelEncryptionConfigs': (type, message) =>
      TooManyFieldLevelEncryptionConfigs(message: message),
  'TooManyFieldLevelEncryptionContentTypeProfiles': (type, message) =>
      TooManyFieldLevelEncryptionContentTypeProfiles(message: message),
  'TooManyFieldLevelEncryptionEncryptionEntities': (type, message) =>
      TooManyFieldLevelEncryptionEncryptionEntities(message: message),
  'TooManyFieldLevelEncryptionFieldPatterns': (type, message) =>
      TooManyFieldLevelEncryptionFieldPatterns(message: message),
  'TooManyFieldLevelEncryptionProfiles': (type, message) =>
      TooManyFieldLevelEncryptionProfiles(message: message),
  'TooManyFieldLevelEncryptionQueryArgProfiles': (type, message) =>
      TooManyFieldLevelEncryptionQueryArgProfiles(message: message),
  'TooManyHeadersInForwardedValues': (type, message) =>
      TooManyHeadersInForwardedValues(message: message),
  'TooManyInvalidationsInProgress': (type, message) =>
      TooManyInvalidationsInProgress(message: message),
  'TooManyLambdaFunctionAssociations': (type, message) =>
      TooManyLambdaFunctionAssociations(message: message),
  'TooManyOriginCustomHeaders': (type, message) =>
      TooManyOriginCustomHeaders(message: message),
  'TooManyOrigins': (type, message) => TooManyOrigins(message: message),
  'TooManyPublicKeys': (type, message) => TooManyPublicKeys(message: message),
  'TooManyQueryStringParameters': (type, message) =>
      TooManyQueryStringParameters(message: message),
  'TooManyStreamingDistributionCNAMEs': (type, message) =>
      TooManyStreamingDistributionCNAMEs(message: message),
  'TooManyStreamingDistributions': (type, message) =>
      TooManyStreamingDistributions(message: message),
  'TooManyTrustedSigners': (type, message) =>
      TooManyTrustedSigners(message: message),
  'TrustedSignerDoesNotExist': (type, message) =>
      TrustedSignerDoesNotExist(message: message),
};
