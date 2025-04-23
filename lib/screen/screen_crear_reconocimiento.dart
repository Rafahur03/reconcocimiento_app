import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/models/reconocimiento.dart';
import 'package:reconocimiento_app/provider/provider_usuario_auth.dart';
import 'package:reconocimiento_app/provider/reconocimiento_en_uso.dart';

class CrearReconocimientoScreen extends ConsumerStatefulWidget {
  const CrearReconocimientoScreen({super.key});

  @override
  ConsumerState<CrearReconocimientoScreen> createState() =>
      _CrearReconocimientoScreenState();
}

class _CrearReconocimientoScreenState
    extends ConsumerState<CrearReconocimientoScreen> {
  final TextEditingController _guiaController = TextEditingController();
  final TextEditingController _procesoController = TextEditingController();
  bool _cargando = false;
  String? _mensajeError;

  Future<void> _crearReconocimiento() async {
    final token = ref.read(usuarioAutenticadoProvider)?.token;
    if (token == null) {
      setState(() {
        _mensajeError = 'No estás autenticado';
      });
      return;
    }

    setState(() {
      _cargando = true;
      _mensajeError = null;
    });

    final reconocimiento = Reconocimiento(
      guia: _guiaController.text.trim(),
      proceso: _procesoController.text.trim(),
    );

    final respuesta = await ref
        .read(reconocimientoServicesProvider)
        .crearReconocimiento(reconocimiento, token: token);

    setState(() => _cargando = false);
    if (!mounted) return;
    if (respuesta.exito) {
      Navigator.pushNamed(context, '/productos', arguments: respuesta.data);
    } else {
      setState(() {
        _mensajeError = respuesta.mensaje;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Reconocimiento')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _guiaController,
              decoration: const InputDecoration(labelText: 'Guía'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _procesoController,
              decoration: const InputDecoration(labelText: 'Proceso'),
            ),
            const SizedBox(height: 24),
            if (_mensajeError != null)
              Text(_mensajeError!, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _cargando ? null : _crearReconocimiento,
              child:
                  _cargando
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('Crear Reconocimiento'),
            ),
          ],
        ),
      ),
    );
  }
}
