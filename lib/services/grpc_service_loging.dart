import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/protoc/auth.pbgrpc.dart'; // Importa el archivo generado
import 'package:reconocimiento_app/models/usuario_autenticado.dart';
import 'package:reconocimiento_app/utils/respuesta.dart';
import 'package:reconocimiento_app/provider/usuario_autenticado_state.dart';
import 'package:reconocimiento_app/provider/providers.dart';

Future<Respuesta<UsuarioAutenticado>> loginUsuario(
  WidgetRef ref, {
  required int idUsuario,
  required String clave,
}) async {
  final grpc = ref.watch(grpcProvider);
  final stub = AuthServiceClient(grpc.channel);

  final request = AuthRequest(idUsuario: idUsuario, clave: clave);

  final login = await grpc.sendRequest(() => stub.login(request));
  await grpc.close();

  if (login.exito || login.data == null) {
    return Respuesta(exito: false, mensaje: login.mensaje);
  }

  final authResponse = login.data!;

  if (authResponse.autenticado) {
    final usuarioAutenticado = UsuarioAutenticado.fromGrpc(authResponse);
    ref
        .read(usuarioAutenticadoProvider.notifier)
        .setUsuario(usuarioAutenticado);

    return Respuesta<UsuarioAutenticado>(exito: true, data: usuarioAutenticado);
  }

  return Respuesta(exito: true, mensaje: login.mensaje);
}
