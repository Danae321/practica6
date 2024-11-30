import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/provideru.dart';
import 'views/usuario_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProvider()..fetchUsers(),
      child: MaterialApp(
        title: 'practica 5',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: UserScreen(),
      ),
    );
  }
}
