import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jokeapi_flutter/provider/home_provider.dart';
import '../widgets/joke_view.dart';
import '../widgets/refresh_joke.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(jokeDataProvider).isLoading;
    final joke = ref.watch(jokeDataProvider).joke;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.trim()),
      ),
      floatingActionButton: const RefreshJoke(),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : JokeView(joke: joke),
    );
  }
}
