import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'Account_page.dart';
import 'Login_page.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        
          image: Image.asset("assets/image/intro1.png"),
          decoration: PageDecoration(titleTextStyle: TextStyle(color: AppColors.Primary_Color,fontWeight: FontWeight.bold,fontSize: 20),bodyFlex: 0,),
          title: "Find foods you love",
         bodyWidget: Container(),
          footer: Container(width: 190,child: Text("discover the best food from over 1000 resturant",textAlign: TextAlign.center,)),
       ),
      PageViewModel(
        decoration: PageDecoration(titleTextStyle: TextStyle(color: AppColors.Primary_Color,fontWeight: FontWeight.bold,fontSize: 20),bodyFlex: 0),
        image: Image.asset("assets/image/intro2.png"),
        title: "Fast Delivery",
        bodyWidget: Container(),
        footer: Container(width: 210,child: Text("fast delivery to your home office and wherever you are ",textAlign: TextAlign.center,)),
      ),
      PageViewModel(
        decoration: PageDecoration(titleTextStyle: TextStyle(color: AppColors.Primary_Color,fontWeight: FontWeight.bold,fontSize: 20),bodyFlex: 0),
        image: Image.asset("assets/image/intor3.png"),
        title: "Live Tracking",
        bodyWidget: Container(),
        footer:Container(width: 210,child: Text("Real Time Tracking of your food on the app after order",textAlign: TextAlign.center,)),
      ),

    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,children: [Padding(
              padding: const EdgeInsets.only(top: 20,right: 15),
              child: InkWell(onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login ()),
                );
              },child: Text("Log in",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: AppColors.Primary_Color),)),
            )],),

            Container(height: 400,
              child: IntroductionScreen(

                dotsDecorator: DotsDecorator(activeColor: AppColors.Primary_Color),


                next: Text(""),

                pages: getPages(),
                showNextButton: false,
showDoneButton: false,

                done: Text(""),
                onDone: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.Primary_Color),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: AppColors.Primary_Color))),
                ),
                child: Container(width: 250,height: 40,
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccount()),
                  );

                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey.shade200))),
                ),
                child: Container(width: 250,height: 40,
                  child: Center(
                    child: Text(
                      "Continue with Facebook", style: TextStyle(fontSize: 15,color:Colors.black ),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],),
        ),
      ),
    );
  }
}

