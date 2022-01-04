import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const.dart';
import 'Chat_page.dart';
import 'Support_Page.dart';
class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Support()),
            );
          },
            child: Row(children: [
              Text("Chat",style: TextStyle(color: AppColors.Primary_Color ),),
            Icon(CupertinoIcons.chat_bubble_2,color: AppColors.Primary_Color,)

            ],),
          )
        ],
      elevation: 0
      ,backgroundColor: Colors.white,leading: InkWell(onTap: (){  Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,color: AppColors.Text_COLOR,size: 15,)),title: Center(child: Text("Track your order",style: TextStyle(color:AppColors.Text_COLOR,fontSize: 15),)),),
      body: Column(children: [
        Container(child:
          Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 15),
                child: Container(child: Column(children: [
                  Center(child: Text("Estimated Delivery time",style: TextStyle(color:AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)),
                  Center(child: Text("05.30PM",style: TextStyle(fontSize: 20,color: AppColors.Primary_Color,fontWeight: FontWeight.bold),)),
                ],),),
              ),

              Container(height: 2,width: MediaQuery.of(context).size.width,color:Colors.grey.shade200,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
            Container(child: Row(children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),width: 80,height: 80,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkBRD_C_4Jk6fp6K_BysyDC1p_HCSUrZDm6g&usqp=CAU"),)

           ,Column(children: [
             Text("You rider",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.w500,fontSize: 10),),
                  Text("jason statham",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.w500,fontSize: 15),)
           ],)

            ],),),
                  Column(children: [
                    Row(
                      children: [
                        Icon(Icons.star,color: AppColors.Primary_Color,),
                        Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 10,),),
                      ],
                    ),
                    Text("(124 ratings)",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,))
                  ],)
                ],),),
              )
          ],),),

        Container(child:
        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.Grey_Text_COLOR),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: AppColors.Grey_Text_COLOR))),
            ),
            child: Container(width:MediaQuery.of(context).size.width*.8,height: 45,
              child: Center(
                child: Text(
                  "Cancel your order", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                ),
              ),
            ),
            onPressed: () {},
          ),
        ),)

      ],),
    );
  }
}

