import 'package:flutter/material.dart';
import 'artmovementdetailpage.dart';

class Artmovementlistpage extends StatelessWidget {
  final List<Map<String, String>> artMovements=[
  {'name':'Renaissance','image':'https://i.pinimg.com/736x/38/73/2e/38732ecfcb84b6e29784b65dfaa4bd43.jpg'},
  {'name': 'Baroque', 'image': 'https://i.pinimg.com/736x/43/51/2a/43512a617557b20b60a3174f68b85c49.jpg'},
  {'name': 'Impressionism', 'image': "https://i.pinimg.com/736x/6f/b2/29/6fb22937e4bcdb33ecd13442cadacc2f.jpg"},
  {'name': 'Expressionism', 'image': 'https://i.pinimg.com/736x/2a/71/af/2a71af8d26e2ee548f86b0f995e407a9.jpg'},
  {'name': 'Cubism', 'image': 'https://i.pinimg.com/474x/bc/05/5f/bc055f5e2707b7c08a68c4db41aee1f2.jpg'},
  {'name': 'Surrealism', 'image': 'https://i.pinimg.com/474x/12/49/2c/12492c992ae9dd0ddda93a5f8cceb80a.jpg'},
  {'name': 'Modernism', 'image': 'https://i.pinimg.com/736x/ee/f6/8b/eef68b7f26dd0643ed238e9e217f8348.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Art Movements'),
      ),
      body: ListView.builder(
        itemCount: artMovements.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(artMovements[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArtMovementDetailPage(artMovement: artMovements[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}