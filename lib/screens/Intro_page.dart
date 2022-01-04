import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const.dart';
import 'Home_Page.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Container(
                child: Center(child: Image.asset("assets/image/homepage.png")),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .7,
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .35,
                decoration: BoxDecoration(
                  color: AppColors.Primary_Color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 0, 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Happy Meals",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 250,
                          child: Text(
                            "Discover the best food over 1000 restaurant",
                            style: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white))),
                          ),
                          child: Container(width: 150,height: 40,
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(fontSize: 15,color:Colors.black ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );

                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],

        ),
      ),
    );
  }
}
