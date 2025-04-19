import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/services/grpc_services.dart';

final grpcProvider = Provider<GrpcServices>((ref) {
  return GrpcServices();
});
