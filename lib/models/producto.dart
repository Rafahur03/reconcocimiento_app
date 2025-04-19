import 'package:reconocimiento_app/models/imagen.dart';

class Product {
  int? idProducto;
  int? itemFactura;
  int? idReco;
  String? nombre;
  String? marca;
  String? modelo;
  String? referencia;
  String? tipo;
  String? voltaje;
  String? componentes;
  String? otrasCaracteristicas;
  String? serial;
  List<Image> imagenes;

  Product._({
    this.idProducto,
    this.itemFactura,
    this.idReco,
    required this.nombre,
    required this.marca,
    required this.modelo,
    required this.referencia,
    required this.tipo,
    required this.voltaje,
    required this.componentes,
    required this.otrasCaracteristicas,
    required this.serial,
    this.imagenes = const [],
  });

  factory Product({
    int? idProducto,
    int? itemFactura,
    required int? idReco,
    required String? nombre,
    String? marca,
    String? modelo,
    String? referencia,
    String? tipo,
    String? voltaje,
    String? componentes,
    String? otrasCaracteristicas,
    String? serial,
    List<Image>? imagenes,
  }) {
    if (idReco == null) {
      throw ArgumentError(
        'No es posible crear un producto si no se tiene un reconocimiento creado',
      );
    }

    if (nombre == null || nombre.trim().isEmpty) {
      throw ArgumentError('Debe ingresar al menos el nombre del producto');
    }

    String limpiar(String? valor) =>
        (valor == null || valor.trim().isEmpty)
            ? 'NO TIENE'
            : valor.trim().toUpperCase();

    return Product._(
      idProducto: idProducto,
      idReco: idReco,
      nombre: nombre.toUpperCase(),
      marca: limpiar(marca),
      modelo: limpiar(modelo),
      referencia: limpiar(referencia),
      tipo: limpiar(tipo),
      voltaje: limpiar(voltaje),
      componentes: limpiar(componentes),
      otrasCaracteristicas: limpiar(otrasCaracteristicas),
      serial: limpiar(serial),
      itemFactura: itemFactura,
      imagenes: imagenes ?? [],
    );
  }
}
