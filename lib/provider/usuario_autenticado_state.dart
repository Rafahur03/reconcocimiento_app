import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/models/usuario_autenticado.dart';

class UsuarioAutenticadoNotifier extends StateNotifier<UsuarioAutenticado?> {
  UsuarioAutenticadoNotifier() : super(null);

  void setUsuario(UsuarioAutenticado usuario) {
    state = usuario;
  }

  void limpiarUsuario() {
    state = null;
  }

  bool get isautenticado => state?.autenticado == true;
}

final usuarioAutenticadoProvider =
    StateNotifierProvider<UsuarioAutenticadoNotifier, UsuarioAutenticado?>(
      (ref) => UsuarioAutenticadoNotifier(),
    );
