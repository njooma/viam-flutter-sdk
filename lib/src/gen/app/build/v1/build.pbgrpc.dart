//
//  Generated code. Do not modify.
//  source: app/build/v1/build.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'build.pb.dart' as $1;

export 'build.pb.dart';

@$pb.GrpcServiceName('viam.app.build.v1.BuildService')
class BuildServiceClient extends $grpc.Client {
  static final _$startBuild = $grpc.ClientMethod<$1.StartBuildRequest, $1.StartBuildResponse>(
      '/viam.app.build.v1.BuildService/StartBuild',
      ($1.StartBuildRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StartBuildResponse.fromBuffer(value));
  static final _$getLogs = $grpc.ClientMethod<$1.GetLogsRequest, $1.GetLogsResponse>(
      '/viam.app.build.v1.BuildService/GetLogs',
      ($1.GetLogsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetLogsResponse.fromBuffer(value));
  static final _$listJobs = $grpc.ClientMethod<$1.ListJobsRequest, $1.ListJobsResponse>(
      '/viam.app.build.v1.BuildService/ListJobs',
      ($1.ListJobsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListJobsResponse.fromBuffer(value));

  BuildServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.StartBuildResponse> startBuild($1.StartBuildRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startBuild, request, options: options);
  }

  $grpc.ResponseStream<$1.GetLogsResponse> getLogs($1.GetLogsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getLogs, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$1.ListJobsResponse> listJobs($1.ListJobsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listJobs, request, options: options);
  }
}

@$pb.GrpcServiceName('viam.app.build.v1.BuildService')
abstract class BuildServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.app.build.v1.BuildService';

  BuildServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.StartBuildRequest, $1.StartBuildResponse>(
        'StartBuild',
        startBuild_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StartBuildRequest.fromBuffer(value),
        ($1.StartBuildResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetLogsRequest, $1.GetLogsResponse>(
        'GetLogs',
        getLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.GetLogsRequest.fromBuffer(value),
        ($1.GetLogsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListJobsRequest, $1.ListJobsResponse>(
        'ListJobs',
        listJobs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListJobsRequest.fromBuffer(value),
        ($1.ListJobsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.StartBuildResponse> startBuild_Pre($grpc.ServiceCall call, $async.Future<$1.StartBuildRequest> request) async {
    return startBuild(call, await request);
  }

  $async.Stream<$1.GetLogsResponse> getLogs_Pre($grpc.ServiceCall call, $async.Future<$1.GetLogsRequest> request) async* {
    yield* getLogs(call, await request);
  }

  $async.Future<$1.ListJobsResponse> listJobs_Pre($grpc.ServiceCall call, $async.Future<$1.ListJobsRequest> request) async {
    return listJobs(call, await request);
  }

  $async.Future<$1.StartBuildResponse> startBuild($grpc.ServiceCall call, $1.StartBuildRequest request);
  $async.Stream<$1.GetLogsResponse> getLogs($grpc.ServiceCall call, $1.GetLogsRequest request);
  $async.Future<$1.ListJobsResponse> listJobs($grpc.ServiceCall call, $1.ListJobsRequest request);
}
