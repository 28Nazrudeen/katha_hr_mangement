import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kathatriadicattendenceapp/SignUpPage.dart';
import 'package:kathatriadicattendenceapp/homeScreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController NameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: size.width,
        // color: Colors.orangeAccent,
        child: Column(
          children: [
            //katha logo
            Container(
              height: size.height * 0.4,
              width: size.width,
              color: Colors.white,
              child: Image.asset("assets/image/katha.jpeg"),
            ),
            //logincontainer
            Container(
              height: size.height * 0.6,
              width: size.width,
              //colorcode:f66ac37
              color: Color(0xfff6ac37),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //logintext
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Name
                        fieldTitle("Name", NameController),

                        SizedBox(
                          height: 20,
                        ),
                        fieldTitle("Password", passwordController),
                        SizedBox(
                          height: 20,
                        ),
                        //loginarrow and forget password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () async {
                                String Name = NameController.text.trim();
                                String password =
                                    passwordController.text.trim();

                                QuerySnapshot snap = await FirebaseFirestore
                                    .instance
                                    .collection("Name")
                                    .where('Name', isEqualTo: Name)
                                    .get();

                                print(snap.docs[0]["Name"]);

                                if(Name.isEmpty){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Name is still empty")));
                                }else if (password.isEmpty){

                                }
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           HomeScreen(title: ""),
                                //     ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: Colors.black,
                                ),
                                height: size.height * 0.07,
                                width: size.width * 0.16,
                                child: Center(
                                    child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )),
                              ),
                            ),
                            Text(
                              "Forget password?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Dont have an account?",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //Signup
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(title: " "),
                                ));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget fieldTitle(String title, TextEditingController controller) {
    //NmaeTextfiled
    return TextFormField(
      controller: controller,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        hintText: title,
      ),
    );
  }
  // Widget customField (String hint){
  //    return TextFormField(
  //      style: TextStyle(
  //          color: Colors.black,
  //          fontSize: 20
  //      ),
  //      decoration: InputDecoration(
  //        hintStyle: TextStyle(
  //          color: Colors.black,
  //        ),
  //        enabledBorder: UnderlineInputBorder(
  //            borderSide: BorderSide(color: Colors.black)),
  //        focusedBorder: UnderlineInputBorder(
  //            borderSide: BorderSide(color: Colors.black)),
  //        hintText: hint,
  //      ),
  //    );
  // }
}
