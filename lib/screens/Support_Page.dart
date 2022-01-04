import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';

import 'Chat_page.dart';
class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.White_Text_COLOR,

        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(child: Text("Support",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18),)),
        ),
        leading: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,color: AppColors.Text_COLOR,)),
      ),
      body: Column(children: [

        Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
        child: Container(padding: EdgeInsets.only(left: 10),decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(20.0),
        ),
          width: MediaQuery.of(context).size.width*.8,
          height: 35,
          child: TextFormField(

            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Icon(Icons.search),
                border:InputBorder.none,
                hintText: "search result"
            ),
          ),
        ),
      ),

        Container(
          child: Column(

            children: [

            Card(
              elevation: 3,
              child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15,left: 15),
                child: Column(children: [
                  Container(width: 100,child: Text("Live chat with your support",style: TextStyle(color: AppColors.Primary_Color,fontWeight: FontWeight.bold,fontSize: 15),),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
                    child: Container(width: 70,height: 30,child: Center(child: InkWell(onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chat()),
                    );},child: Text("Start"))),decoration: BoxDecoration(color: AppColors.Primary_Color,borderRadius: BorderRadius.all(Radius.circular(20))),),
                  )
                ],),
              ),
                Spacer(flex: 1,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(

                      child: Image.asset("assets/image/chat.png"))
                ],)
            ],),)

          ],),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(

                children: [
                Row(
                  children: [
                    Text("Frequently asked questions",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
                  Card(
                    elevation: 1,
                    child: Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My order didn't delivered",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward_ios,size: 15,)
                          ],),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1,
                    child: Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My order came with missing item",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward_ios,size: 15,)
                          ],),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1,
                    child: Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My order didn't delivered",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward_ios,size: 15,)
                          ],),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1,
                    child: Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My order didn't delivered",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward_ios,size: 15,)
                          ],),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 1,
                    child: Container(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("My order didn't delivered",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward_ios,size: 15,)
                          ],),
                      ),
                    ),
                  ),


              ],),
            ),
          ),
        )


      ],),
    );
  }
}
