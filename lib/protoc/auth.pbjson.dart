//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = {
  '1': 'AuthRequest',
  '2': [
    {'1': 'Id_usuario', '3': 1, '4': 1, '5': 5, '10': 'IdUsuario'},
    {'1': 'Clave', '3': 2, '4': 1, '5': 9, '10': 'Clave'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode(
    'CgtBdXRoUmVxdWVzdBIdCgpJZF91c3VhcmlvGAEgASgFUglJZFVzdWFyaW8SFAoFQ2xhdmUYAi'
    'ABKAlSBUNsYXZl');

@$core.Deprecated('Use authResponseDescriptor instead')
const AuthResponse$json = {
  '1': 'AuthResponse',
  '2': [
    {'1': 'Mensaje', '3': 1, '4': 1, '5': 9, '10': 'Mensaje'},
    {'1': 'Token', '3': 2, '4': 1, '5': 9, '10': 'Token'},
    {'1': 'Usuario', '3': 3, '4': 1, '5': 9, '10': 'Usuario'},
    {'1': 'Autenticado', '3': 4, '4': 1, '5': 8, '10': 'Autenticado'},
  ],
};

/// Descriptor for `AuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResponseDescriptor = $convert.base64Decode(
    'CgxBdXRoUmVzcG9uc2USGAoHTWVuc2FqZRgBIAEoCVIHTWVuc2FqZRIUCgVUb2tlbhgCIAEoCV'
    'IFVG9rZW4SGAoHVXN1YXJpbxgDIAEoCVIHVXN1YXJpbxIgCgtBdXRlbnRpY2FkbxgEIAEoCFIL'
    'QXV0ZW50aWNhZG8=');

@$core.Deprecated('Use crearRecoRequestDescriptor instead')
const CrearRecoRequest$json = {
  '1': 'CrearRecoRequest',
  '2': [
    {'1': 'Do', '3': 1, '4': 1, '5': 9, '10': 'Do'},
    {'1': 'DocumentoTranspote', '3': 2, '4': 1, '5': 9, '10': 'DocumentoTranspote'},
  ],
};

/// Descriptor for `CrearRecoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crearRecoRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhclJlY29SZXF1ZXN0Eg4KAkRvGAEgASgJUgJEbxIuChJEb2N1bWVudG9UcmFuc3BvdG'
    'UYAiABKAlSEkRvY3VtZW50b1RyYW5zcG90ZQ==');

@$core.Deprecated('Use crearRecoResponseDescriptor instead')
const CrearRecoResponse$json = {
  '1': 'CrearRecoResponse',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'Do', '3': 2, '4': 1, '5': 9, '10': 'Do'},
    {'1': 'DocumentoTranspote', '3': 3, '4': 1, '5': 9, '10': 'DocumentoTranspote'},
    {'1': 'Mensaje', '3': 4, '4': 1, '5': 9, '10': 'Mensaje'},
  ],
};

/// Descriptor for `CrearRecoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crearRecoResponseDescriptor = $convert.base64Decode(
    'ChFDcmVhclJlY29SZXNwb25zZRIWCgZJZFJlY28YASABKAVSBklkUmVjbxIOCgJEbxgCIAEoCV'
    'ICRG8SLgoSRG9jdW1lbnRvVHJhbnNwb3RlGAMgASgJUhJEb2N1bWVudG9UcmFuc3BvdGUSGAoH'
    'TWVuc2FqZRgEIAEoCVIHTWVuc2FqZQ==');

@$core.Deprecated('Use editarRecoRequestDescriptor instead')
const EditarRecoRequest$json = {
  '1': 'EditarRecoRequest',
  '2': [
    {'1': 'Do', '3': 1, '4': 1, '5': 9, '10': 'Do'},
    {'1': 'IdReco', '3': 2, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'DocumentoTranspote', '3': 3, '4': 1, '5': 9, '10': 'DocumentoTranspote'},
  ],
};

/// Descriptor for `EditarRecoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editarRecoRequestDescriptor = $convert.base64Decode(
    'ChFFZGl0YXJSZWNvUmVxdWVzdBIOCgJEbxgBIAEoCVICRG8SFgoGSWRSZWNvGAIgASgFUgZJZF'
    'JlY28SLgoSRG9jdW1lbnRvVHJhbnNwb3RlGAMgASgJUhJEb2N1bWVudG9UcmFuc3BvdGU=');

