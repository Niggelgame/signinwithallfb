

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signin/platformWidget.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SigninButtons extends PlatformWidget<FlatButton, FlatButton> {

  @override 
  createIosWidget(BuildContext context) => new FlatButton(onPressed: null, child: null);

  @override 
  createAndroidWidget(BuildContext context) { 
    final GoogleSignIn _googleAuth = GoogleSignIn(scopes: ["email"]);
    Future authenticateWithGoogle() async {
      final googleUser = await _googleAuth.signIn();
      // if (googleUser == null) {
      //   return null;
      // } else {
      //   final googleAuth = await googleUser.authentication;
      //   final credential = GoogleAuthProvider.getCredential(
      //       idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      //   return (await FirebaseAuth.instance.signInWithCredential(credential)).user;
      // }
    }

    return new FlatButton(
      onPressed: () => authenticateWithGoogle(), 
      child: Text("Sign In")); 
  }

}