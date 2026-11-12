# Provider in Riverpod | Flutter Riverpod State Management Tutorials

A small Flutter app demonstrating how to provide and read values with
[Riverpod](https://riverpod.dev/). The home page watches a string provider and an
integer provider, then displays both values.

## How it works

- `main.dart` starts the app. `MyApp` wraps `MaterialApp` in `ProviderScope`,
  making Riverpod providers available throughout the widget tree.
- `home_page.dart` declares two providers:

  ```dart
  final helo = Provider<String>((ref) => "Hello, World!");
  final helo2 = Provider<int>((ref) => 42);
  ```

- `MyHomePage` is a `ConsumerWidget`. It reads the providers with `ref.watch`
  and displays `Hello, World!` and `42` on the screen.

## Run the app

```sh
flutter pub get
flutter run
```

Run the tests with:

```sh
flutter test
```
