import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.07,
                  width: size.width * 0.8,
                  //color: Colors.teal,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Employee Details",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left:30, top: 30),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "First Name",
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left:30, top: 15),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Last Name",
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left:30, top: 15),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Date of Birth",
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left:30, top: 15),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Designation",
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left:30, top: 15),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      filled:true,
                      fillColor: Colors.white,

                      //contentPadding: EdgeInsets.only(bottom:50),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      hintText: "Address",
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    height: size.height*0.06,
                    width: size.width*0.225,

                    child: Center(
                      child: Text("Save",
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
