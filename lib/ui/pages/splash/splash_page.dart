import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './components/components.dart';

import '../../../themes/themes.dart';
import '../pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull)),
          Center(
            child: FutureBuilder(
              future: _initialization,
              builder: (BuildContext context, AsyncSnapshot snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  Center(child: CircularProgressIndicator());
                }

                if(snapshot.hasError){
                  return errorInitialization();
                }
                if(snapshot.connectionState == ConnectionState.done){
                  return Center(child: CircularProgressIndicator());
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }

}
