import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/services/grpc_services.dart';

final grpcProvider = FutureProvider<GrpcServices>((ref) async {
  final grpcServices = GrpcServices(); // Instancia de GrpcServices
  await grpcServices.initializeClient(); // Inicializa el cliente gRPC
  return grpcServices; // Devuelve la instancia de GrpcServices
});
