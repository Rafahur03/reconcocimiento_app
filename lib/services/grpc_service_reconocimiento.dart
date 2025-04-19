// servicios para reconocimiento crear, actualizar, eliminar
import 'package:reconocimiento_app/models/reconocimiento.dart';
import 'package:reconocimiento_app/protoc/auth.pbgrpc.dart';
import 'package:reconocimiento_app/services/grpc_services.dart';
import 'package:reconocimiento_app/utils/respuesta.dart';

class ReconocimientoServices {
  final GrpcServices grpc;

  ReconocimientoServices(this.grpc);
  // crear reconocimiento
  Future<Respuesta> crearReconocimiento(
    Reconocimiento reco, {
    required String token,
  }) async {
    try {
      // Obtener el cliente del stub
      final stub = AuthServiceClient(grpc.channel);

      // Llamar a la función gRPC que crea el reconocimiento
      final request = CrearRecoRequest(
        do_1: reco.proceso ?? '',
        documentoTranspote: reco.guia ?? '',
      );
      final response = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.crearReconocimiento(request, options: options),
        token: token,
      );

      // Lógica de respuesta
      if (response.exito && response.data?.idReco != null) {
        reco.id = response.data!.idReco;
        return Respuesta(exito: true, data: reco.id);
      }
      return Respuesta(
        exito: false,
        mensaje: 'No se pudo crear el reconocimiento',
      );
    } catch (e) {
      return Respuesta(
        exito: false,
        mensaje: 'Error al crear el reconocimiento: $e',
      );
    }
  }

  // editar reconocimeito
  Future<Respuesta> editarReconocimiento(
    Reconocimiento reco, {
    required String token,
  }) async {
    if (reco.id == null) {
      return Respuesta(
        exito: false,
        mensaje: 'No se puede editar un reconocimiento sin ID',
      );
    }

    final stub = AuthServiceClient(grpc.channel);
    final request = EditarRecoRequest(
      idReco: reco.id,
      do_1: reco.proceso ?? '',
      documentoTranspote: reco.guia ?? '',
    );

    final respuesta = await grpc.sendAuthenticatedRequest(
      ({options}) => stub.editarReconocimiento(request, options: options),
      token: token,
    );

    if (!respuesta.exito) {
      return Respuesta(exito: false, mensaje: respuesta.mensaje);
    }
    return Respuesta(exito: true, mensaje: respuesta.mensaje);
  }

  // eliminar reconocimiento
  Future<Respuesta> eliminarReconocimiento(
    Reconocimiento reco, {
    required String token,
  }) async {
    if (reco.id == null) {
      return Respuesta(
        exito: false,
        mensaje: 'No se puede Eliminar un reconocimiento sin ID',
      );
    }

    final stub = AuthServiceClient(grpc.channel);
    final request = EliminarRecoRequest(
      idReco: reco.id,
      autorizacion: reco.autorizacion,
    );

    final respuesta = await grpc.sendAuthenticatedRequest(
      ({options}) => stub.eliminarReconocimiento(request, options: options),
      token: token,
    );

    if (!respuesta.exito) {
      return Respuesta(exito: false, mensaje: respuesta.mensaje);
    }
    return Respuesta(exito: true, mensaje: respuesta.mensaje);
  }

  Future<Respuesta> consultarReconocimiento({
    String? guia,
    String? proceso,
    required String token,
  }) async {
    if (guia == null && proceso == null) {
      return Respuesta(
        exito: false,
        mensaje: 'Debe proporcionar una guía o un proceso para la búsqueda.',
      );
    }

    try {
      final stub = AuthServiceClient(grpc.channel);

      final request = ObtenerRecoRequest(
        documentoTranspote: guia ?? '',
        do_1: proceso ?? '',
      );

      final response = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.obtenerReconocimiento(request, options: options),
        token: token,
      );

      if (!response.exito || response.data == null) {
        return Respuesta(exito: false, mensaje: response.mensaje);
      }
      // mapear la respuesta a los modelos
      final recoGrpc = response.data!;
      final reco = Reconocimiento(
        id: recoGrpc.idReco,
        proceso: recoGrpc.do_2,
        guia: recoGrpc.documentoTranspote,
        productos:
            recoGrpc.productos
                .map(
                  (p) => Producto(
                    idProducto: p.idProducto,
                    itemFactura: p.itemFactura,
                    nombre: p.nombre,
                    marca: p.marca,
                    modelo: p.modelo,
                    referencia: p.referencia,
                    tipo: p.tipo,
                    voltaje: p.voltaje,
                    componentes: p.componentes,
                    otrasCaracteristicas: p.otrasCaracteristicas,
                    serial: p.serial,
                    imagenes:
                        p.imagenes
                            .map(
                              (img) =>
                                  Imagen(idImagen: img.idImagen, url: img.url),
                            )
                            .toList(),
                  ),
                )
                .toList(),
      );

      return Respuesta(exito: true, data: reco);
    } catch (e) {
      return Respuesta(
        exito: false,
        mensaje: 'Error al consultar reconocimiento: $e',
      );
    }
  }
}
