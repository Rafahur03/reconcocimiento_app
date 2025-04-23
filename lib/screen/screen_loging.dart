import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/services/grpc_service_loging.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _usuarioControler = TextEditingController();
  final _claveControler = TextEditingController();

  bool _cargando = false;
  String? _mensajeError;

  Future<void> _iniciarSesion() async {
    setState(() {
      _cargando = true;
      _mensajeError = null;
    });

    final respuesta = await ref.read(
      loginUsuarioProvider(
        LoginCredentials(
          idUsuario: int.tryParse(_usuarioControler.text.trim()) ?? 0,
          clave: _claveControler.text.trim(),
        ),
      ).future,
    );

    setState(() => _cargando = false);
    if (!mounted) return;
    if (respuesta.exito) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      setState(() => _mensajeError = respuesta.mensaje);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/image/logo_geocarga.png', height: 40),
            const SizedBox(width: 10),
            const Flexible(
              child: Text(
                'Agencia De Aduanas GEOCARGA LTDA Nivel II',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                softWrap: true,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Inicio De Sesion',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: _usuarioControler,
                  decoration: const InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _claveControler,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),
                if (_mensajeError != null)
                  Text(
                    _mensajeError!,
                    style: const TextStyle(color: Colors.red),
                  ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _cargando ? null : _iniciarSesion,
                  child:
                      _cargando
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text('Iniciar Sesion'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
