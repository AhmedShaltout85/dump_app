class HttpErrorHandling implements Exception {
  final String meassge;
  HttpErrorHandling({
    required this.meassge,
  });

  @override
  String toString() => meassge;
}
