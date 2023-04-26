import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: content(),
    );
  }
}

Widget content() {
  const phone = '+573142506683'; // Número de teléfono
  const message = 'Conocer mas info acerca de un producto'; // Mensaje
  final Uri whatsApp = Uri.parse('whatsapp://send?phone=$phone&text=$message');

  return Center(
      child: Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (() async {
            launchUrl(whatsApp);
          }),
          child: const Icon(
            Icons.phone,
            size: 50,
            color: Colors.green,
          ),
        )
      ],
    ),
  ));
}
