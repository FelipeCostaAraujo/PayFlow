import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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
                print(snapshot);
                if(snapshot.hasError){
                  return Container();
                }
                if(snapshot.connectionState == ConnectionState.done){
                  return Center(child: CircularProgressIndicator());
                }
                if(snapshot.hasData){
                  _nextPage(context);
                }
                return Container();
              },
            ),
          )
        ],
      ),
    );
  }

  void _nextPage(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }
}
