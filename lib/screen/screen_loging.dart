import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reconocimiento_app/services/grpc_service_loging.dart';
import 'package:reconocimiento_app/provider/provider_grpc_services.dart'; // Importa donde definiste grpcProvider

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _usuarioControler = TextEditingController();
  final _claveControler = TextEditingController();

  bool _cargandoInicioSesion = false;
  String? _mensajeError;

  // Color azul del botón de la imagen
  final Color _botonAzul = const Color(0xFF0E5BA8);

  Future<void> _iniciarSesion() async {
    setState(() {
      _cargandoInicioSesion = true;
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

    setState(() => _cargandoInicioSesion = false);
    if (!mounted) return;
    if (respuesta.exito) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      setState(() => _mensajeError = respuesta.mensaje);
    }
  }

  @override
  Widget build(BuildContext context) {
    final grpcState = ref.watch(grpcProvider);

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
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                // TextField para ID de usuario
                TextField(
                  controller: _usuarioControler,
                  decoration: InputDecoration(
                    hintText: 'ID de usuario', // Placeholder como en la imagen
                    prefixIcon: const Icon(
                      Icons.person_outline,
                    ), // Icono de persona
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ), // Bordes redondeados
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      ), // Borde gris claro
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: _botonAzul,
                      ), // Borde azul al enfocar
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 12.0,
                    ), // Espacio interno
                  ),
                ),
                const SizedBox(height: 16),
                // TextField para Contraseña
                TextField(
                  controller: _claveControler,
                  obscureText: true, // Ocultar la contraseña
                  decoration: InputDecoration(
                    hintText: 'Contraseña', // Placeholder como en la imagen
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                    ), // Icono de candado
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ), // Bordes redondeados
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      ), // Borde gris claro
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: _botonAzul,
                      ), // Borde azul al enfocar
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 12.0,
                    ), // Espacio interno
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
                  onPressed:
                      grpcState.isLoading || _cargandoInicioSesion
                          ? null
                          : _iniciarSesion,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _botonAzul, // Establecer el color de fondo del botón
                    foregroundColor:
                        Colors.white, // Establecer el color del texto del botón
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 40.0,
                    ), // Ajustar el padding del botón
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                    ), // Ajustar el tamaño del texto
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ), // Bordes redondeados del botón
                    ),
                  ),
                  child:
                      grpcState.isLoading
                          ? const Text('Conectando...')
                          : _cargandoInicioSesion
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                            'Iniciar Sesión',
                            style: TextStyle(color: Colors.white),
                          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
