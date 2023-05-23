import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key, required String title}) : super(key: key);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  bool email = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black)),
        title: Text("OTP Verification",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xfff6ac37),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.1,
            ),
            Visibility(
              visible: email == false ? true : false,
              child: Container(
                height: size.height * 0.3,
                width: size.width,
                //color: Colors.black,
                child: Column(
                  children: [
                    Text("Email Verification",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    OtpTextField(
                      numberOfFields: 5,
                      //borderColor: Colors.black,
                      enabledBorderColor: Colors.black,

                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          email = true;
                        });
                      },
                      child: Container(
                        height: size.height * 0.04,
                        width: size.width * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Confirm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            email == true
                ? Container(
                    height: size.height * 0.25,
                    width: size.width,
                    //color: Colors.black,
                    child: Column(
                      children: [
                        Text("Mobile Verification",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 20,
                        ),
                        OtpTextField(
                          numberOfFields: 5,
                          //borderColor: Colors.black,
                          enabledBorderColor: Colors.black,

                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Verification Code"),
                                    content: Text(
                                        'Code entered is $verificationCode'),
                                  );
                                });
                          }, // end onSubmit
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.16,
                            child: Icon(Icons.arrow_forward,color: Colors.white),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black,

                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(),

          ],
        ),
      ),
    );
  }
}