@$core.Deprecated('Use editarRecoResponseDescriptor instead')
const EditarRecoResponse$json = {
  '1': 'EditarRecoResponse',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'Do', '3': 2, '4': 1, '5': 9, '10': 'Do'},
    {'1': 'DocumentoTranspote', '3': 3, '4': 1, '5': 9, '10': 'DocumentoTranspote'},
    {'1': 'Mensaje', '3': 4, '4': 1, '5': 9, '10': 'Mensaje'},
  ],
};

/// Descriptor for `EditarRecoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editarRecoResponseDescriptor = $convert.base64Decode(
    'ChJFZGl0YXJSZWNvUmVzcG9uc2USFgoGSWRSZWNvGAEgASgFUgZJZFJlY28SDgoCRG8YAiABKA'
    'lSAkRvEi4KEkRvY3VtZW50b1RyYW5zcG90ZRgDIAEoCVISRG9jdW1lbnRvVHJhbnNwb3RlEhgK'
    'B01lbnNhamUYBCABKAlSB01lbnNhamU=');

@$core.Deprecated('Use eliminarRecoRequestDescriptor instead')
const EliminarRecoRequest$json = {
  '1': 'EliminarRecoRequest',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'autorizacion', '3': 2, '4': 1, '5': 9, '10': 'autorizacion'},
  ],
};

/// Descriptor for `EliminarRecoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eliminarRecoRequestDescriptor = $convert.base64Decode(
    'ChNFbGltaW5hclJlY29SZXF1ZXN0EhYKBklkUmVjbxgBIAEoBVIGSWRSZWNvEiIKDGF1dG9yaX'
    'phY2lvbhgCIAEoCVIMYXV0b3JpemFjaW9u');

@$core.Deprecated('Use eliminarRecoResponseDescriptor instead')
const EliminarRecoResponse$json = {
  '1': 'EliminarRecoResponse',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'Mensaje', '3': 2, '4': 1, '5': 9, '10': 'Mensaje'},
  ],
};

/// Descriptor for `EliminarRecoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eliminarRecoResponseDescriptor = $convert.base64Decode(
    'ChRFbGltaW5hclJlY29SZXNwb25zZRIWCgZJZFJlY28YASABKAVSBklkUmVjbxIYCgdNZW5zYW'
    'plGAIgASgJUgdNZW5zYWpl');

@$core.Deprecated('Use obtenerRecoRequestDescriptor instead')
const ObtenerRecoRequest$json = {
  '1': 'ObtenerRecoRequest',
  '2': [
    {'1': 'Do', '3': 1, '4': 1, '5': 9, '10': 'Do'},
    {'1': 'DocumentoTranspote', '3': 2, '4': 1, '5': 9, '10': 'DocumentoTranspote'},
  ],
};

/// Descriptor for `ObtenerRecoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List obtenerRecoRequestDescriptor = $convert.base64Decode(
    'ChJPYnRlbmVyUmVjb1JlcXVlc3QSDgoCRG8YASABKAlSAkRvEi4KEkRvY3VtZW50b1RyYW5zcG'
    '90ZRgCIAEoCVISRG9jdW1lbnRvVHJhbnNwb3Rl');

@$core.Deprecated('Use reconocimientoDetalleDescriptor instead')
const ReconocimientoDetalle$json = {
  '1': 'ReconocimientoDetalle',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'Do', '3': 2, '4': 1, '5': 9, '10': 'Do'},
    {'1': 'DocumentoTranspote', '3': 3, '4': 1, '5': 9, '10': 'DocumentoTranspote'},
    {'1': 'Productos', '3': 4, '4': 3, '5': 11, '6': '.Producto', '10': 'Productos'},
  ],
};

/// Descriptor for `ReconocimientoDetalle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reconocimientoDetalleDescriptor = $convert.base64Decode(
    'ChVSZWNvbm9jaW1pZW50b0RldGFsbGUSFgoGSWRSZWNvGAEgASgFUgZJZFJlY28SDgoCRG8YAi'
    'ABKAlSAkRvEi4KEkRvY3VtZW50b1RyYW5zcG90ZRgDIAEoCVISRG9jdW1lbnRvVHJhbnNwb3Rl'
    'EicKCVByb2R1Y3RvcxgEIAMoCzIJLlByb2R1Y3RvUglQcm9kdWN0b3M=');

