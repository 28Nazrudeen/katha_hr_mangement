import 'package:flutter/material.dart';
import 'package:kathatriadicattendenceapp/OTPVerification.dart';
import 'package:kathatriadicattendenceapp/loginPage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key, required String title}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },

            child: Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Create Account",style: TextStyle(
          color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xfff6ac37),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 60,
            left: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              Text("Sign Up",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Name",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Phone number",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                // onTap: () {
                //   Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //         builder: (context) => LoginPage(title: "")),
                //         (route) => route.isFirst,
                //   );
                // },
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTPVerification(title: ""),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)),
                  height: size.height * 0.07,
                  width: size.width * 0.16,
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
