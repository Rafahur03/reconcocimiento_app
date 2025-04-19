import 'package:path/path.dart' as path;

String obtenerExtension(String filePath) {
  return path.extension(filePath).toLowerCase();
}
