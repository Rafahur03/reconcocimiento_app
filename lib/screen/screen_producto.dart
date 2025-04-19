import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:reconocimiento_app/models/producto.dart';
import 'package:reconocimiento_app/models/reconocimiento.dart';
import 'package:reconocimiento_app/services/grpc_service_reconocimiento.dart';
import 'package:reconocimiento_app/provider/usuario_autenticado_state.dart';

class ProductosScreen extends ConsumerStatefulWidget {
  final String idReco;
  final bool isConsulta; // Indicamos si es consulta o creación

  const ProductosScreen({
    Key? key,
    required this.idReco,
    this.isConsulta = false, // Por defecto es creación
  }) : super(key: key);

  @override
  _ProductosScreenState createState() => _ProductosScreenState();
}

class _ProductosScreenState extends ConsumerState<ProductosScreen> {
  late Reconocimiento reconocimiento;
  Set<String> seriales = {}; // Para manejar seriales únicos
  List<Product> productos = [];

  @override
  void initState() {
    super.initState();
    if (widget.isConsulta) {
      _cargarReconocimiento();
    }
  }

  Future<void> _cargarReconocimiento() async {
    final usuario = ref.watch(usuarioAutenticadoProvider);
    final token = usuario?.token;

    // Aquí va la lógica para cargar los datos de consulta.
    final respuesta = await ReconocimientoServices(
      grpc,
    ).consultarReconocimiento(guia: widget.guia, proceso: widget.guia);
    if (respuesta.exito) {
      setState(() {
        productos = respuesta.data!;
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error al cargar los productos')));
    }
  }

  Future<void> _agregarSerial(String nuevoSerial) async {
    if (seriales.contains(nuevoSerial)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Este serial ya ha sido registrado.')),
      );
      return;
    }

    setState(() {
      seriales.add(nuevoSerial);
    });
  }

  Future<void> _escanearCodigo() async {
    String codigo = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancelar',
      true,
      ScanMode.BARCODE,
    );

    if (codigo != '-1') {
      _agregarSerial(codigo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos y Reconocimiento"),
        actions: [
          widget.isConsulta
              ? IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Permitir edición o navegación para actualizar el reconocimiento
                },
              )
              : Container(),
        ],
      ),
      body: Column(
        children: [
          // Mostrar datos del reconocimiento
          if (widget.isConsulta) ...[
            Text("ID Reconocimiento: ${reconocimiento.id}"),
            Text("Proceso: ${reconocimiento.proceso}"),
            Text("Guía: ${reconocimiento.guia}"),
          ],
          // Lista de productos con el Slide lateral
          _buildProductList(),
          _buildAddProductButton(),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    return Expanded(
      child: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Producto ${productos[index].idProducto}'),
            subtitle: Text(productos[index].nombre),
            onTap: () {
              // Navegar a la pantalla de detalles del producto
              Navigator.pushNamed(
                context,
                '/productoDetalles',
                arguments: productos[index],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildAddProductButton() {
    return ElevatedButton(
      onPressed: () {
        // Aquí se podría navegar a una pantalla para agregar un nuevo producto
      },
      child: const Text("Agregar Producto"),
    );
  }
}