@$core.Deprecated('Use crearProductoRequestDescriptor instead')
const CrearProductoRequest$json = {
  '1': 'CrearProductoRequest',
  '2': [
    {'1': 'ItemFactura', '3': 1, '4': 1, '5': 5, '10': 'ItemFactura'},
    {'1': 'IdReco', '3': 2, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'Nombre', '3': 3, '4': 1, '5': 9, '10': 'Nombre'},
    {'1': 'Marca', '3': 4, '4': 1, '5': 9, '10': 'Marca'},
    {'1': 'Modelo', '3': 5, '4': 1, '5': 9, '10': 'Modelo'},
    {'1': 'Referencia', '3': 6, '4': 1, '5': 9, '10': 'Referencia'},
    {'1': 'Tipo', '3': 7, '4': 1, '5': 9, '10': 'Tipo'},
    {'1': 'Voltaje', '3': 8, '4': 1, '5': 9, '10': 'Voltaje'},
    {'1': 'Componentes', '3': 9, '4': 1, '5': 9, '10': 'Componentes'},
    {'1': 'serial', '3': 10, '4': 1, '5': 9, '10': 'serial'},
    {'1': 'OtrasCaracteristicas', '3': 11, '4': 1, '5': 9, '10': 'OtrasCaracteristicas'},
  ],
};

/// Descriptor for `CrearProductoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crearProductoRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhclByb2R1Y3RvUmVxdWVzdBIgCgtJdGVtRmFjdHVyYRgBIAEoBVILSXRlbUZhY3R1cm'
    'ESFgoGSWRSZWNvGAIgASgFUgZJZFJlY28SFgoGTm9tYnJlGAMgASgJUgZOb21icmUSFAoFTWFy'
    'Y2EYBCABKAlSBU1hcmNhEhYKBk1vZGVsbxgFIAEoCVIGTW9kZWxvEh4KClJlZmVyZW5jaWEYBi'
    'ABKAlSClJlZmVyZW5jaWESEgoEVGlwbxgHIAEoCVIEVGlwbxIYCgdWb2x0YWplGAggASgJUgdW'
    'b2x0YWplEiAKC0NvbXBvbmVudGVzGAkgASgJUgtDb21wb25lbnRlcxIWCgZzZXJpYWwYCiABKA'
    'lSBnNlcmlhbBIyChRPdHJhc0NhcmFjdGVyaXN0aWNhcxgLIAEoCVIUT3RyYXNDYXJhY3Rlcmlz'
    'dGljYXM=');

@$core.Deprecated('Use editarProductoRequestDescriptor instead')
const editarProductoRequest$json = {
  '1': 'editarProductoRequest',
  '2': [
    {'1': 'ItemFactura', '3': 1, '4': 1, '5': 5, '10': 'ItemFactura'},
    {'1': 'IdReco', '3': 2, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'Nombre', '3': 3, '4': 1, '5': 9, '10': 'Nombre'},
    {'1': 'Marca', '3': 4, '4': 1, '5': 9, '10': 'Marca'},
    {'1': 'Modelo', '3': 5, '4': 1, '5': 9, '10': 'Modelo'},
    {'1': 'Referencia', '3': 6, '4': 1, '5': 9, '10': 'Referencia'},
    {'1': 'Tipo', '3': 7, '4': 1, '5': 9, '10': 'Tipo'},
    {'1': 'Voltaje', '3': 8, '4': 1, '5': 9, '10': 'Voltaje'},
    {'1': 'Componentes', '3': 9, '4': 1, '5': 9, '10': 'Componentes'},
    {'1': 'OtrasCaracteristicas', '3': 10, '4': 1, '5': 9, '10': 'OtrasCaracteristicas'},
    {'1': 'serial', '3': 11, '4': 1, '5': 9, '10': 'serial'},
    {'1': 'IdProducto', '3': 12, '4': 1, '5': 5, '10': 'IdProducto'},
  ],
};

