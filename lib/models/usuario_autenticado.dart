// modelo usuarioAutenticado

import 'package:reconocimiento_app/protoc/auth.pb.dart';

class UsuarioAutenticado {
  String? token;
  String? usuario;
  bool? autenticado;

  UsuarioAutenticado({this.usuario, this.autenticado, this.token});
  factory UsuarioAutenticado.fromGrpc(AuthResponse res) {
    return UsuarioAutenticado(
      token: res.token,
      usuario: res.usuario,
      autenticado: res.autenticado,
    );
  }
}
