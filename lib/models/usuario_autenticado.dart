// modelo usuarioAutenticado

import 'package:reconocimiento_app/protoc/auth.pb.dart';

class UsuarioAutenticado {
  String? token;
  String? usuario;
  bool? autenticado;
  String? mensaje;

  UsuarioAutenticado({
    this.usuario,
    this.autenticado,
    this.token,
    this.mensaje,
  });
  factory UsuarioAutenticado.fromGrpc(AuthResponse res) {
    return UsuarioAutenticado(
      token: res.token,
      usuario: res.usuario,
      autenticado: res.autenticado,
      mensaje: res.mensaje,
    );
  }
}
