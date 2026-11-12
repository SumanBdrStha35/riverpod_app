import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // we use ProviderScope to make the providers available throughout the app
    // ProviderScope is a widget that stores the state of all the providers in the app
    // it is required to use Riverpod. if we don't use it, we will get an error when we try to read a provider
    // it is usually placed at the root of the app, above MaterialApp
    return ProviderScope( 
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}