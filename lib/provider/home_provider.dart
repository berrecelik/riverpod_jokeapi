import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jokeapi_flutter/data/api/home_api.dart';
import 'package:jokeapi_flutter/data/repository/home_repository.dart';
import 'package:jokeapi_flutter/provider/shared_providers.dart';

import '../data/models/joke_state.dart';
import 'home_state_provider.dart';

final homeApiProvider = Provider<HomeApi>((ref) {
  return HomeApi(ref.read(dioClientProvider));
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(ref.read(homeApiProvider));
});

final jokeDataProvider =
    StateNotifierProvider.autoDispose<JokeDataNotifier, JokeState>((ref) {
  return JokeDataNotifier(ref.read(homeRepositoryProvider));
});
