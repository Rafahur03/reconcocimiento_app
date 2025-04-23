import 'package:riverpod/riverpod.dart';
import 'package:reconocimiento_app/models/usuario_autenticado.dart';

class UsuarioAutenticadoNotifier extends StateNotifier<UsuarioAutenticado?> {
  UsuarioAutenticadoNotifier() : super(null);

  void setUsuario(UsuarioAutenticado usuario) {
    state = usuario;
  }

  void clearUsuario() {
    state = null;
  }
}

final usuarioAutenticadoProvider =
    StateNotifierProvider<UsuarioAutenticadoNotifier, UsuarioAutenticado?>(
      (ref) => UsuarioAutenticadoNotifier(),
    );
