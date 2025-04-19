import 'package:reconocimiento_app/models/imagen.dart';
import 'package:reconocimiento_app/protoc/auth.pbgrpc.dart';
import 'package:reconocimiento_app/services/grpc_services.dart';
import 'package:reconocimiento_app/utils/respuesta.dart';
import 'package:reconocimiento_app/utils/imagen_bytes.dart';
import 'package:reconocimiento_app/utils/obtener_extension.dart';

class ImagenServices {
  final GrpcServices grpc;

  ImagenServices(this.grpc);

  Future<Respuesta> guardarImagen(Image img, {required String token}) async {
    try {
      if (img.idProducto == null) {
        return Respuesta(
          exito: false,
          mensaje: 'Se requiere un id de producto para guardar la imagen',
        );
      }

      if (img.urlImagen == null || img.urlImagen!.trim().isEmpty) {
        return Respuesta(
          exito: false,
          mensaje:
              'Debe seleccionar una imagen o tomar una fotografia para poder guardarla',
        );
      }

      final extension = obtenerExtension(img.urlImagen!.trim());
      if (!['.jpg', '.jpeg', '.png'].contains(extension)) {
        return Respuesta(
          exito: false,
          mensaje: 'Solo se aceptan imagenes en formato jpg, jpeg, png',
        );
      }
      final byte = await leerImagenComoByte(img.urlImagen!.trim());

      final stub = AuthServiceClient(grpc.channel);

      final request = GuardarImagenRequest(
        idProducto: img.idProducto,
        imagen: byte,
        formato: extension,
      );

      final respuesta = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.guardarImagen(request, options: options),
        token: token,
      );

      if (!respuesta.exito) {
        return Respuesta(exito: false, mensaje: respuesta.mensaje);
      }

      return Respuesta(exito: true, data: respuesta.data);
    } catch (e) {
      return Respuesta(exito: false, mensaje: 'error al guardar la imagen: $e');
    }
  }

  Future<Respuesta> eliminarImagen(Image img, {required String token}) async {
    try {
      if (img.idImagen == null) {
        return Respuesta(
          exito: false,
          mensaje:
              'Se requiere que la imagen este guardada para poder eliminarla',
        );
      }

      if (img.idProducto == null) {
        return Respuesta(
          exito: false,
          mensaje: 'Se requiere un id de producto para eliminar la imagen',
        );
      }

      if (img.idReco == null) {
        return Respuesta(
          exito: false,
          mensaje:
              'Falta el Id del reonocimiento para poder eliminar la imagen',
        );
      }

      final stub = AuthServiceClient(grpc.channel);

      final request = eliminarImagenRequest(
        idProducto: img.idProducto,
        idReco: img.idReco,
        idImagen: img.idImagen,
      );

      final respuesta = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.eliminadaImagen(request, options: options),
        token: token,
      );

      if (!respuesta.exito) {
        return Respuesta(exito: false, mensaje: respuesta.mensaje);
      }

      return Respuesta(exito: true, mensaje: respuesta.mensaje);
    } catch (e) {
      return Respuesta(exito: false, mensaje: 'error al guardar la imagen: $e');
    }
  }
}
