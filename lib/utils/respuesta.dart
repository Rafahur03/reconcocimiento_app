class Respuesta<T> {
  final bool exito;
  final String? mensaje;
  final T? data;

  Respuesta({required this.exito, this.mensaje, this.data});
}
