import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/models/reconocimiento.dart';
import 'package:reconocimiento_app/provider/providers.dart';
import 'package:reconocimiento_app/services/grpc_service_reconocimiento.dart';

class ReconocimientoState {
  final Reconocimiento? reconocimiento;
  final bool isLoading;
  final String? error;

  ReconocimientoState({
    this.reconocimiento,
    this.isLoading = false,
    this.error,
  });

  // Crear un nuevo estado con un reconocimiento
  ReconocimientoState copyWith({
    Reconocimiento? reconocimiento,
    bool? isLoading,
    String? error,
  }) {
    return ReconocimientoState(
      reconocimiento: reconocimiento ?? this.reconocimiento,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class ReconocimientoNotifier extends StateNotifier<ReconocimientoState> {
  final ReconocimientoServices reconocimientoServices;

  ReconocimientoNotifier(this.reconocimientoServices)
    : super(ReconocimientoState());

  // Crear un nuevo reconocimiento
  Future<void> crearReconocimiento(Reconocimiento reco, String token) async {
    try {
      state = state.copyWith(isLoading: true);

      final respuesta = await reconocimientoServices.crearReconocimiento(
        reco,
        token: token,
      );
      if (respuesta.exito) {
        state = state.copyWith(
          reconocimiento: reco.copyWith(id: respuesta.data),
          isLoading: false,
        );
      } else {
        state = state.copyWith(error: respuesta.mensaje, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        error: 'Error al crear el reconocimiento: $e',
        isLoading: false,
      );
    }
  }

  // Editar un reconocimiento
  Future<void> editarReconocimiento(Reconocimiento reco, String token) async {
    try {
      state = state.copyWith(isLoading: true);

      final respuesta = await reconocimientoServices.editarReconocimiento(
        reco,
        token: token,
      );
      if (respuesta.exito) {
        state = state.copyWith(reconocimiento: reco, isLoading: false);
      } else {
        state = state.copyWith(error: respuesta.mensaje, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        error: 'Error al editar el reconocimiento: $e',
        isLoading: false,
      );
    }
  }

  // Eliminar un reconocimiento
  Future<void> eliminarReconocimiento(Reconocimiento reco, String token) async {
    try {
      state = state.copyWith(isLoading: true);

      final respuesta = await reconocimientoServices.eliminarReconocimiento(
        reco,
        token: token,
      );
      if (respuesta.exito) {
        state = state.copyWith(reconocimiento: null, isLoading: false);
      } else {
        state = state.copyWith(error: respuesta.mensaje, isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(
        error: 'Error al eliminar el reconocimiento: $e',
        isLoading: false,
      );
    }
  }
}

final reconocimientoProvider =
    StateNotifierProvider<ReconocimientoNotifier, ReconocimientoState>((ref) {
      return ReconocimientoNotifier(ref.read(reconocimientoServicesProvider));
    });

final reconocimientoServicesProvider = Provider<ReconocimientoServices>((ref) {
  final grpc = ref.watch(grpcProvider);
  return ReconocimientoServices(grpc);
});
