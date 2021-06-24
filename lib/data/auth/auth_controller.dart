import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:payflow/data/models/models.dart';
import 'package:payflow/ui/pages/pages.dart';


class AuthController{
  final String userPath = "user";
  UserModel? _user;

  UserModel get user => _user!;

  Future<void> setUser(BuildContext context, user) async{
    if(user != null){
      await saveUser(user);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(user: user),));
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  Future<void> saveUser(UserModel user) async{
    final instance = await SharedPreferences.getInstance();
    await instance.setString(userPath, jsonEncode(user.toJson()));
  }

  Future<void> currentUser(context) async{
    try{
      final instance = await SharedPreferences.getInstance();
      var userString = instance.getString(userPath);
      var user = UserModel.fromJson(jsonDecode(userString!));
      setUser(context, user);
    }catch(ex){
      print(ex);
      setUser(context, null);
    }
  }
}