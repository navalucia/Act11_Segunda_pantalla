import 'package:flutter/material.dart';

void main() => runApp(const MiCafeteria());

class MiCafeteria extends StatelessWidget {
  const MiCafeteria({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos la URL de la imagen fija
    const String imageUrl = 'https://images.unsplash.com/photo-1563805042-7684c019e1cb?q=80&w=600';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5EBE0), // Fondo crema
        appBar: AppBar(
          backgroundColor: const Color(0xFF4B3621), // Café oscuro
          elevation: 0,
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
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3E2723),
                  ),
                ),
              ),

              // 2. Imagen usando imageUrl
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
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
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Helados: tres antojos, sundae de la casa, affogato con espresso y vilatto de yogurt',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16, 
                    color: Color(0xFF8D6E63),
                    height: 1.5,
                  ),
                ),
              ),

              // 4. Lista estática con puntos a la derecha
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFD7CCC8), // Café claro
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: const [
                    ListTile(
                      title: Text('Sundae de la casa', style: TextStyle(color: Color(0xFF3E2723))),
                      trailing: Icon(Icons.radio_button_off, color: Color(0xFF5D4037)),
                    ),
                    Divider(color: Colors.white, indent: 20, endIndent: 20),
                    ListTile(
                      title: Text('Affogato con espresso', style: TextStyle(color: Color(0xFF3E2723))),
                      trailing: Icon(Icons.radio_button_off, color: Color(0xFF5D4037)),
                    ),
                    Divider(color: Colors.white, indent: 20, endIndent: 20),
                    ListTile(
                      title: Text('Vilatto de yogurt', style: TextStyle(color: Color(0xFF3E2723))),
                      trailing: Icon(Icons.radio_button_off, color: Color(0xFF5D4037)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
