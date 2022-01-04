import 'package:flutter/material.dart';
import 'package:rich_text_widget/rich_text_widget.dart';
import '../Const.dart';
import 'Login_page.dart';
import 'Main_Home_Page.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    child: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.black,)),
                  )

                ],),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 40),
                  child: Container(width: 200,child: Text("Create your account",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),),
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
                 hintText: "Username"
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
                      keyboardType: TextInputType.emailAddress,
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
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border:InputBorder.none,
                        hintText: "password'"
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
                      decoration: const InputDecoration(
                        hintText: 'Phone',
                          border:InputBorder.none,

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
                          "Log In", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                        ),
                      ),
                    ),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainHome ()),
                      );
                    },
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,),
                    child: Container(width: 210,child: Text("By clicking sign up you agree to our terms and conditions",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.grey.shade500),textAlign: TextAlign.center,),),
                  ),
                ),


              ],
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Center(
                child: RichTextWidget(
                  // default Text
                  Text(
                    'Already an account? Log In',
                    style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                  // rich text list
                  richTexts: [
                    BaseRichText(
                      "Log In",
                      style: TextStyle(color: AppColors.Primary_Color,fontSize: 15),
                      onTap: () => {  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Login()),
                      )},
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
