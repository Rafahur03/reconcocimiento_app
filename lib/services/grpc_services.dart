// manejo centratalizado de conexion al servidor
import 'package:grpc/grpc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:reconocimiento_app/utils/respuesta.dart';

class GrpcServices {
  late ClientChannel channel;

  GrpcServices() {
    _initializeClient();
  }

  //inicializamos la conexion al servidor

  Future<void> _initializeClient() async {
    await dotenv.load();
    final String serevrAddress = dotenv.env['GRPC_SERVER'] ?? '10.0.2.2';
    final int serverPort =
        int.tryParse(dotenv.env['GRPC_PORT'] ?? '50051') ?? 50051;
    channel = ClientChannel(
      serevrAddress,
      port: serverPort,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  // metodo generico para enviar solicitudes grpc con token

  Future<Respuesta<T>> sendAuthenticatedRequest<T>(
    Future<T> Function({CallOptions? options}) request, {
    String? token,
  }) async {
    try {
      final options =
          token != null
              ? CallOptions(
                metadata: {'authorization': 'Bearer $token'},
              ) // paracualquier solicitud diferente a login
              : null; // para login
      final response = await request(options: options);
      return Respuesta<T>(exito: true, data: response);
    } on GrpcError catch (e) {
      return Respuesta<T>(
        exito: false,
        mensaje: 'Error de conexión gRPC: ${e.message}',
      );
    } catch (e) {
      return Respuesta<T>(
        exito: false,
        mensaje: 'Error de conexion con la base de datos',
      );
    }
  }

  // para login

  Future<Respuesta<T>> sendRequest<T>(Future<T> Function() request) async {
    try {
      final response = await request();
      return Respuesta<T>(exito: true, data: response);
    } on GrpcError catch (e) {
      return Respuesta<T>(
        exito: false,
        mensaje: 'Error de conexión gRPC: ${e.message}',
      );
    } catch (e) {
      return Respuesta<T>(
        exito: false,
        mensaje: 'Error inesperado en el servidor',
      );
    }
  }

  // cerrar la conexion

  Future<void> close() async {
    await channel.shutdown();
  }
}
