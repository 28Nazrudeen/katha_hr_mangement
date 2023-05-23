

import 'package:flutter/material.dart';
import 'package:kathatriadicattendenceapp/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required String title}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }


  // _navigatetohome() async {
  //   await Future.delayed(const Duration(milliseconds: 3000), () {});
  //   Navigator.pushReplacement(context as BuildContext,
  //       MaterialPageRoute(builder: (context) => LoginPage(title: "hjgcjhwv")));
  //}

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => LoginPage(title: ""),
        ));
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image.asset("assets/image/katha.jpeg"),
        ),
      ),
    );
  }

}


