import 'package:flutter/material.dart';

void main() => runApp(const MiCafeteria());

class MiCafeteria extends StatelessWidget {
  const MiCafeteria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaHelados(),
    );
  }
}

class PaginaHelados extends StatefulWidget {
  const PaginaHelados({super.key});

  @override
  State<PaginaHelados> createState() => _PaginaHeladosState();
}

class _PaginaHeladosState extends State<PaginaHelados> {
  // Variable solicitada: imageUrl
  String imageUrl = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?q=80&w=600';
  int _opcionSeleccionada = 1;

  void actualizarSeleccion(int valor, String nuevaUrl) {
    setState(() {
      _opcionSeleccionada = valor;
      imageUrl = nuevaUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EBE0), // Tono Crema/Café claro
      appBar: AppBar(
        title: const Text('Menú Heladería'),
        backgroundColor: const Color(0xFF4B3621), // Café Espresso
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Título
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'HELADOS',
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold, 
                  color: Color(0xFF3E2723),
                  letterSpacing: 1.5,
                ),
              ),
            ),

            // 2. Imagen usando la variable "imageUrl"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // 3. Texto descriptivo
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Helados: tres antojos, sundae de la casa, affogato con espresso y vilatto de yogurt',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16, 
                  color: Color(0xFF6F4E37), 
                  fontWeight: FontWeight.w500
                ),
              ),
            ),

            // 4. Lista con puntos de selección a la DERECHA
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFD7CCC8), // Color Café Latte
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  RadioListTile(
                    title: const Text('Sundae de la casa'),
                    value: 1,
                    groupValue: _opcionSeleccionada,
                    activeColor: const Color(0xFF5D4037),
                    // ESTA PROPIEDAD MUEVE EL CÍRCULO A LA DERECHA
                    controlAffinity: ListTileControlAffinity.trailing, 
                    onChanged: (val) => actualizarSeleccion(val as int, 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/sundae.jpg'),
                  ),
                  const Divider(height: 1, color: Colors.white24),
                  RadioListTile(
                    title: const Text('Affogato con espresso'),
                    value: 2,
                    groupValue: _opcionSeleccionada,
                    activeColor: const Color(0xFF5D4037),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (val) => actualizarSeleccion(val as int, 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/affogato.jpg'),
                  ),
                  const Divider(height: 1, color: Colors.white24),
                  RadioListTile(
                    title: const Text('Vilatto de yogurt'),
                    value: 3,
                    groupValue: _opcionSeleccionada,
                    activeColor: const Color(0xFF5D4037),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (val) => actualizarSeleccion(val as int, 'https://raw.githubusercontent.com/navalucia/imagenes_cafetria/refs/heads/main/vilatto.jpg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}