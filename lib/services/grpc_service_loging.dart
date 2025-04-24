import 'package:riverpod/riverpod.dart';
import 'package:reconocimiento_app/protoc/auth.pbgrpc.dart'; // Importa el archivo generado
import 'package:reconocimiento_app/models/usuario_autenticado.dart';
import 'package:reconocimiento_app/utils/respuesta.dart';
import 'package:reconocimiento_app/provider/provider_usuario_auth.dart';
import 'package:reconocimiento_app/provider/provider_grpc_services.dart';

Future<Respuesta<UsuarioAutenticado>> loginUsuario(
  Ref ref, {
  required int idUsuario,
  required String clave,
}) async {
  final grpcAsyncValue = ref.watch(grpcProvider);

  return await grpcAsyncValue.when(
    data: (grpc) async {
      final stub = AuthServiceClient(grpc.channel);
      final request = AuthRequest(idusuario: idUsuario, clave: clave);
      final login = await grpc.sendRequest(() => stub.login(request));
      final authResponse = login.data!;

      if (authResponse.autenticado) {
        final usuarioAutenticado = UsuarioAutenticado.fromGrpc(authResponse);
        ref
            .read(usuarioAutenticadoProvider.notifier)
            .setUsuario(usuarioAutenticado);
        return Respuesta<UsuarioAutenticado>(
          exito: true,
          data: usuarioAutenticado,
        );
      } else {
        return Respuesta(
          exito: authResponse.autenticado,
          mensaje: authResponse.mensaje,
        );
      }
    },
    loading: () async => Respuesta(exito: false, mensaje: 'Cargando...'),
    error:
        (error, stackTrace) async =>
            Respuesta(exito: false, mensaje: 'Error de conexión: $error'),
  );
}

final loginUsuarioProvider =
    FutureProviderFamily<Respuesta<UsuarioAutenticado>, LoginCredentials>((
      Ref ref,
      LoginCredentials credentials,
    ) async {
      return await loginUsuario(
        ref,
        idUsuario: credentials.idUsuario,
        clave: credentials.clave,
      );
    });

// Clase para agrupar las credenciales de inicio de sesión
class LoginCredentials {
  final int idUsuario;
  final String clave;

  LoginCredentials({required this.idUsuario, required this.clave});
}
