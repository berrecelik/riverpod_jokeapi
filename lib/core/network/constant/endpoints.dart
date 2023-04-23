class Endpoints {
  static const String baseUrl =
      "https://v2.jokeapi.dev/joke/Programming?type=twopart";
  static final Duration receiveTimeout = Duration(milliseconds: 15000);
  static final Duration connectionTimeout = Duration(milliseconds: 15000);
}
