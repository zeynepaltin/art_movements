import 'package:flutter/material.dart';

class ArtMovementDetailPage extends StatelessWidget {
  final Map<String, String> artMovement;

  ArtMovementDetailPage({required this.artMovement});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artMovement['name']!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              artMovement['name']!,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.network(
              artMovement['image']!,
              fit: BoxFit.cover,
              errorBuilder: (context,error,stackTrace){
                return Text('Image could not be loaded.');
              },
            )
          ],
        ),
      ),
    );
  }
}