/// Descriptor for `editarProductoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editarProductoRequestDescriptor = $convert.base64Decode(
    'ChVlZGl0YXJQcm9kdWN0b1JlcXVlc3QSIAoLSXRlbUZhY3R1cmEYASABKAVSC0l0ZW1GYWN0dX'
    'JhEhYKBklkUmVjbxgCIAEoBVIGSWRSZWNvEhYKBk5vbWJyZRgDIAEoCVIGTm9tYnJlEhQKBU1h'
    'cmNhGAQgASgJUgVNYXJjYRIWCgZNb2RlbG8YBSABKAlSBk1vZGVsbxIeCgpSZWZlcmVuY2lhGA'
    'YgASgJUgpSZWZlcmVuY2lhEhIKBFRpcG8YByABKAlSBFRpcG8SGAoHVm9sdGFqZRgIIAEoCVIH'
    'Vm9sdGFqZRIgCgtDb21wb25lbnRlcxgJIAEoCVILQ29tcG9uZW50ZXMSMgoUT3RyYXNDYXJhY3'
    'RlcmlzdGljYXMYCiABKAlSFE90cmFzQ2FyYWN0ZXJpc3RpY2FzEhYKBnNlcmlhbBgLIAEoCVIG'
    'c2VyaWFsEh4KCklkUHJvZHVjdG8YDCABKAVSCklkUHJvZHVjdG8=');

@$core.Deprecated('Use crearProductoResponseDescriptor instead')
const CrearProductoResponse$json = {
  '1': 'CrearProductoResponse',
  '2': [
    {'1': 'ItemFactura', '3': 1, '4': 1, '5': 5, '10': 'ItemFactura'},
    {'1': 'Nombre', '3': 3, '4': 1, '5': 9, '10': 'Nombre'},
    {'1': 'Marca', '3': 4, '4': 1, '5': 9, '10': 'Marca'},
    {'1': 'Modelo', '3': 5, '4': 1, '5': 9, '10': 'Modelo'},
    {'1': 'Referencia', '3': 6, '4': 1, '5': 9, '10': 'Referencia'},
    {'1': 'Tipo', '3': 7, '4': 1, '5': 9, '10': 'Tipo'},
    {'1': 'Voltaje', '3': 8, '4': 1, '5': 9, '10': 'Voltaje'},
    {'1': 'Componentes', '3': 9, '4': 1, '5': 9, '10': 'Componentes'},
    {'1': 'OtrasCaracteristicas', '3': 10, '4': 1, '5': 9, '10': 'OtrasCaracteristicas'},
    {'1': 'IdProducto', '3': 11, '4': 1, '5': 5, '10': 'IdProducto'},
    {'1': 'Mensaje', '3': 12, '4': 1, '5': 9, '10': 'Mensaje'},
    {'1': 'serial', '3': 13, '4': 1, '5': 9, '10': 'serial'},
  ],
};

/// Descriptor for `CrearProductoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crearProductoResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhclByb2R1Y3RvUmVzcG9uc2USIAoLSXRlbUZhY3R1cmEYASABKAVSC0l0ZW1GYWN0dX'
    'JhEhYKBk5vbWJyZRgDIAEoCVIGTm9tYnJlEhQKBU1hcmNhGAQgASgJUgVNYXJjYRIWCgZNb2Rl'
    'bG8YBSABKAlSBk1vZGVsbxIeCgpSZWZlcmVuY2lhGAYgASgJUgpSZWZlcmVuY2lhEhIKBFRpcG'
    '8YByABKAlSBFRpcG8SGAoHVm9sdGFqZRgIIAEoCVIHVm9sdGFqZRIgCgtDb21wb25lbnRlcxgJ'
    'IAEoCVILQ29tcG9uZW50ZXMSMgoUT3RyYXNDYXJhY3RlcmlzdGljYXMYCiABKAlSFE90cmFzQ2'
    'FyYWN0ZXJpc3RpY2FzEh4KCklkUHJvZHVjdG8YCyABKAVSCklkUHJvZHVjdG8SGAoHTWVuc2Fq'
    'ZRgMIAEoCVIHTWVuc2FqZRIWCgZzZXJpYWwYDSABKAlSBnNlcmlhbA==');

@$core.Deprecated('Use eliminarProductoRequestDescriptor instead')
const EliminarProductoRequest$json = {
  '1': 'EliminarProductoRequest',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'IdProducto', '3': 2, '4': 1, '5': 5, '10': 'IdProducto'},
  ],
};

/// Descriptor for `EliminarProductoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eliminarProductoRequestDescriptor = $convert.base64Decode(
    'ChdFbGltaW5hclByb2R1Y3RvUmVxdWVzdBIWCgZJZFJlY28YASABKAVSBklkUmVjbxIeCgpJZF'
    'Byb2R1Y3RvGAIgASgFUgpJZFByb2R1Y3Rv');

