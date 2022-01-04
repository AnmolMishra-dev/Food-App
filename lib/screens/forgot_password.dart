import 'package:flutter/material.dart';

import '../Const.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 15),
                      child: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.black,)),
                    )

                  ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40),
                    child: Container(width: 200,child: Text("Forgot Password",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 25,bottom: 25),
                    child: Center(child: Container(width: MediaQuery.of(context).size.width*.8,child: Text("please enter your email to receive a link to create your new password via email",style: TextStyle(color: AppColors.Grey_Text_COLOR),),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 35),
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
                            "Send", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),



                ],
              ),
            ),


          ],),
      ),
    );
  }
}
