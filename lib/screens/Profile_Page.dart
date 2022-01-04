import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';

import 'About _us _page.dart';
import 'Filter_Page.dart';
import 'Order_History.dart';
import 'PaymentMethod1.dart';
import 'Profile_Page2.dart';
import 'Support_Page.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30,left: 15,right: 15,bottom: 30),
          child: Container(child:
          Row(children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage:
              NetworkImage("data:image/jpeg;base64,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"),
              backgroundColor: Colors.transparent,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text("Gianna",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold),),
                Text("Gianna@xyz.com",style: TextStyle(color: AppColors.Grey_Text_COLOR),),

              ],),
            )
          ],),),
        ),
        InkWell(
          onTap: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>ProfileData()),
          );},
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Profile",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                  Icon(Icons.arrow_forward_ios,size: 15,)
                ],),
              ),
            ),
          ),
        ),
        InkWell(  onTap: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentMethod1()),
        );},
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Method",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                    Icon(Icons.arrow_forward_ios,size: 15,)
                  ],),
              ),
            ),
          ),
        ),
        InkWell(
         onTap: (){
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => OrderHistory()),
           );
         },
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order History",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                    Icon(Icons.arrow_forward_ios,size: 15,)
                  ],),
              ),
            ),
          ),
        ),
        Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Address",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                  Icon(Icons.arrow_forward_ios,size: 15,)
                ],),
            ),
          ),
        ),
        InkWell(onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Filter()),
          );
        },
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Setting",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                    Icon(Icons.arrow_forward_ios,size: 15,)
                  ],),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutUs()),
            );
          },
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About us",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                    Icon(Icons.arrow_forward_ios,size: 15,)
                  ],),
              ),
            ),
          ),
        ),
        InkWell(onTap: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Support()),
        );},
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,left: 10),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Support Centre",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                    Icon(Icons.arrow_forward_ios,size: 15,)
                  ],),
              ),
            ),
          ),
        ),
      ],),
    );
  }
}