@$core.Deprecated('Use eliminarProductoResponseDescriptor instead')
const EliminarProductoResponse$json = {
  '1': 'EliminarProductoResponse',
  '2': [
    {'1': 'IdReco', '3': 1, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'IdProducto', '3': 2, '4': 1, '5': 5, '10': 'IdProducto'},
    {'1': 'Mensaje', '3': 3, '4': 1, '5': 9, '10': 'Mensaje'},
  ],
};

/// Descriptor for `EliminarProductoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eliminarProductoResponseDescriptor = $convert.base64Decode(
    'ChhFbGltaW5hclByb2R1Y3RvUmVzcG9uc2USFgoGSWRSZWNvGAEgASgFUgZJZFJlY28SHgoKSW'
    'RQcm9kdWN0bxgCIAEoBVIKSWRQcm9kdWN0bxIYCgdNZW5zYWplGAMgASgJUgdNZW5zYWpl');

@$core.Deprecated('Use productoDescriptor instead')
const Producto$json = {
  '1': 'Producto',
  '2': [
    {'1': 'IdProducto', '3': 1, '4': 1, '5': 5, '10': 'IdProducto'},
    {'1': 'ItemFactura', '3': 2, '4': 1, '5': 5, '10': 'ItemFactura'},
    {'1': 'Nombre', '3': 3, '4': 1, '5': 9, '10': 'Nombre'},
    {'1': 'Marca', '3': 4, '4': 1, '5': 9, '10': 'Marca'},
    {'1': 'Modelo', '3': 5, '4': 1, '5': 9, '10': 'Modelo'},
    {'1': 'Referencia', '3': 6, '4': 1, '5': 9, '10': 'Referencia'},
    {'1': 'Tipo', '3': 7, '4': 1, '5': 9, '10': 'Tipo'},
    {'1': 'Voltaje', '3': 8, '4': 1, '5': 9, '10': 'Voltaje'},
    {'1': 'Componentes', '3': 9, '4': 1, '5': 9, '10': 'Componentes'},
    {'1': 'OtrasCaracteristicas', '3': 10, '4': 1, '5': 9, '10': 'OtrasCaracteristicas'},
    {'1': 'serial', '3': 11, '4': 1, '5': 9, '10': 'serial'},
    {'1': 'Imagenes', '3': 12, '4': 3, '5': 11, '6': '.Imagen', '10': 'Imagenes'},
  ],
};

/// Descriptor for `Producto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productoDescriptor = $convert.base64Decode(
    'CghQcm9kdWN0bxIeCgpJZFByb2R1Y3RvGAEgASgFUgpJZFByb2R1Y3RvEiAKC0l0ZW1GYWN0dX'
    'JhGAIgASgFUgtJdGVtRmFjdHVyYRIWCgZOb21icmUYAyABKAlSBk5vbWJyZRIUCgVNYXJjYRgE'
    'IAEoCVIFTWFyY2ESFgoGTW9kZWxvGAUgASgJUgZNb2RlbG8SHgoKUmVmZXJlbmNpYRgGIAEoCV'
    'IKUmVmZXJlbmNpYRISCgRUaXBvGAcgASgJUgRUaXBvEhgKB1ZvbHRhamUYCCABKAlSB1ZvbHRh'
    'amUSIAoLQ29tcG9uZW50ZXMYCSABKAlSC0NvbXBvbmVudGVzEjIKFE90cmFzQ2FyYWN0ZXJpc3'
    'RpY2FzGAogASgJUhRPdHJhc0NhcmFjdGVyaXN0aWNhcxIWCgZzZXJpYWwYCyABKAlSBnNlcmlh'
    'bBIjCghJbWFnZW5lcxgMIAMoCzIHLkltYWdlblIISW1hZ2VuZXM=');

@$core.Deprecated('Use guardarImagenRequestDescriptor instead')
const GuardarImagenRequest$json = {
  '1': 'GuardarImagenRequest',
  '2': [
    {'1': 'IdProducto', '3': 1, '4': 1, '5': 5, '10': 'IdProducto'},
    {'1': 'Imagen', '3': 2, '4': 1, '5': 12, '10': 'Imagen'},
    {'1': 'Formato', '3': 3, '4': 1, '5': 9, '10': 'Formato'},
  ],
};

