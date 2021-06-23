import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/ui/pages/pages.dart';

class AuthController{
  bool _isAuthenticated = false;
  late GoogleSignInAccount _user;

  get user => _user;

  void setUser(BuildContext context, user){
    if(user != null){
      _isAuthenticated = true;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}