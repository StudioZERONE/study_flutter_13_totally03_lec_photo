import 'package:flutter/material.dart';
import 'package:study_flutter_13_totally03_lec_photo/photo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagePaths = [
    'https://cdn.pixabay.com/photo/2023/04/30/09/43/flower-7960192_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/04/30/22/01/ocean-7961695_1280.jpg',
    'https://cdn.pixabay.com/photo/2023/05/21/07/59/iceberg-8008071_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('PhotoView - Main')),
        body: ListView.builder(
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PhotoViewPage(
                      imagePaths: imagePaths, currentIndex: index),
                ));
              },
              child: Image(
                image: NetworkImage(imagePaths[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
