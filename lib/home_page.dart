import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// to read value
final helo = Provider<String>((ref) => "Hello, World!");
final helo2 = Provider<int>((ref) => 42);

// here we replace the stateless widget with a consumer widget to read the provider value
class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  // here we have added the WidgetRef parameter to the build method to read the provider value
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hello = ref.watch(helo);
    final hello2 = ref.watch(helo2);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(hello), Text(hello2.toString())],
        ),
      ),
    );
  }
}
