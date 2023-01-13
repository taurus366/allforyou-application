//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// import '../Shared.dart';
//
// class CustomBtns {
//
//
//   CustomBtns._();
//
//   static loginBtn(GlobalKey<FormState> _formKey,TextEditingController) {
//     return SizedBox(
//       width: 100.w,
//       height: Shared.getDeviceByTypeHeight(),
//       child: ElevatedButton(
//         onPressed: () {
//           if(_formKey.currentState!.validate()) {
//             loginBtn(LoginPage.email, LoginPage.password);
//           }
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.orange,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//         ), child: Text(LoginPage.$loginBtn, style: TextStyle(fontSize: 25.sp)),
//       ),
//     );
//   }
// }