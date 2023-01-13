import 'package:allforyou/auth/login.dart';
import 'package:allforyou/user_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Shared.dart';
import '../app_theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const int minFirstAndLastNameLength = 3;
  static const int minPasswordLength = 6;

  static const String $firstName = 'first name';
  static const String $lastName = 'last name';
  static const String $email = 'email address';
  static const String $password = 'password';
  static const String $rePassword = 'repeat password';
  static const String $registerBtn = 'Register';

  static TextEditingController firstName = TextEditingController();
  static TextEditingController lastName = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController password= TextEditingController();
  static TextEditingController rePassword= TextEditingController();

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with TickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double> _animation;


  @override
  void initState() {
    super.initState();
  _animationController = AnimationController(
      vsync: this,
    duration: Duration(seconds: 3)
  );
  _animation = Tween<double>(begin: 0,end: 1).animate(_animationController);
  _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: double.infinity,
        padding: const EdgeInsets.only(right: 10, left: 10),
        decoration: AppTheme.appBackroundColorGradient(),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  /// LOGO
                    AppTheme.logo(_animation),
                  /// FIRST NAME
                  SizedBox(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    child:  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Shared.EMPTY_FIELD;
                        }
                      },
                      controller: RegisterPage.firstName,
                      decoration: InputDecoration(
                          hintText: RegisterPage.$firstName,
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(User.user_alt,color: Colors.orange,size: 35),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                              const BorderSide(color: Colors.orange, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0
                              )
                          )
                      ),

                    ),
                  ),
                  /// LAST NAME
                  SizedBox(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    child:  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Shared.EMPTY_FIELD;
                        }
                      },
                      controller: RegisterPage.lastName,
                      decoration: InputDecoration(
                          hintText: RegisterPage.$lastName,
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(User.user_alt,color: Colors.orange,size: 35),                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                              const BorderSide(color: Colors.orange, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0
                              )
                          )
                      ),

                    ),
                  ),
                  /// EMAIL
                  SizedBox(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    child:  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Shared.EMPTY_FIELD;
                        }
                      },
                      controller: RegisterPage.email,
                      decoration: InputDecoration(
                          hintText: RegisterPage.$email,
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.email,color: Colors.orange,size: 35),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                              const BorderSide(color: Colors.orange, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0
                              )
                          )
                      ),

                    ),
                  ),
                  /// PASSWORD
                  SizedBox(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    child:  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Shared.EMPTY_FIELD;
                        }
                      },
                      controller: RegisterPage.password,
                      decoration: InputDecoration(
                          hintText: RegisterPage.$password,
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.password,color: Colors.orange,size: 35),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                              const BorderSide(color: Colors.orange, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0
                              )
                          )
                      ),

                    ),
                  ),
                  /// RE PASSWORD
                  SizedBox(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    child:  TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Shared.EMPTY_FIELD;
                        }
                      },
                      controller: RegisterPage.rePassword,
                      decoration: InputDecoration(
                          hintText: RegisterPage.$rePassword,
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: const Icon(Icons.password,color: Colors.orange,size: 35),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                              const BorderSide(color: Colors.orange, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2.0
                              )
                          )
                      ),

                    ),
                  ),
                  /// REGISTER
                  SizedBox(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()) {
                          registerBtn(RegisterPage.firstName, RegisterPage.lastName,
                          RegisterPage.email, RegisterPage.password, RegisterPage.rePassword);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      ), child: Text(RegisterPage.$registerBtn, style: TextStyle(fontSize: 25.sp)),
                    ),
                  ),
                  /// ALREADY REGISTERED?
                  Container(
                    width: 100.w,
                    height: Shared.getDeviceByTypeHeight(),
                    padding: const EdgeInsets.all(10),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black, fontSize: 20.sp),
                        children: <TextSpan>[
                          TextSpan(text: 'Already registered?'),
                          TextSpan(text: ' Login', style: TextStyle(color: Colors.orange),
                          recognizer: TapGestureRecognizer()
                          ..onTap = (){
                            forwardLoginBtn();
                          })
                        ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void forwardLoginBtn() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  void registerBtn(TextEditingController firstName, TextEditingController lastName,
      TextEditingController email, TextEditingController password,
      TextEditingController rePassword) {

  }
}
