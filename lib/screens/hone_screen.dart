import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _PlantsCard(context),
          _PlantsCard(context),
          _PlantsCard(context),
        ],
      ),
    );
  }

  Widget _PlantsCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Row(
          children: <Widget>[
            Container(
              height: 125,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300], // Fondo temporal
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1416879595882-3373a0480b5b?q=80&w=100&auto=format&fit=crop', // URL corregida
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Manejo de error si la imagen no carga
                    return Container(
                      color: Colors.grey[200],
                      child: Icon(Icons.error, color: Colors.red),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    // Indicador de carga
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(width: 26),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Planta',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Quicksand',
                    color: Colors.brown,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Container(height: 1, width: 95, color: Colors.orange),
                Text(
                  'Gabriela Zuñiga',
                  style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                ),
                SizedBox(height: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
