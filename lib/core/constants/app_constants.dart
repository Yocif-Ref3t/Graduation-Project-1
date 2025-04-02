abstract class AppConstants {
  static const Map<int, String> genderMap = {0: "Male", 1: "Female"};
  static final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
}
