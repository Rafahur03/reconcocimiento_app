import 'dart:io';
import 'dart:typed_data';

Future<Uint8List> leerImagenComoByte(String path) async {
  final archivo = File(path);
  return await archivo.readAsBytes();
}
