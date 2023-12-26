class Env {
  const Env._();

  static String get apiUrl => const String.fromEnvironment('API_URL');
}