import 'package:flutter/material.dart';

final List<String> assetImages = [
  'assets/images/image_1.jpg',
  'assets/images/image_2.jpg',
  'assets/images/image_3.jpg'
];

final List<String> networkImages = [
  'https://picsum.photos/640/427',
  'https://picsum.photos/800/600',
  'https://picsum.photos/600/400'
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Doto',
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Images and Assets'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: networkImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(networkImages[index]),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  tileColor: Colors.lightBlueAccent,
                  leading: Icon(Icons.settings),
                  title: Text('Extra Light Doto',
                      style: TextStyle(
                          fontFamily: 'Doto',
                          fontWeight: FontWeight.w300,
                          fontSize: 24)),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  tileColor: Colors.lightBlueAccent,
                  leading: Icon(Icons.star),
                  title: Text('Regular Doto',
                      style: TextStyle(fontFamily: 'Doto', fontSize: 24)),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  tileColor: Colors.lightBlueAccent,
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text('Bold Doto',
                      style: TextStyle(
                          fontFamily: 'Doto',
                          fontWeight: FontWeight.w700,
                          fontSize: 24)),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  tileColor: Colors.lightBlueAccent,
                  leading: Icon(Icons.arrow_forward),
                  title: Text(
                    'Roboto',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: assetImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(assetImages[index]),
                      );
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
