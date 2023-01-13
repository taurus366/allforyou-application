import 'package:allforyou/Shared.dart';
import 'package:allforyou/app_theme.dart';
import 'package:allforyou/auth/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String $email = 'email';
  static const String $password = 'password';
  static const String $loginBtn = 'Login';

  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
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
               // crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                 /// LOGO
                AppTheme.logo(_animation),
                 /// EMAIL
                 SizedBox(
                   width: 100.w,
                   height: Shared.getDeviceByTypeHeight(),
                   child:  TextFormField(
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return Shared.EMPTY_FIELD;
                       } else if (!Shared.checkMailValidity(value)) {
                         return Shared.EMAIL_ISNT_CORRECT;
                       }
                     },
                     controller: LoginPage.email,
                     decoration: InputDecoration(
                         hintText: LoginPage.$email,
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
                   child:   TextFormField(
                     validator: (value) {
                       if (value == null || value.isEmpty) {
                         return Shared.EMPTY_FIELD;
                       }
                     },
                     controller: LoginPage.password,
                     decoration: InputDecoration(
                         hintText: LoginPage.$password,
                         hintStyle: TextStyle(fontSize: 15.sp),
                         fillColor: Colors.white,
                         filled: true,
                         prefixIcon: const Icon(Icons.password,color: Colors.orange, size: 35),
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
                 /// LOGIN
                 SizedBox(
                   width: 100.w,
                   height: Shared.getDeviceByTypeHeight(),
                   child: ElevatedButton(
                     onPressed: () {
                       if(_formKey.currentState!.validate()) {
                         loginBtn(LoginPage.email, LoginPage.password);
                       }
                     },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.orange,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                     ), child: Text(LoginPage.$loginBtn, style: TextStyle(fontSize: 25.sp)),
                   ),
                 ),
                 /// ALREADY HAVE ACCOUNT OR NOT?
                 Container(
                   width: 100.w,
                   height: Shared.getDeviceByTypeHeight(),
                   padding: const EdgeInsets.all(10),
                   child: RichText(
                     text: TextSpan(
                         style: TextStyle(
                             color: Colors.black, fontSize: 20.sp),
                         children: <TextSpan>[
                           const TextSpan(text: 'Not registered yet?'),
                           TextSpan(text: ' Register',
                               style: const TextStyle(color: Colors.orange),
                               recognizer: TapGestureRecognizer()
                                 ..onTap = () {
                                   forwardToRegisterBtn();
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

  void forwardToRegisterBtn() {
    Navigator.push(context, MaterialPageRoute<dynamic>(builder: (BuildContext context) => const RegisterPage()));
  }

  void loginBtn(TextEditingController email, TextEditingController password) {}

}
