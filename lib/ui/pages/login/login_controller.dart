import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/data/auth/auth_controller.dart';
import 'package:payflow/data/models/user.model.dart';

class LoginController{
  final authController = AuthController();

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      UserModel user = UserModel(
          displayName: response!.displayName,
          email: response.email,
          id: response.id,
          photoUrl: response.photoUrl );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      print(error);
    }
  }
}