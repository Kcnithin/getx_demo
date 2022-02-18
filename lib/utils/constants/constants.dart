class Constants {
  static const String errorMessage = 'Email and Password does not match';
  static const String errorPassword =
      "Password must be at least 5 characters long!";
  static const String errorEmail = 'Enter a valid Email';
  static const String errorNumber =
      "Mobile Number should only contain  10 digits";
  static const String errorOTP = "Please Enter Valid OTP";
  static const String verifiedOTP = "OTP Verified!!";
  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String numberNullError = "Please Enter your number";
  static const String invalidNumberError = "Please Enter Valid number";
  static const String passwordNullError = "Please Enter your password!";
  static const String matchPasswordError = "Passwords don't match!";
  static const String nameNullError = "Please Enter your name!";
  static const String phoneNumberNullError = "Please Enter your phone number!";
  static const String invalidPhoneNumber = "Please enter a valid phone number!";
  static const String invalidUser = "Password and phone number does not match!";
  static const String emptyNumberAndPassword =
      "Please enter your number and password!";
}
