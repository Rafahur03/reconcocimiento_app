import 'package:reconocimiento_app/models/producto.dart';

class Reconocimiento {
  int? id;
  String? guia;
  String? proceso;
  String? autorizacion;
  List<Product> productos;

  Reconocimiento._({
    this.id,
    this.guia,
    this.proceso,
    this.autorizacion,
    // ignore: unused_element_parameter
    this.productos = const [],
  });

  factory Reconocimiento({id, proceso, guia, autorizacion, productos}) {
    final procesoLimpio = proceso?.trim();
    final guiaLimpia = guia?.trim();

    if ((procesoLimpio == null || procesoLimpio!.isEmpty) &&
        (guiaLimpia == null || guiaLimpia!.isEmpty)) {
      throw ArgumentError('Debe ingresar al menos DO o Guía');
    }

    return Reconocimiento._(
      id: id,
      guia: guiaLimpia,
      proceso: procesoLimpio,
      autorizacion: autorizacion,
      productos: productos,
    );
  }

  // Método copyWith para actualizar los campos de manera inmutable
  Reconocimiento copyWith({
    int? id,
    String? guia,
    String? proceso,
    String? autorizacion,
    List<Product>? productos,
  }) {
    return Reconocimiento(
      id: id ?? this.id,
      guia: guia ?? this.guia,
      proceso: proceso ?? this.proceso,
      autorizacion: autorizacion ?? this.autorizacion,
      productos: productos ?? this.productos,
    );
  }
}
