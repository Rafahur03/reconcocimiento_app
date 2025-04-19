//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AuthRequest extends $pb.GeneratedMessage {
  factory AuthRequest({
    $core.int? idUsuario,
    $core.String? clave,
  }) {
    final $result = create();
    if (idUsuario != null) {
      $result.idUsuario = idUsuario;
    }
    if (clave != null) {
      $result.clave = clave;
    }
    return $result;
  }
  AuthRequest._() : super();
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdUsuario', $pb.PbFieldType.O3, protoName: 'Id_usuario')
    ..aOS(2, _omitFieldNames ? '' : 'Clave', protoName: 'Clave')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idUsuario => $_getIZ(0);
  @$pb.TagNumber(1)
  set idUsuario($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdUsuario() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdUsuario() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get clave => $_getSZ(1);
  @$pb.TagNumber(2)
  set clave($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClave() => $_has(1);
  @$pb.TagNumber(2)
  void clearClave() => clearField(2);
}

class AuthResponse extends $pb.GeneratedMessage {
  factory AuthResponse({
    $core.String? mensaje,
    $core.String? token,
    $core.String? usuario,
    $core.bool? autenticado,
  }) {
    final $result = create();
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    if (token != null) {
      $result.token = token;
    }
    if (usuario != null) {
      $result.usuario = usuario;
    }
    if (autenticado != null) {
      $result.autenticado = autenticado;
    }
    return $result;
  }
  AuthResponse._() : super();
  factory AuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..aOS(2, _omitFieldNames ? '' : 'Token', protoName: 'Token')
    ..aOS(3, _omitFieldNames ? '' : 'Usuario', protoName: 'Usuario')
    ..aOB(4, _omitFieldNames ? '' : 'Autenticado', protoName: 'Autenticado')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthResponse copyWith(void Function(AuthResponse) updates) => super.copyWith((message) => updates(message as AuthResponse)) as AuthResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() => $pb.PbList<AuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthResponse>(create);
  static AuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mensaje => $_getSZ(0);
  @$pb.TagNumber(1)
  set mensaje($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMensaje() => $_has(0);
  @$pb.TagNumber(1)
  void clearMensaje() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get usuario => $_getSZ(2);
  @$pb.TagNumber(3)
  set usuario($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsuario() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsuario() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get autenticado => $_getBF(3);
  @$pb.TagNumber(4)
  set autenticado($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAutenticado() => $_has(3);
  @$pb.TagNumber(4)
  void clearAutenticado() => clearField(4);
}

/// crearReconocimiento ----------------------------------------------------------
class CrearRecoRequest extends $pb.GeneratedMessage {
  factory CrearRecoRequest({
    $core.String? do_1,
    $core.String? documentoTranspote,
  }) {
    final $result = create();
    if (do_1 != null) {
      $result.do_1 = do_1;
    }
    if (documentoTranspote != null) {
      $result.documentoTranspote = documentoTranspote;
    }
    return $result;
  }
  CrearRecoRequest._() : super();
  factory CrearRecoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrearRecoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CrearRecoRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Do', protoName: 'Do')
    ..aOS(2, _omitFieldNames ? '' : 'DocumentoTranspote', protoName: 'DocumentoTranspote')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CrearRecoRequest clone() => CrearRecoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CrearRecoRequest copyWith(void Function(CrearRecoRequest) updates) => super.copyWith((message) => updates(message as CrearRecoRequest)) as CrearRecoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrearRecoRequest create() => CrearRecoRequest._();
  CrearRecoRequest createEmptyInstance() => create();
  static $pb.PbList<CrearRecoRequest> createRepeated() => $pb.PbList<CrearRecoRequest>();
  @$core.pragma('dart2js:noInline')
  static CrearRecoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrearRecoRequest>(create);
  static CrearRecoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get do_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set do_1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDo_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDo_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentoTranspote => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentoTranspote($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentoTranspote() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentoTranspote() => clearField(2);
}

class CrearRecoResponse extends $pb.GeneratedMessage {
  factory CrearRecoResponse({
    $core.int? idReco,
    $core.String? do_2,
    $core.String? documentoTranspote,
    $core.String? mensaje,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (do_2 != null) {
      $result.do_2 = do_2;
    }
    if (documentoTranspote != null) {
      $result.documentoTranspote = documentoTranspote;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    return $result;
  }
  CrearRecoResponse._() : super();
  factory CrearRecoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrearRecoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CrearRecoResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(2, _omitFieldNames ? '' : 'Do', protoName: 'Do')
    ..aOS(3, _omitFieldNames ? '' : 'DocumentoTranspote', protoName: 'DocumentoTranspote')
    ..aOS(4, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CrearRecoResponse clone() => CrearRecoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CrearRecoResponse copyWith(void Function(CrearRecoResponse) updates) => super.copyWith((message) => updates(message as CrearRecoResponse)) as CrearRecoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrearRecoResponse create() => CrearRecoResponse._();
  CrearRecoResponse createEmptyInstance() => create();
  static $pb.PbList<CrearRecoResponse> createRepeated() => $pb.PbList<CrearRecoResponse>();
  @$core.pragma('dart2js:noInline')
  static CrearRecoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrearRecoResponse>(create);
  static CrearRecoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get do_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set do_2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDo_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearDo_2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentoTranspote => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentoTranspote($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocumentoTranspote() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentoTranspote() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mensaje => $_getSZ(3);
  @$pb.TagNumber(4)
  set mensaje($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMensaje() => $_has(3);
  @$pb.TagNumber(4)
  void clearMensaje() => clearField(4);
}

class EditarRecoRequest extends $pb.GeneratedMessage {
  factory EditarRecoRequest({
    $core.String? do_1,
    $core.int? idReco,
    $core.String? documentoTranspote,
  }) {
    final $result = create();
    if (do_1 != null) {
      $result.do_1 = do_1;
    }
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (documentoTranspote != null) {
      $result.documentoTranspote = documentoTranspote;
    }
    return $result;
  }
  EditarRecoRequest._() : super();
  factory EditarRecoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditarRecoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditarRecoRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Do', protoName: 'Do')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(3, _omitFieldNames ? '' : 'DocumentoTranspote', protoName: 'DocumentoTranspote')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditarRecoRequest clone() => EditarRecoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditarRecoRequest copyWith(void Function(EditarRecoRequest) updates) => super.copyWith((message) => updates(message as EditarRecoRequest)) as EditarRecoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditarRecoRequest create() => EditarRecoRequest._();
  EditarRecoRequest createEmptyInstance() => create();
  static $pb.PbList<EditarRecoRequest> createRepeated() => $pb.PbList<EditarRecoRequest>();
  @$core.pragma('dart2js:noInline')
  static EditarRecoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditarRecoRequest>(create);
  static EditarRecoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get do_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set do_1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDo_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDo_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idReco => $_getIZ(1);
  @$pb.TagNumber(2)
  set idReco($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdReco() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdReco() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentoTranspote => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentoTranspote($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocumentoTranspote() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentoTranspote() => clearField(3);
}

class EditarRecoResponse extends $pb.GeneratedMessage {
  factory EditarRecoResponse({
    $core.int? idReco,
    $core.String? do_2,
    $core.String? documentoTranspote,
    $core.String? mensaje,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (do_2 != null) {
      $result.do_2 = do_2;
    }
    if (documentoTranspote != null) {
      $result.documentoTranspote = documentoTranspote;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    return $result;
  }
  EditarRecoResponse._() : super();
  factory EditarRecoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditarRecoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditarRecoResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(2, _omitFieldNames ? '' : 'Do', protoName: 'Do')
    ..aOS(3, _omitFieldNames ? '' : 'DocumentoTranspote', protoName: 'DocumentoTranspote')
    ..aOS(4, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditarRecoResponse clone() => EditarRecoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditarRecoResponse copyWith(void Function(EditarRecoResponse) updates) => super.copyWith((message) => updates(message as EditarRecoResponse)) as EditarRecoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditarRecoResponse create() => EditarRecoResponse._();
  EditarRecoResponse createEmptyInstance() => create();
  static $pb.PbList<EditarRecoResponse> createRepeated() => $pb.PbList<EditarRecoResponse>();
  @$core.pragma('dart2js:noInline')
  static EditarRecoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditarRecoResponse>(create);
  static EditarRecoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get do_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set do_2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDo_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearDo_2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentoTranspote => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentoTranspote($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocumentoTranspote() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentoTranspote() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mensaje => $_getSZ(3);
  @$pb.TagNumber(4)
  set mensaje($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMensaje() => $_has(3);
  @$pb.TagNumber(4)
  void clearMensaje() => clearField(4);
}

class EliminarRecoRequest extends $pb.GeneratedMessage {
  factory EliminarRecoRequest({
    $core.int? idReco,
    $core.String? autorizacion,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (autorizacion != null) {
      $result.autorizacion = autorizacion;
    }
    return $result;
  }
  EliminarRecoRequest._() : super();
  factory EliminarRecoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EliminarRecoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EliminarRecoRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(2, _omitFieldNames ? '' : 'autorizacion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EliminarRecoRequest clone() => EliminarRecoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EliminarRecoRequest copyWith(void Function(EliminarRecoRequest) updates) => super.copyWith((message) => updates(message as EliminarRecoRequest)) as EliminarRecoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EliminarRecoRequest create() => EliminarRecoRequest._();
  EliminarRecoRequest createEmptyInstance() => create();
  static $pb.PbList<EliminarRecoRequest> createRepeated() => $pb.PbList<EliminarRecoRequest>();
  @$core.pragma('dart2js:noInline')
  static EliminarRecoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EliminarRecoRequest>(create);
  static EliminarRecoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get autorizacion => $_getSZ(1);
  @$pb.TagNumber(2)
  set autorizacion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutorizacion() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutorizacion() => clearField(2);
}

class EliminarRecoResponse extends $pb.GeneratedMessage {
  factory EliminarRecoResponse({
    $core.int? idReco,
    $core.String? mensaje,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    return $result;
  }
  EliminarRecoResponse._() : super();
  factory EliminarRecoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EliminarRecoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EliminarRecoResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(2, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EliminarRecoResponse clone() => EliminarRecoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EliminarRecoResponse copyWith(void Function(EliminarRecoResponse) updates) => super.copyWith((message) => updates(message as EliminarRecoResponse)) as EliminarRecoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EliminarRecoResponse create() => EliminarRecoResponse._();
  EliminarRecoResponse createEmptyInstance() => create();
  static $pb.PbList<EliminarRecoResponse> createRepeated() => $pb.PbList<EliminarRecoResponse>();
  @$core.pragma('dart2js:noInline')
  static EliminarRecoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EliminarRecoResponse>(create);
  static EliminarRecoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mensaje => $_getSZ(1);
  @$pb.TagNumber(2)
  set mensaje($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMensaje() => $_has(1);
  @$pb.TagNumber(2)
  void clearMensaje() => clearField(2);
}

class ObtenerRecoRequest extends $pb.GeneratedMessage {
  factory ObtenerRecoRequest({
    $core.String? do_1,
    $core.String? documentoTranspote,
  }) {
    final $result = create();
    if (do_1 != null) {
      $result.do_1 = do_1;
    }
    if (documentoTranspote != null) {
      $result.documentoTranspote = documentoTranspote;
    }
    return $result;
  }
  ObtenerRecoRequest._() : super();
  factory ObtenerRecoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObtenerRecoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObtenerRecoRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Do', protoName: 'Do')
    ..aOS(2, _omitFieldNames ? '' : 'DocumentoTranspote', protoName: 'DocumentoTranspote')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObtenerRecoRequest clone() => ObtenerRecoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObtenerRecoRequest copyWith(void Function(ObtenerRecoRequest) updates) => super.copyWith((message) => updates(message as ObtenerRecoRequest)) as ObtenerRecoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObtenerRecoRequest create() => ObtenerRecoRequest._();
  ObtenerRecoRequest createEmptyInstance() => create();
  static $pb.PbList<ObtenerRecoRequest> createRepeated() => $pb.PbList<ObtenerRecoRequest>();
  @$core.pragma('dart2js:noInline')
  static ObtenerRecoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObtenerRecoRequest>(create);
  static ObtenerRecoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get do_1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set do_1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDo_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDo_1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get documentoTranspote => $_getSZ(1);
  @$pb.TagNumber(2)
  set documentoTranspote($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDocumentoTranspote() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocumentoTranspote() => clearField(2);
}

class ReconocimientoDetalle extends $pb.GeneratedMessage {
  factory ReconocimientoDetalle({
    $core.int? idReco,
    $core.String? do_2,
    $core.String? documentoTranspote,
    $core.Iterable<Producto>? productos,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (do_2 != null) {
      $result.do_2 = do_2;
    }
    if (documentoTranspote != null) {
      $result.documentoTranspote = documentoTranspote;
    }
    if (productos != null) {
      $result.productos.addAll(productos);
    }
    return $result;
  }
  ReconocimientoDetalle._() : super();
  factory ReconocimientoDetalle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReconocimientoDetalle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReconocimientoDetalle', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(2, _omitFieldNames ? '' : 'Do', protoName: 'Do')
    ..aOS(3, _omitFieldNames ? '' : 'DocumentoTranspote', protoName: 'DocumentoTranspote')
    ..pc<Producto>(4, _omitFieldNames ? '' : 'Productos', $pb.PbFieldType.PM, protoName: 'Productos', subBuilder: Producto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReconocimientoDetalle clone() => ReconocimientoDetalle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReconocimientoDetalle copyWith(void Function(ReconocimientoDetalle) updates) => super.copyWith((message) => updates(message as ReconocimientoDetalle)) as ReconocimientoDetalle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReconocimientoDetalle create() => ReconocimientoDetalle._();
  ReconocimientoDetalle createEmptyInstance() => create();
  static $pb.PbList<ReconocimientoDetalle> createRepeated() => $pb.PbList<ReconocimientoDetalle>();
  @$core.pragma('dart2js:noInline')
  static ReconocimientoDetalle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReconocimientoDetalle>(create);
  static ReconocimientoDetalle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get do_2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set do_2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDo_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearDo_2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentoTranspote => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentoTranspote($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDocumentoTranspote() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentoTranspote() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Producto> get productos => $_getList(3);
}

class CrearProductoRequest extends $pb.GeneratedMessage {
  factory CrearProductoRequest({
    $core.int? itemFactura,
    $core.int? idReco,
    $core.String? nombre,
    $core.String? marca,
    $core.String? modelo,
    $core.String? referencia,
    $core.String? tipo,
    $core.String? voltaje,
    $core.String? componentes,
    $core.String? serial,
    $core.String? otrasCaracteristicas,
  }) {
    final $result = create();
    if (itemFactura != null) {
      $result.itemFactura = itemFactura;
    }
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (nombre != null) {
      $result.nombre = nombre;
    }
    if (marca != null) {
      $result.marca = marca;
    }
    if (modelo != null) {
      $result.modelo = modelo;
    }
    if (referencia != null) {
      $result.referencia = referencia;
    }
    if (tipo != null) {
      $result.tipo = tipo;
    }
    if (voltaje != null) {
      $result.voltaje = voltaje;
    }
    if (componentes != null) {
      $result.componentes = componentes;
    }
    if (serial != null) {
      $result.serial = serial;
    }
    if (otrasCaracteristicas != null) {
      $result.otrasCaracteristicas = otrasCaracteristicas;
    }
    return $result;
  }
  CrearProductoRequest._() : super();
  factory CrearProductoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrearProductoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CrearProductoRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ItemFactura', $pb.PbFieldType.O3, protoName: 'ItemFactura')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(3, _omitFieldNames ? '' : 'Nombre', protoName: 'Nombre')
    ..aOS(4, _omitFieldNames ? '' : 'Marca', protoName: 'Marca')
    ..aOS(5, _omitFieldNames ? '' : 'Modelo', protoName: 'Modelo')
    ..aOS(6, _omitFieldNames ? '' : 'Referencia', protoName: 'Referencia')
    ..aOS(7, _omitFieldNames ? '' : 'Tipo', protoName: 'Tipo')
    ..aOS(8, _omitFieldNames ? '' : 'Voltaje', protoName: 'Voltaje')
    ..aOS(9, _omitFieldNames ? '' : 'Componentes', protoName: 'Componentes')
    ..aOS(10, _omitFieldNames ? '' : 'serial')
    ..aOS(11, _omitFieldNames ? '' : 'OtrasCaracteristicas', protoName: 'OtrasCaracteristicas')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CrearProductoRequest clone() => CrearProductoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CrearProductoRequest copyWith(void Function(CrearProductoRequest) updates) => super.copyWith((message) => updates(message as CrearProductoRequest)) as CrearProductoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrearProductoRequest create() => CrearProductoRequest._();
  CrearProductoRequest createEmptyInstance() => create();
  static $pb.PbList<CrearProductoRequest> createRepeated() => $pb.PbList<CrearProductoRequest>();
  @$core.pragma('dart2js:noInline')
  static CrearProductoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrearProductoRequest>(create);
  static CrearProductoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get itemFactura => $_getIZ(0);
  @$pb.TagNumber(1)
  set itemFactura($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemFactura() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemFactura() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idReco => $_getIZ(1);
  @$pb.TagNumber(2)
  set idReco($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdReco() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdReco() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombre => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombre($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombre() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombre() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get marca => $_getSZ(3);
  @$pb.TagNumber(4)
  set marca($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarca() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarca() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get modelo => $_getSZ(4);
  @$pb.TagNumber(5)
  set modelo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModelo() => $_has(4);
  @$pb.TagNumber(5)
  void clearModelo() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get referencia => $_getSZ(5);
  @$pb.TagNumber(6)
  set referencia($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReferencia() => $_has(5);
  @$pb.TagNumber(6)
  void clearReferencia() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tipo => $_getSZ(6);
  @$pb.TagNumber(7)
  set tipo($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTipo() => $_has(6);
  @$pb.TagNumber(7)
  void clearTipo() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get voltaje => $_getSZ(7);
  @$pb.TagNumber(8)
  set voltaje($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVoltaje() => $_has(7);
  @$pb.TagNumber(8)
  void clearVoltaje() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get componentes => $_getSZ(8);
  @$pb.TagNumber(9)
  set componentes($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasComponentes() => $_has(8);
  @$pb.TagNumber(9)
  void clearComponentes() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get serial => $_getSZ(9);
  @$pb.TagNumber(10)
  set serial($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSerial() => $_has(9);
  @$pb.TagNumber(10)
  void clearSerial() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get otrasCaracteristicas => $_getSZ(10);
  @$pb.TagNumber(11)
  set otrasCaracteristicas($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOtrasCaracteristicas() => $_has(10);
  @$pb.TagNumber(11)
  void clearOtrasCaracteristicas() => clearField(11);
}

class editarProductoRequest extends $pb.GeneratedMessage {
  factory editarProductoRequest({
    $core.int? itemFactura,
    $core.int? idReco,
    $core.String? nombre,
    $core.String? marca,
    $core.String? modelo,
    $core.String? referencia,
    $core.String? tipo,
    $core.String? voltaje,
    $core.String? componentes,
    $core.String? otrasCaracteristicas,
    $core.String? serial,
    $core.int? idProducto,
  }) {
    final $result = create();
    if (itemFactura != null) {
      $result.itemFactura = itemFactura;
    }
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (nombre != null) {
      $result.nombre = nombre;
    }
    if (marca != null) {
      $result.marca = marca;
    }
    if (modelo != null) {
      $result.modelo = modelo;
    }
    if (referencia != null) {
      $result.referencia = referencia;
    }
    if (tipo != null) {
      $result.tipo = tipo;
    }
    if (voltaje != null) {
      $result.voltaje = voltaje;
    }
    if (componentes != null) {
      $result.componentes = componentes;
    }
    if (otrasCaracteristicas != null) {
      $result.otrasCaracteristicas = otrasCaracteristicas;
    }
    if (serial != null) {
      $result.serial = serial;
    }
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    return $result;
  }
  editarProductoRequest._() : super();
  factory editarProductoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory editarProductoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'editarProductoRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ItemFactura', $pb.PbFieldType.O3, protoName: 'ItemFactura')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..aOS(3, _omitFieldNames ? '' : 'Nombre', protoName: 'Nombre')
    ..aOS(4, _omitFieldNames ? '' : 'Marca', protoName: 'Marca')
    ..aOS(5, _omitFieldNames ? '' : 'Modelo', protoName: 'Modelo')
    ..aOS(6, _omitFieldNames ? '' : 'Referencia', protoName: 'Referencia')
    ..aOS(7, _omitFieldNames ? '' : 'Tipo', protoName: 'Tipo')
    ..aOS(8, _omitFieldNames ? '' : 'Voltaje', protoName: 'Voltaje')
    ..aOS(9, _omitFieldNames ? '' : 'Componentes', protoName: 'Componentes')
    ..aOS(10, _omitFieldNames ? '' : 'OtrasCaracteristicas', protoName: 'OtrasCaracteristicas')
    ..aOS(11, _omitFieldNames ? '' : 'serial')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  editarProductoRequest clone() => editarProductoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  editarProductoRequest copyWith(void Function(editarProductoRequest) updates) => super.copyWith((message) => updates(message as editarProductoRequest)) as editarProductoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static editarProductoRequest create() => editarProductoRequest._();
  editarProductoRequest createEmptyInstance() => create();
  static $pb.PbList<editarProductoRequest> createRepeated() => $pb.PbList<editarProductoRequest>();
  @$core.pragma('dart2js:noInline')
  static editarProductoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<editarProductoRequest>(create);
  static editarProductoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get itemFactura => $_getIZ(0);
  @$pb.TagNumber(1)
  set itemFactura($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemFactura() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemFactura() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idReco => $_getIZ(1);
  @$pb.TagNumber(2)
  set idReco($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdReco() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdReco() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombre => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombre($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombre() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombre() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get marca => $_getSZ(3);
  @$pb.TagNumber(4)
  set marca($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarca() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarca() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get modelo => $_getSZ(4);
  @$pb.TagNumber(5)
  set modelo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModelo() => $_has(4);
  @$pb.TagNumber(5)
  void clearModelo() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get referencia => $_getSZ(5);
  @$pb.TagNumber(6)
  set referencia($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReferencia() => $_has(5);
  @$pb.TagNumber(6)
  void clearReferencia() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tipo => $_getSZ(6);
  @$pb.TagNumber(7)
  set tipo($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTipo() => $_has(6);
  @$pb.TagNumber(7)
  void clearTipo() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get voltaje => $_getSZ(7);
  @$pb.TagNumber(8)
  set voltaje($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVoltaje() => $_has(7);
  @$pb.TagNumber(8)
  void clearVoltaje() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get componentes => $_getSZ(8);
  @$pb.TagNumber(9)
  set componentes($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasComponentes() => $_has(8);
  @$pb.TagNumber(9)
  void clearComponentes() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get otrasCaracteristicas => $_getSZ(9);
  @$pb.TagNumber(10)
  set otrasCaracteristicas($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOtrasCaracteristicas() => $_has(9);
  @$pb.TagNumber(10)
  void clearOtrasCaracteristicas() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get serial => $_getSZ(10);
  @$pb.TagNumber(11)
  set serial($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSerial() => $_has(10);
  @$pb.TagNumber(11)
  void clearSerial() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get idProducto => $_getIZ(11);
  @$pb.TagNumber(12)
  set idProducto($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIdProducto() => $_has(11);
  @$pb.TagNumber(12)
  void clearIdProducto() => clearField(12);
}

class CrearProductoResponse extends $pb.GeneratedMessage {
  factory CrearProductoResponse({
    $core.int? itemFactura,
    $core.String? nombre,
    $core.String? marca,
    $core.String? modelo,
    $core.String? referencia,
    $core.String? tipo,
    $core.String? voltaje,
    $core.String? componentes,
    $core.String? otrasCaracteristicas,
    $core.int? idProducto,
    $core.String? mensaje,
    $core.String? serial,
  }) {
    final $result = create();
    if (itemFactura != null) {
      $result.itemFactura = itemFactura;
    }
    if (nombre != null) {
      $result.nombre = nombre;
    }
    if (marca != null) {
      $result.marca = marca;
    }
    if (modelo != null) {
      $result.modelo = modelo;
    }
    if (referencia != null) {
      $result.referencia = referencia;
    }
    if (tipo != null) {
      $result.tipo = tipo;
    }
    if (voltaje != null) {
      $result.voltaje = voltaje;
    }
    if (componentes != null) {
      $result.componentes = componentes;
    }
    if (otrasCaracteristicas != null) {
      $result.otrasCaracteristicas = otrasCaracteristicas;
    }
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    if (serial != null) {
      $result.serial = serial;
    }
    return $result;
  }
  CrearProductoResponse._() : super();
  factory CrearProductoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrearProductoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CrearProductoResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'ItemFactura', $pb.PbFieldType.O3, protoName: 'ItemFactura')
    ..aOS(3, _omitFieldNames ? '' : 'Nombre', protoName: 'Nombre')
    ..aOS(4, _omitFieldNames ? '' : 'Marca', protoName: 'Marca')
    ..aOS(5, _omitFieldNames ? '' : 'Modelo', protoName: 'Modelo')
    ..aOS(6, _omitFieldNames ? '' : 'Referencia', protoName: 'Referencia')
    ..aOS(7, _omitFieldNames ? '' : 'Tipo', protoName: 'Tipo')
    ..aOS(8, _omitFieldNames ? '' : 'Voltaje', protoName: 'Voltaje')
    ..aOS(9, _omitFieldNames ? '' : 'Componentes', protoName: 'Componentes')
    ..aOS(10, _omitFieldNames ? '' : 'OtrasCaracteristicas', protoName: 'OtrasCaracteristicas')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..aOS(12, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..aOS(13, _omitFieldNames ? '' : 'serial')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CrearProductoResponse clone() => CrearProductoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CrearProductoResponse copyWith(void Function(CrearProductoResponse) updates) => super.copyWith((message) => updates(message as CrearProductoResponse)) as CrearProductoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrearProductoResponse create() => CrearProductoResponse._();
  CrearProductoResponse createEmptyInstance() => create();
  static $pb.PbList<CrearProductoResponse> createRepeated() => $pb.PbList<CrearProductoResponse>();
  @$core.pragma('dart2js:noInline')
  static CrearProductoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrearProductoResponse>(create);
  static CrearProductoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get itemFactura => $_getIZ(0);
  @$pb.TagNumber(1)
  set itemFactura($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemFactura() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemFactura() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get nombre => $_getSZ(1);
  @$pb.TagNumber(3)
  set nombre($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombre() => $_has(1);
  @$pb.TagNumber(3)
  void clearNombre() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get marca => $_getSZ(2);
  @$pb.TagNumber(4)
  set marca($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarca() => $_has(2);
  @$pb.TagNumber(4)
  void clearMarca() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get modelo => $_getSZ(3);
  @$pb.TagNumber(5)
  set modelo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasModelo() => $_has(3);
  @$pb.TagNumber(5)
  void clearModelo() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get referencia => $_getSZ(4);
  @$pb.TagNumber(6)
  set referencia($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasReferencia() => $_has(4);
  @$pb.TagNumber(6)
  void clearReferencia() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tipo => $_getSZ(5);
  @$pb.TagNumber(7)
  set tipo($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasTipo() => $_has(5);
  @$pb.TagNumber(7)
  void clearTipo() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get voltaje => $_getSZ(6);
  @$pb.TagNumber(8)
  set voltaje($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasVoltaje() => $_has(6);
  @$pb.TagNumber(8)
  void clearVoltaje() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get componentes => $_getSZ(7);
  @$pb.TagNumber(9)
  set componentes($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasComponentes() => $_has(7);
  @$pb.TagNumber(9)
  void clearComponentes() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get otrasCaracteristicas => $_getSZ(8);
  @$pb.TagNumber(10)
  set otrasCaracteristicas($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasOtrasCaracteristicas() => $_has(8);
  @$pb.TagNumber(10)
  void clearOtrasCaracteristicas() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get idProducto => $_getIZ(9);
  @$pb.TagNumber(11)
  set idProducto($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasIdProducto() => $_has(9);
  @$pb.TagNumber(11)
  void clearIdProducto() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get mensaje => $_getSZ(10);
  @$pb.TagNumber(12)
  set mensaje($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasMensaje() => $_has(10);
  @$pb.TagNumber(12)
  void clearMensaje() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get serial => $_getSZ(11);
  @$pb.TagNumber(13)
  set serial($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasSerial() => $_has(11);
  @$pb.TagNumber(13)
  void clearSerial() => clearField(13);
}

class EliminarProductoRequest extends $pb.GeneratedMessage {
  factory EliminarProductoRequest({
    $core.int? idReco,
    $core.int? idProducto,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    return $result;
  }
  EliminarProductoRequest._() : super();
  factory EliminarProductoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EliminarProductoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EliminarProductoRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EliminarProductoRequest clone() => EliminarProductoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EliminarProductoRequest copyWith(void Function(EliminarProductoRequest) updates) => super.copyWith((message) => updates(message as EliminarProductoRequest)) as EliminarProductoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EliminarProductoRequest create() => EliminarProductoRequest._();
  EliminarProductoRequest createEmptyInstance() => create();
  static $pb.PbList<EliminarProductoRequest> createRepeated() => $pb.PbList<EliminarProductoRequest>();
  @$core.pragma('dart2js:noInline')
  static EliminarProductoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EliminarProductoRequest>(create);
  static EliminarProductoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idProducto => $_getIZ(1);
  @$pb.TagNumber(2)
  set idProducto($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdProducto() => clearField(2);
}

class EliminarProductoResponse extends $pb.GeneratedMessage {
  factory EliminarProductoResponse({
    $core.int? idReco,
    $core.int? idProducto,
    $core.String? mensaje,
  }) {
    final $result = create();
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    return $result;
  }
  EliminarProductoResponse._() : super();
  factory EliminarProductoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EliminarProductoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EliminarProductoResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..aOS(3, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EliminarProductoResponse clone() => EliminarProductoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EliminarProductoResponse copyWith(void Function(EliminarProductoResponse) updates) => super.copyWith((message) => updates(message as EliminarProductoResponse)) as EliminarProductoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EliminarProductoResponse create() => EliminarProductoResponse._();
  EliminarProductoResponse createEmptyInstance() => create();
  static $pb.PbList<EliminarProductoResponse> createRepeated() => $pb.PbList<EliminarProductoResponse>();
  @$core.pragma('dart2js:noInline')
  static EliminarProductoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EliminarProductoResponse>(create);
  static EliminarProductoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idReco => $_getIZ(0);
  @$pb.TagNumber(1)
  set idReco($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdReco() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdReco() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idProducto => $_getIZ(1);
  @$pb.TagNumber(2)
  set idProducto($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdProducto() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdProducto() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mensaje => $_getSZ(2);
  @$pb.TagNumber(3)
  set mensaje($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMensaje() => $_has(2);
  @$pb.TagNumber(3)
  void clearMensaje() => clearField(3);
}

class Producto extends $pb.GeneratedMessage {
  factory Producto({
    $core.int? idProducto,
    $core.int? itemFactura,
    $core.String? nombre,
    $core.String? marca,
    $core.String? modelo,
    $core.String? referencia,
    $core.String? tipo,
    $core.String? voltaje,
    $core.String? componentes,
    $core.String? otrasCaracteristicas,
    $core.String? serial,
    $core.Iterable<Imagen>? imagenes,
  }) {
    final $result = create();
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    if (itemFactura != null) {
      $result.itemFactura = itemFactura;
    }
    if (nombre != null) {
      $result.nombre = nombre;
    }
    if (marca != null) {
      $result.marca = marca;
    }
    if (modelo != null) {
      $result.modelo = modelo;
    }
    if (referencia != null) {
      $result.referencia = referencia;
    }
    if (tipo != null) {
      $result.tipo = tipo;
    }
    if (voltaje != null) {
      $result.voltaje = voltaje;
    }
    if (componentes != null) {
      $result.componentes = componentes;
    }
    if (otrasCaracteristicas != null) {
      $result.otrasCaracteristicas = otrasCaracteristicas;
    }
    if (serial != null) {
      $result.serial = serial;
    }
    if (imagenes != null) {
      $result.imagenes.addAll(imagenes);
    }
    return $result;
  }
  Producto._() : super();
  factory Producto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Producto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Producto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'ItemFactura', $pb.PbFieldType.O3, protoName: 'ItemFactura')
    ..aOS(3, _omitFieldNames ? '' : 'Nombre', protoName: 'Nombre')
    ..aOS(4, _omitFieldNames ? '' : 'Marca', protoName: 'Marca')
    ..aOS(5, _omitFieldNames ? '' : 'Modelo', protoName: 'Modelo')
    ..aOS(6, _omitFieldNames ? '' : 'Referencia', protoName: 'Referencia')
    ..aOS(7, _omitFieldNames ? '' : 'Tipo', protoName: 'Tipo')
    ..aOS(8, _omitFieldNames ? '' : 'Voltaje', protoName: 'Voltaje')
    ..aOS(9, _omitFieldNames ? '' : 'Componentes', protoName: 'Componentes')
    ..aOS(10, _omitFieldNames ? '' : 'OtrasCaracteristicas', protoName: 'OtrasCaracteristicas')
    ..aOS(11, _omitFieldNames ? '' : 'serial')
    ..pc<Imagen>(12, _omitFieldNames ? '' : 'Imagenes', $pb.PbFieldType.PM, protoName: 'Imagenes', subBuilder: Imagen.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Producto clone() => Producto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Producto copyWith(void Function(Producto) updates) => super.copyWith((message) => updates(message as Producto)) as Producto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Producto create() => Producto._();
  Producto createEmptyInstance() => create();
  static $pb.PbList<Producto> createRepeated() => $pb.PbList<Producto>();
  @$core.pragma('dart2js:noInline')
  static Producto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Producto>(create);
  static Producto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idProducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idProducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdProducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdProducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get itemFactura => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemFactura($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemFactura() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemFactura() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nombre => $_getSZ(2);
  @$pb.TagNumber(3)
  set nombre($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNombre() => $_has(2);
  @$pb.TagNumber(3)
  void clearNombre() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get marca => $_getSZ(3);
  @$pb.TagNumber(4)
  set marca($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarca() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarca() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get modelo => $_getSZ(4);
  @$pb.TagNumber(5)
  set modelo($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModelo() => $_has(4);
  @$pb.TagNumber(5)
  void clearModelo() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get referencia => $_getSZ(5);
  @$pb.TagNumber(6)
  set referencia($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReferencia() => $_has(5);
  @$pb.TagNumber(6)
  void clearReferencia() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tipo => $_getSZ(6);
  @$pb.TagNumber(7)
  set tipo($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTipo() => $_has(6);
  @$pb.TagNumber(7)
  void clearTipo() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get voltaje => $_getSZ(7);
  @$pb.TagNumber(8)
  set voltaje($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasVoltaje() => $_has(7);
  @$pb.TagNumber(8)
  void clearVoltaje() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get componentes => $_getSZ(8);
  @$pb.TagNumber(9)
  set componentes($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasComponentes() => $_has(8);
  @$pb.TagNumber(9)
  void clearComponentes() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get otrasCaracteristicas => $_getSZ(9);
  @$pb.TagNumber(10)
  set otrasCaracteristicas($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOtrasCaracteristicas() => $_has(9);
  @$pb.TagNumber(10)
  void clearOtrasCaracteristicas() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get serial => $_getSZ(10);
  @$pb.TagNumber(11)
  set serial($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSerial() => $_has(10);
  @$pb.TagNumber(11)
  void clearSerial() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<Imagen> get imagenes => $_getList(11);
}

/// guardarImagen ---------------------------------------------------------------------
class GuardarImagenRequest extends $pb.GeneratedMessage {
  factory GuardarImagenRequest({
    $core.int? idProducto,
    $core.List<$core.int>? imagen,
    $core.String? formato,
  }) {
    final $result = create();
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    if (imagen != null) {
      $result.imagen = imagen;
    }
    if (formato != null) {
      $result.formato = formato;
    }
    return $result;
  }
  GuardarImagenRequest._() : super();
  factory GuardarImagenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuardarImagenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GuardarImagenRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'Imagen', $pb.PbFieldType.OY, protoName: 'Imagen')
    ..aOS(3, _omitFieldNames ? '' : 'Formato', protoName: 'Formato')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuardarImagenRequest clone() => GuardarImagenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuardarImagenRequest copyWith(void Function(GuardarImagenRequest) updates) => super.copyWith((message) => updates(message as GuardarImagenRequest)) as GuardarImagenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuardarImagenRequest create() => GuardarImagenRequest._();
  GuardarImagenRequest createEmptyInstance() => create();
  static $pb.PbList<GuardarImagenRequest> createRepeated() => $pb.PbList<GuardarImagenRequest>();
  @$core.pragma('dart2js:noInline')
  static GuardarImagenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuardarImagenRequest>(create);
  static GuardarImagenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idProducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idProducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdProducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdProducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get imagen => $_getN(1);
  @$pb.TagNumber(2)
  set imagen($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImagen() => $_has(1);
  @$pb.TagNumber(2)
  void clearImagen() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get formato => $_getSZ(2);
  @$pb.TagNumber(3)
  set formato($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormato() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormato() => clearField(3);
}

class GuardarImagenResponse extends $pb.GeneratedMessage {
  factory GuardarImagenResponse({
    $core.int? idProducto,
    $core.int? idImagen,
    $core.String? urlImagen,
    $core.String? mensaje,
  }) {
    final $result = create();
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    if (idImagen != null) {
      $result.idImagen = idImagen;
    }
    if (urlImagen != null) {
      $result.urlImagen = urlImagen;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    return $result;
  }
  GuardarImagenResponse._() : super();
  factory GuardarImagenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuardarImagenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GuardarImagenResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'idImagen', $pb.PbFieldType.O3, protoName: 'idImagen')
    ..aOS(3, _omitFieldNames ? '' : 'UrlImagen', protoName: 'UrlImagen')
    ..aOS(4, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuardarImagenResponse clone() => GuardarImagenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuardarImagenResponse copyWith(void Function(GuardarImagenResponse) updates) => super.copyWith((message) => updates(message as GuardarImagenResponse)) as GuardarImagenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuardarImagenResponse create() => GuardarImagenResponse._();
  GuardarImagenResponse createEmptyInstance() => create();
  static $pb.PbList<GuardarImagenResponse> createRepeated() => $pb.PbList<GuardarImagenResponse>();
  @$core.pragma('dart2js:noInline')
  static GuardarImagenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuardarImagenResponse>(create);
  static GuardarImagenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idProducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idProducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdProducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdProducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idImagen => $_getIZ(1);
  @$pb.TagNumber(2)
  set idImagen($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdImagen() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdImagen() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get urlImagen => $_getSZ(2);
  @$pb.TagNumber(3)
  set urlImagen($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrlImagen() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrlImagen() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mensaje => $_getSZ(3);
  @$pb.TagNumber(4)
  set mensaje($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMensaje() => $_has(3);
  @$pb.TagNumber(4)
  void clearMensaje() => clearField(4);
}

/// eliminar imagen ----------------------------------------------------------------------------------
class eliminarImagenRequest extends $pb.GeneratedMessage {
  factory eliminarImagenRequest({
    $core.int? idProducto,
    $core.int? idReco,
    $core.int? idImagen,
  }) {
    final $result = create();
    if (idProducto != null) {
      $result.idProducto = idProducto;
    }
    if (idReco != null) {
      $result.idReco = idReco;
    }
    if (idImagen != null) {
      $result.idImagen = idImagen;
    }
    return $result;
  }
  eliminarImagenRequest._() : super();
  factory eliminarImagenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory eliminarImagenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'eliminarImagenRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdProducto', $pb.PbFieldType.O3, protoName: 'IdProducto')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'IdReco', $pb.PbFieldType.O3, protoName: 'IdReco')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'idImagen', $pb.PbFieldType.O3, protoName: 'idImagen')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  eliminarImagenRequest clone() => eliminarImagenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  eliminarImagenRequest copyWith(void Function(eliminarImagenRequest) updates) => super.copyWith((message) => updates(message as eliminarImagenRequest)) as eliminarImagenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static eliminarImagenRequest create() => eliminarImagenRequest._();
  eliminarImagenRequest createEmptyInstance() => create();
  static $pb.PbList<eliminarImagenRequest> createRepeated() => $pb.PbList<eliminarImagenRequest>();
  @$core.pragma('dart2js:noInline')
  static eliminarImagenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<eliminarImagenRequest>(create);
  static eliminarImagenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idProducto => $_getIZ(0);
  @$pb.TagNumber(1)
  set idProducto($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdProducto() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdProducto() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idReco => $_getIZ(1);
  @$pb.TagNumber(2)
  set idReco($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdReco() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdReco() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get idImagen => $_getIZ(2);
  @$pb.TagNumber(3)
  set idImagen($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdImagen() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdImagen() => clearField(3);
}

class eliminarImagenResponse extends $pb.GeneratedMessage {
  factory eliminarImagenResponse({
    $core.bool? eliminada,
    $core.int? idImagen,
    $core.String? mensaje,
  }) {
    final $result = create();
    if (eliminada != null) {
      $result.eliminada = eliminada;
    }
    if (idImagen != null) {
      $result.idImagen = idImagen;
    }
    if (mensaje != null) {
      $result.mensaje = mensaje;
    }
    return $result;
  }
  eliminarImagenResponse._() : super();
  factory eliminarImagenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory eliminarImagenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'eliminarImagenResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'eliminada')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'idImagen', $pb.PbFieldType.O3, protoName: 'idImagen')
    ..aOS(3, _omitFieldNames ? '' : 'Mensaje', protoName: 'Mensaje')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  eliminarImagenResponse clone() => eliminarImagenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  eliminarImagenResponse copyWith(void Function(eliminarImagenResponse) updates) => super.copyWith((message) => updates(message as eliminarImagenResponse)) as eliminarImagenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static eliminarImagenResponse create() => eliminarImagenResponse._();
  eliminarImagenResponse createEmptyInstance() => create();
  static $pb.PbList<eliminarImagenResponse> createRepeated() => $pb.PbList<eliminarImagenResponse>();
  @$core.pragma('dart2js:noInline')
  static eliminarImagenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<eliminarImagenResponse>(create);
  static eliminarImagenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get eliminada => $_getBF(0);
  @$pb.TagNumber(1)
  set eliminada($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEliminada() => $_has(0);
  @$pb.TagNumber(1)
  void clearEliminada() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idImagen => $_getIZ(1);
  @$pb.TagNumber(2)
  set idImagen($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdImagen() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdImagen() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mensaje => $_getSZ(2);
  @$pb.TagNumber(3)
  set mensaje($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMensaje() => $_has(2);
  @$pb.TagNumber(3)
  void clearMensaje() => clearField(3);
}

/// ------------------- Imagen (uso interno) -------------------
class Imagen extends $pb.GeneratedMessage {
  factory Imagen({
    $core.int? idImagen,
    $core.String? url,
    $core.String? formato,
  }) {
    final $result = create();
    if (idImagen != null) {
      $result.idImagen = idImagen;
    }
    if (url != null) {
      $result.url = url;
    }
    if (formato != null) {
      $result.formato = formato;
    }
    return $result;
  }
  Imagen._() : super();
  factory Imagen.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Imagen.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Imagen', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'IdImagen', $pb.PbFieldType.O3, protoName: 'IdImagen')
    ..aOS(2, _omitFieldNames ? '' : 'Url', protoName: 'Url')
    ..aOS(3, _omitFieldNames ? '' : 'Formato', protoName: 'Formato')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Imagen clone() => Imagen()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Imagen copyWith(void Function(Imagen) updates) => super.copyWith((message) => updates(message as Imagen)) as Imagen;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Imagen create() => Imagen._();
  Imagen createEmptyInstance() => create();
  static $pb.PbList<Imagen> createRepeated() => $pb.PbList<Imagen>();
  @$core.pragma('dart2js:noInline')
  static Imagen getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Imagen>(create);
  static Imagen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idImagen => $_getIZ(0);
  @$pb.TagNumber(1)
  set idImagen($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdImagen() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdImagen() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get formato => $_getSZ(2);
  @$pb.TagNumber(3)
  set formato($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormato() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormato() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
