class Failure {
  final String message;
  Failure({required this.message});

  factory Failure.defaultMessage() {
    return Failure(message: "Oops there was an error, please try again later");
  }
}
