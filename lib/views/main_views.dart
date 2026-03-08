import 'package:flutter/material.dart';
import 'list_views.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cambiamos el color de fondo de la pantalla
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text('Mi Perfil de Usuario'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 10, // Sombra en la barra superior
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- 1. TÍTULO CON ESTILO ---
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Registro IPC',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Colors.indigo,
                  letterSpacing: 2,
                ),
              ),
            ),

            // --- 2. CONTENEDOR CON DISEÑO (Sombras y bordes) ---
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              // --- 3. FILA DENTRO DEL CONTENEDOR ---
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.indigoAccent,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Usuario Invitado', 
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Estado: Conectado', 
                          style: TextStyle(color: Colors.green, fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- 4. ÁREA DE FORMULARIO (TextField) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Nombre Completo',
                  hintText: 'Ej. Juan Pérez',
                  prefixIcon: const Icon(Icons.badge, color: Colors.indigo),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // --- 5. ÁREA INTERACTIVA (Botón con navegación) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyListView()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text('CONTINUAR A LA LISTA'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}