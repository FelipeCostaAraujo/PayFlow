import 'package:flutter/material.dart';
import 'package:payflow/themes/themes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              color: Theme.of(context).primaryColor,
            ),
            Positioned(
              top: 40,
              left: 0,
                right: 0,
                child: Image.asset(AppImages.person,width: 208,height: 337)
            ),
            Positioned(
              bottom: size.height * 0.18,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding: const EdgeInsets.only(right: 70,left: 70,top: 30),
                    child: Text("Organize seus boletos em um só lugar",style: TextStyles.titleHome,textAlign: TextAlign.center),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
