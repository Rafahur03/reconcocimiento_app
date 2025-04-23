import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/models/producto.dart';

// Provider para manejar los productos
final productosProvider =
    StateNotifierProvider<ProductosNotifier, List<Product>>((ref) {
      return ProductosNotifier([]);
    });

// Notifier que maneja la lógica de los productos
class ProductosNotifier extends StateNotifier<List<Product>> {
  ProductosNotifier(super.state);

  // Agregar un nuevo producto
  void agregarProducto(Product producto) {
    // Verificar que no exista un producto con el mismo serial
    if (state.any(
      (existingProduct) => existingProduct.serial == producto.serial,
    )) {
      throw ArgumentError('Este serial ya existe');
    }

    state = [...state, producto]; // Agregar el nuevo producto
  }

  // Eliminar un producto por su ID
  void eliminarProducto(int idProducto) {
    state =
        state.where((producto) => producto.idProducto != idProducto).toList();
  }

  // Actualizar un producto
  void actualizarProducto(Product productoActualizado) {
    state = [
      for (final producto in state)
        if (producto.idProducto == productoActualizado.idProducto)
          productoActualizado
        else
          producto,
    ]; // Actualizar el producto
  }
}