/// Descriptor for `GuardarImagenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guardarImagenRequestDescriptor = $convert.base64Decode(
    'ChRHdWFyZGFySW1hZ2VuUmVxdWVzdBIeCgpJZFByb2R1Y3RvGAEgASgFUgpJZFByb2R1Y3RvEh'
    'YKBkltYWdlbhgCIAEoDFIGSW1hZ2VuEhgKB0Zvcm1hdG8YAyABKAlSB0Zvcm1hdG8=');

@$core.Deprecated('Use guardarImagenResponseDescriptor instead')
const GuardarImagenResponse$json = {
  '1': 'GuardarImagenResponse',
  '2': [
    {'1': 'IdProducto', '3': 1, '4': 1, '5': 5, '10': 'IdProducto'},
    {'1': 'idImagen', '3': 2, '4': 1, '5': 5, '10': 'idImagen'},
    {'1': 'UrlImagen', '3': 3, '4': 1, '5': 9, '10': 'UrlImagen'},
    {'1': 'Mensaje', '3': 4, '4': 1, '5': 9, '10': 'Mensaje'},
  ],
};

/// Descriptor for `GuardarImagenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guardarImagenResponseDescriptor = $convert.base64Decode(
    'ChVHdWFyZGFySW1hZ2VuUmVzcG9uc2USHgoKSWRQcm9kdWN0bxgBIAEoBVIKSWRQcm9kdWN0bx'
    'IaCghpZEltYWdlbhgCIAEoBVIIaWRJbWFnZW4SHAoJVXJsSW1hZ2VuGAMgASgJUglVcmxJbWFn'
    'ZW4SGAoHTWVuc2FqZRgEIAEoCVIHTWVuc2FqZQ==');

@$core.Deprecated('Use eliminarImagenRequestDescriptor instead')
const eliminarImagenRequest$json = {
  '1': 'eliminarImagenRequest',
  '2': [
    {'1': 'IdProducto', '3': 1, '4': 1, '5': 5, '10': 'IdProducto'},
    {'1': 'IdReco', '3': 2, '4': 1, '5': 5, '10': 'IdReco'},
    {'1': 'idImagen', '3': 3, '4': 1, '5': 5, '10': 'idImagen'},
  ],
};

/// Descriptor for `eliminarImagenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eliminarImagenRequestDescriptor = $convert.base64Decode(
    'ChVlbGltaW5hckltYWdlblJlcXVlc3QSHgoKSWRQcm9kdWN0bxgBIAEoBVIKSWRQcm9kdWN0bx'
    'IWCgZJZFJlY28YAiABKAVSBklkUmVjbxIaCghpZEltYWdlbhgDIAEoBVIIaWRJbWFnZW4=');

@$core.Deprecated('Use eliminarImagenResponseDescriptor instead')
const eliminarImagenResponse$json = {
  '1': 'eliminarImagenResponse',
  '2': [
    {'1': 'eliminada', '3': 1, '4': 1, '5': 8, '10': 'eliminada'},
    {'1': 'idImagen', '3': 2, '4': 1, '5': 5, '10': 'idImagen'},
    {'1': 'Mensaje', '3': 3, '4': 1, '5': 9, '10': 'Mensaje'},
  ],
};

/// Descriptor for `eliminarImagenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eliminarImagenResponseDescriptor = $convert.base64Decode(
    'ChZlbGltaW5hckltYWdlblJlc3BvbnNlEhwKCWVsaW1pbmFkYRgBIAEoCFIJZWxpbWluYWRhEh'
    'oKCGlkSW1hZ2VuGAIgASgFUghpZEltYWdlbhIYCgdNZW5zYWplGAMgASgJUgdNZW5zYWpl');

@$core.Deprecated('Use imagenDescriptor instead')
const Imagen$json = {
  '1': 'Imagen',
  '2': [
    {'1': 'IdImagen', '3': 1, '4': 1, '5': 5, '10': 'IdImagen'},
    {'1': 'Url', '3': 2, '4': 1, '5': 9, '10': 'Url'},
    {'1': 'Formato', '3': 3, '4': 1, '5': 9, '10': 'Formato'},
  ],
};

/// Descriptor for `Imagen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imagenDescriptor = $convert.base64Decode(
    'CgZJbWFnZW4SGgoISWRJbWFnZW4YASABKAVSCElkSW1hZ2VuEhAKA1VybBgCIAEoCVIDVXJsEh'
    'gKB0Zvcm1hdG8YAyABKAlSB0Zvcm1hdG8=');

