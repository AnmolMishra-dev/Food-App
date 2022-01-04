import 'package:flutter/material.dart';
import 'package:rich_text_widget/rich_text_widget.dart';

import '../Const.dart';
import 'forgot_password.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 15),
                      child: InkWell( onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.black,)),
                    )

                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40),
                    child: Container(width: 200,child: Text("Log in to your account",style: TextStyle(color: AppColors.Primary_Color,fontSize: 25,fontWeight: FontWeight.bold),),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 35),
                    child: Container(padding: EdgeInsets.only(left: 10),decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                      width: MediaQuery.of(context).size.width*.8,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border:InputBorder.none,
                            hintText: "Email"
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 35),
                    child: Container(padding: EdgeInsets.only(left: 10),decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                      width: MediaQuery.of(context).size.width*.8,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border:InputBorder.none,
                            hintText: "password"
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPassword()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15,right: 35),
                      child: Align(alignment: Alignment.topRight,child: Text("Forgot?",style: TextStyle(color: AppColors.Primary_Color,fontWeight: FontWeight.w500,fontSize: 15),)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 35),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors. Primary_Color),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: AppColors. Primary_Color))),
                      ),
                      child: Container(width:MediaQuery.of(context).size.width*.8,height: 45,
                        child: Center(
                          child: Text(
                            "Log In", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: RichTextWidget(
                  // default Text
                  Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                  // rich text list
                  richTexts: [
                    BaseRichText(
                      "Sign up",
                      style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.w500),
                      onTap: () => {print("touch pushed")},
                    ),

                  ],
                ),
              ),
            )

          ],),
      ),
    );
  }
}
