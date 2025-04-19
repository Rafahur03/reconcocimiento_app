import 'package:reconocimiento_app/models/producto.dart';
import 'package:reconocimiento_app/protoc/auth.pbgrpc.dart';
import 'package:reconocimiento_app/services/grpc_services.dart';
import 'package:reconocimiento_app/utils/respuesta.dart';

class ProductoServices {
  final GrpcServices grpc;

  ProductoServices(this.grpc);

  Future<Respuesta> guardarProducto(
    Product producto, {
    required String token,
  }) async {
    try {
      if (producto.nombre == null || producto.nombre!.trim().isEmpty) {
        return Respuesta(
          exito: false,
          mensaje:
              'Debe ingresar minimo el nombre del producto para poder crearlo',
        );
      }

      final stub = AuthServiceClient(grpc.channel);
      final request = CrearProductoRequest(
        itemFactura: producto.itemFactura,
        idReco: producto.idReco,
        nombre: producto.nombre,
        marca: producto.marca,
        modelo: producto.modelo,
        referencia: producto.referencia,
        tipo: producto.tipo,
        voltaje: producto.tipo,
        componentes: producto.componentes,
        otrasCaracteristicas: producto.otrasCaracteristicas,
        serial: producto.serial,
      );

      final respuesta = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.crearproducto(request, options: options),
        token: token,
      );

      if (!respuesta.exito) {
        return Respuesta(exito: false, mensaje: respuesta.mensaje);
      }

      return Respuesta(exito: true, data: respuesta.data);
    } catch (e) {
      return Respuesta(
        exito: false,
        mensaje: 'No fue posible crear el producto error: $e',
      );
    }
  }

  Future<Respuesta> actualizarProducto(
    Product producto, {
    required String token,
  }) async {
    try {
      if (producto.nombre == null || producto.nombre!.trim().isEmpty) {
        return Respuesta(
          exito: false,
          mensaje:
              'Debe ingresar minimo el nombre del producto para poder Actualizarlo',
        );
      }

      final stub = AuthServiceClient(grpc.channel);
      final request = editarProductoRequest(
        itemFactura: producto.itemFactura,
        idReco: producto.idReco,
        nombre: producto.nombre,
        marca: producto.marca,
        modelo: producto.modelo,
        referencia: producto.referencia,
        tipo: producto.tipo,
        voltaje: producto.tipo,
        componentes: producto.componentes,
        otrasCaracteristicas: producto.otrasCaracteristicas,
        serial: producto.serial,
      );

      final respuesta = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.editarproducto(request, options: options),
        token: token,
      );

      if (!respuesta.exito) {
        return Respuesta(exito: false, mensaje: respuesta.mensaje);
      }

      return Respuesta(exito: true, data: respuesta.data);
    } catch (e) {
      return Respuesta(
        exito: false,
        mensaje: 'No fue posible Actualizar el producto error: $e',
      );
    }
  }

  Future<Respuesta> eliminarProducto(
    Product producto, {
    required String token,
  }) async {
    try {
      if (producto.idProducto == null) {
        return Respuesta(
          exito: false,
          mensaje: 'No se cuenta con el ID del producto para ser eliminado',
        );
      }
      if (producto.idReco == null) {
        return Respuesta(
          exito: false,
          mensaje:
              'No se cuenta con el ID del reonocimiento para eliminar el producto',
        );
      }

      final stub = AuthServiceClient(grpc.channel);
      final request = EliminarProductoRequest(
        idProducto: producto.idProducto,
        idReco: producto.idReco,
      );

      final respuesta = await grpc.sendAuthenticatedRequest(
        ({options}) => stub.eliminarproducto(request, options: options),
        token: token,
      );

      if (!respuesta.exito) {
        return Respuesta(exito: false, mensaje: respuesta.mensaje);
      }

      return Respuesta(exito: true, mensaje: respuesta.data!.mensaje);
    } catch (e) {
      return Respuesta(
        exito: false,
        mensaje: 'No fue posible eliminar el producto error: $e',
      );
    }
  }
}
