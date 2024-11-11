import 'package:flutter/material.dart';
import '../models/movie.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  DetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
         backgroundColor: Colors.black,
        title: Text(movie.title,style: TextStyle( color: Colors.white)),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(movie.imageUrl),
            SizedBox(height: 16),
            Text(movie.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.white)),
            SizedBox(height: 8),
            Text(movie.summary,style: TextStyle( color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
