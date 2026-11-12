# Provider in Riverpod | Flutter Riverpod State Management Tutorials

A Flutter learning project exploring state management with Riverpod, starting with
the `Provider` API. A provider exposes a value or service to the widget tree,
and widgets can watch it and rebuild when its value changes.

## Using a provider

Define a provider and read it from a `ConsumerWidget` with `ref.watch`:

```dart
final greetingProvider = Provider<String>((ref) {
  return 'Hello, Riverpod!';
});

class Greeting extends ConsumerWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greeting = ref.watch(greetingProvider);
    return Text(greeting);
  }
}
```

For widgets to access providers, add `ProviderScope` above the app:

```dart
void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
```

## Run the project

```sh
flutter pub get
flutter run
```

Run the tests with:

```sh
flutter test
```
