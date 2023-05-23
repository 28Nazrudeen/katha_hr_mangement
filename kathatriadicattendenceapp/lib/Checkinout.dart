import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Checkinout extends StatefulWidget {
  const Checkinout({Key? key}) : super(key: key);

  @override
  State<Checkinout> createState() => _CheckinoutState();
}

class _CheckinoutState extends State<Checkinout> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          "Login & Out ",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Welcome ",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              //userName
              Text(
                "userName ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Today's Status",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //checkin-checkoutbox
              Container(
                height: size.height * 0.2,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black38,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.19,
                      width: size.width * 0.46,
                      //color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Check In",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("--/--",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.19,
                      width: size.width * 0.4,
                      //color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Check out",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("--/--",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //currenttime and current dat
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          DateTime.now().day.toString(),
                          style: TextStyle(
                            color:Color(0xfff6ac37),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          DateFormat("MMMM yyyy").format(DateTime.now()),
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 20,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    StreamBuilder(
                      stream: Stream.periodic(const Duration(seconds: 1)),
                      builder: (context,snapshot){
                        return Container(
                          child: Text(
                            DateFormat("hh:mm:ss a").format(DateTime.now()),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }

                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: SlideAction(
                  borderRadius: 12,
                  elevation: 0,
                  innerColor: Color(0xfff6ac37),
                  outerColor: Colors.black,
                  onSubmit: () {},
                  text: "Swipe to Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
