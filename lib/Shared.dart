import 'package:sizer/sizer.dart';

class Shared {
  // PASSWORD
  static const String EMAIL_OR_PASSWORD_NOT_CORRECT = 'email or password aren\'t correct';
  static const String PASSWORD_DIDNT_MATCH = 'Passwords didn\'t match!';
  static const String ENTER_CONFIRM_PASSWORD = 'Please be sure that re password is written';
  // EMAIL
  static const String ENTER_EMAIL = 'Please be sure that email is written';
  static const String EMAIL_ISNT_CORRECT = 'Written email isn\'t correct';
  static const String EMAIL_EXISTS = 'The email is already registered!';
  // FIELD
  static const String NOT_ENOUGH_FIELD = 'LENGTH OF WRITTEN CHARACTERS AREN\'T ENOUGH';
  static const String EMPTY_FIELD = 'Please be sure that you wrote smth into the field';



  static DeviceType getDeviceHeight() {
    return SizerUtil.deviceType;
  }

  static double getDeviceByTypeHeight() {
    return getDeviceHeight() == DeviceType.mobile ? 10.h : 7.h;
  }

  static bool checkMailValidity(value) {
    RegExp regex = RegExp(r'^[a-zA-Z0-9_\\.-]{3,}@[a-zA-Z0-9]{2,}\.[a-z]{2,}(\.[a-z]{2,})?$');
    return regex.hasMatch(value);
  }
}