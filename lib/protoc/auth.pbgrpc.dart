//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $0;

export 'auth.pb.dart';

@$pb.GrpcServiceName('AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.AuthRequest, $0.AuthResponse>(
      '/AuthService/Login',
      ($0.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$crearReconocimiento = $grpc.ClientMethod<$0.CrearRecoRequest, $0.CrearRecoResponse>(
      '/AuthService/crearReconocimiento',
      ($0.CrearRecoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CrearRecoResponse.fromBuffer(value));
  static final _$editarReconocimiento = $grpc.ClientMethod<$0.EditarRecoRequest, $0.EditarRecoResponse>(
      '/AuthService/editarReconocimiento',
      ($0.EditarRecoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditarRecoResponse.fromBuffer(value));
  static final _$eliminarReconocimiento = $grpc.ClientMethod<$0.EliminarRecoRequest, $0.EliminarRecoResponse>(
      '/AuthService/eliminarReconocimiento',
      ($0.EliminarRecoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EliminarRecoResponse.fromBuffer(value));
  static final _$obtenerReconocimiento = $grpc.ClientMethod<$0.ObtenerRecoRequest, $0.ReconocimientoDetalle>(
      '/AuthService/obtenerReconocimiento',
      ($0.ObtenerRecoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReconocimientoDetalle.fromBuffer(value));
  static final _$crearproducto = $grpc.ClientMethod<$0.CrearProductoRequest, $0.CrearProductoResponse>(
      '/AuthService/crearproducto',
      ($0.CrearProductoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CrearProductoResponse.fromBuffer(value));
  static final _$editarproducto = $grpc.ClientMethod<$0.editarProductoRequest, $0.CrearProductoResponse>(
      '/AuthService/editarproducto',
      ($0.editarProductoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CrearProductoResponse.fromBuffer(value));
  static final _$eliminarproducto = $grpc.ClientMethod<$0.EliminarProductoRequest, $0.EliminarProductoResponse>(
      '/AuthService/eliminarproducto',
      ($0.EliminarProductoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EliminarProductoResponse.fromBuffer(value));
  static final _$guardarImagen = $grpc.ClientMethod<$0.GuardarImagenRequest, $0.GuardarImagenResponse>(
      '/AuthService/guardarImagen',
      ($0.GuardarImagenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GuardarImagenResponse.fromBuffer(value));
  static final _$eliminadaImagen = $grpc.ClientMethod<$0.eliminarImagenRequest, $0.eliminarImagenResponse>(
      '/AuthService/eliminadaImagen',
      ($0.eliminarImagenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.eliminarImagenResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthResponse> login($0.AuthRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrearRecoResponse> crearReconocimiento($0.CrearRecoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$crearReconocimiento, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditarRecoResponse> editarReconocimiento($0.EditarRecoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editarReconocimiento, request, options: options);
  }

  $grpc.ResponseFuture<$0.EliminarRecoResponse> eliminarReconocimiento($0.EliminarRecoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$eliminarReconocimiento, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReconocimientoDetalle> obtenerReconocimiento($0.ObtenerRecoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$obtenerReconocimiento, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrearProductoResponse> crearproducto($0.CrearProductoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$crearproducto, request, options: options);
  }

  $grpc.ResponseFuture<$0.CrearProductoResponse> editarproducto($0.editarProductoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editarproducto, request, options: options);
  }

  $grpc.ResponseFuture<$0.EliminarProductoResponse> eliminarproducto($0.EliminarProductoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$eliminarproducto, request, options: options);
  }

  $grpc.ResponseFuture<$0.GuardarImagenResponse> guardarImagen($0.GuardarImagenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$guardarImagen, request, options: options);
  }

  $grpc.ResponseFuture<$0.eliminarImagenResponse> eliminadaImagen($0.eliminarImagenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$eliminadaImagen, request, options: options);
  }
}

@$pb.GrpcServiceName('AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrearRecoRequest, $0.CrearRecoResponse>(
        'crearReconocimiento',
        crearReconocimiento_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CrearRecoRequest.fromBuffer(value),
        ($0.CrearRecoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditarRecoRequest, $0.EditarRecoResponse>(
        'editarReconocimiento',
        editarReconocimiento_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditarRecoRequest.fromBuffer(value),
        ($0.EditarRecoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EliminarRecoRequest, $0.EliminarRecoResponse>(
        'eliminarReconocimiento',
        eliminarReconocimiento_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EliminarRecoRequest.fromBuffer(value),
        ($0.EliminarRecoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ObtenerRecoRequest, $0.ReconocimientoDetalle>(
        'obtenerReconocimiento',
        obtenerReconocimiento_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ObtenerRecoRequest.fromBuffer(value),
        ($0.ReconocimientoDetalle value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CrearProductoRequest, $0.CrearProductoResponse>(
        'crearproducto',
        crearproducto_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CrearProductoRequest.fromBuffer(value),
        ($0.CrearProductoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.editarProductoRequest, $0.CrearProductoResponse>(
        'editarproducto',
        editarproducto_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.editarProductoRequest.fromBuffer(value),
        ($0.CrearProductoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EliminarProductoRequest, $0.EliminarProductoResponse>(
        'eliminarproducto',
        eliminarproducto_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EliminarProductoRequest.fromBuffer(value),
        ($0.EliminarProductoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GuardarImagenRequest, $0.GuardarImagenResponse>(
        'guardarImagen',
        guardarImagen_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GuardarImagenRequest.fromBuffer(value),
        ($0.GuardarImagenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.eliminarImagenRequest, $0.eliminarImagenResponse>(
        'eliminadaImagen',
        eliminadaImagen_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.eliminarImagenRequest.fromBuffer(value),
        ($0.eliminarImagenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthResponse> login_Pre($grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.CrearRecoResponse> crearReconocimiento_Pre($grpc.ServiceCall call, $async.Future<$0.CrearRecoRequest> request) async {
    return crearReconocimiento(call, await request);
  }

  $async.Future<$0.EditarRecoResponse> editarReconocimiento_Pre($grpc.ServiceCall call, $async.Future<$0.EditarRecoRequest> request) async {
    return editarReconocimiento(call, await request);
  }

  $async.Future<$0.EliminarRecoResponse> eliminarReconocimiento_Pre($grpc.ServiceCall call, $async.Future<$0.EliminarRecoRequest> request) async {
    return eliminarReconocimiento(call, await request);
  }

  $async.Future<$0.ReconocimientoDetalle> obtenerReconocimiento_Pre($grpc.ServiceCall call, $async.Future<$0.ObtenerRecoRequest> request) async {
    return obtenerReconocimiento(call, await request);
  }

  $async.Future<$0.CrearProductoResponse> crearproducto_Pre($grpc.ServiceCall call, $async.Future<$0.CrearProductoRequest> request) async {
    return crearproducto(call, await request);
  }

  $async.Future<$0.CrearProductoResponse> editarproducto_Pre($grpc.ServiceCall call, $async.Future<$0.editarProductoRequest> request) async {
    return editarproducto(call, await request);
  }

  $async.Future<$0.EliminarProductoResponse> eliminarproducto_Pre($grpc.ServiceCall call, $async.Future<$0.EliminarProductoRequest> request) async {
    return eliminarproducto(call, await request);
  }

  $async.Future<$0.GuardarImagenResponse> guardarImagen_Pre($grpc.ServiceCall call, $async.Future<$0.GuardarImagenRequest> request) async {
    return guardarImagen(call, await request);
  }

  $async.Future<$0.eliminarImagenResponse> eliminadaImagen_Pre($grpc.ServiceCall call, $async.Future<$0.eliminarImagenRequest> request) async {
    return eliminadaImagen(call, await request);
  }

  $async.Future<$0.AuthResponse> login($grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.CrearRecoResponse> crearReconocimiento($grpc.ServiceCall call, $0.CrearRecoRequest request);
  $async.Future<$0.EditarRecoResponse> editarReconocimiento($grpc.ServiceCall call, $0.EditarRecoRequest request);
  $async.Future<$0.EliminarRecoResponse> eliminarReconocimiento($grpc.ServiceCall call, $0.EliminarRecoRequest request);
  $async.Future<$0.ReconocimientoDetalle> obtenerReconocimiento($grpc.ServiceCall call, $0.ObtenerRecoRequest request);
  $async.Future<$0.CrearProductoResponse> crearproducto($grpc.ServiceCall call, $0.CrearProductoRequest request);
  $async.Future<$0.CrearProductoResponse> editarproducto($grpc.ServiceCall call, $0.editarProductoRequest request);
  $async.Future<$0.EliminarProductoResponse> eliminarproducto($grpc.ServiceCall call, $0.EliminarProductoRequest request);
  $async.Future<$0.GuardarImagenResponse> guardarImagen($grpc.ServiceCall call, $0.GuardarImagenRequest request);
  $async.Future<$0.eliminarImagenResponse> eliminadaImagen($grpc.ServiceCall call, $0.eliminarImagenRequest request);
}
