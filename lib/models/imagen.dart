class Image {
  int? idProducto;
  int? idImagen;
  int? idReco;
  String? urlImagen;

  Image._({this.idProducto, this.urlImagen, this.idReco, this.idImagen});

  factory Image({
    int? idProducto,
    int? idImagen,
    int? idRerco,
    String? urlImagen,
  }) {
    if (idProducto == null) {
      throw ArgumentError(
        'No es posible crear una imagen si no se tiene un producto creado',
      );
    }

    if (urlImagen == null || urlImagen.trim().isEmpty) {
      throw ArgumentError(
        'Debe seleccionar una foto de la galeria o tomar una foto con la camara',
      );
    }

    return Image._(
      idImagen: idImagen,
      idProducto: idProducto,
      idReco: idRerco,
      urlImagen: urlImagen.trim(),
    );
  }
}
