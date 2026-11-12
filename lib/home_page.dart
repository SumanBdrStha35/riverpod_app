import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// to read value
final helo = Provider<String>((ref) => "Hello, World!");
final helo2 = Provider<int>((ref) => 42);


// for satefulwidget
// here we use ConsumerStatefulWidget instead of StatefulWidget to read the provider value in the state class
// we use ConsumerStatefulWidget to read the provider value in the state class
class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

// here we override the createState method to return a ConsumerState instead of a State
  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

// here we use ConsumerState instead of State to read the provider value in the state class
// we use ConsumerState to read the provider value in the state class
class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final hello = ref.watch(helo);
    final hello2 = ref.watch(helo2);
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(hello), Text(hello2.toString())],
        ),
      ),
    );
  }
}

// here we replace the stateless widget with a consumer widget to read the provider value
// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;
//   // here we have added the WidgetRef parameter to the build method to read the provider value
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // we use the ref parameter to read the provider value.
//     // we can use the ref parameter to read the provider value in any method of the widget, not just the build method.
//     // we can also use the ref parameter to read the provider value in the initState method, but we need to use the ref.read method instead of ref.watch method.
//     // we can also use the ref parameter to read the provider value in the dispose method, but we need to use the ref.read method instead of ref.watch method.
//     final hello = ref.watch(helo);
//     final hello2 = ref.watch(helo2);
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text(hello), Text(hello2.toString())],
//         ),
//       ),
//     );
//   }
// }