class FormValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email address.";
    }
    final emailRegex = RegExp(
        r"[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?");
    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email address.";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your password.";
    }
    final passwordRegex = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
    if (!passwordRegex.hasMatch(value)) {
      return "Password must be at least 8 characters and include a lowercase letter, an uppercase letter, a number, and a special symbol.";
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your name.";
    }
    final nameRegex = RegExp(r"^[a-zA-Z]+(([ '-][a-zA-Z ])?[a-zA-Z])*$");
    if (!nameRegex.hasMatch(value)) {
      return "Please enter a valid name (letters, spaces, hyphens, and apostrophes only).";
    }
    return null;
  }
}
