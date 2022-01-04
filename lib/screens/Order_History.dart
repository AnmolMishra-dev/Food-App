import 'package:flutter/material.dart';

import '../Const.dart';
class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 18,color: AppColors.Text_COLOR,)),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Center(child: Text("Order History",style: TextStyle(color: AppColors.Text_COLOR),)),
      ),
      body: Column(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  Container(height: 100,width: MediaQuery.of(context).size.width*.3,
                    color: Colors.red,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,),)
                ],),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Real cool Burger ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),
                      Text("Burger.Western Food",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                      Row(children: [
                        Icon(Icons.star,color: AppColors.Primary_Color,),
                        Text("4.9",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Primary_Color),),
                        Text("(129 rating)",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                      ],),
                      Row(children: [
                        Icon(Icons.location_on,color: AppColors.Primary_Color,),

                        Text("123 Rock street,New york",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                      ],)
                    ],),
                ),

              ],),
          ),
        ),Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  Container(height: 100,width: MediaQuery.of(context).size.width*.3,
                    color: Colors.red,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,),)
                ],),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Real cool Burger ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),
                      Text("Burger.Western Food",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                      Row(children: [
                        Icon(Icons.star,color: AppColors.Primary_Color,),
                        Text("4.9",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Primary_Color),),
                        Text("(129 rating)",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                      ],),
                      Row(children: [
                        Icon(Icons.location_on,color: AppColors.Primary_Color,),

                        Text("123 Rock street,New york",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                      ],)
                    ],),
                ),

              ],),
          ),
        ),
      ],),
    );
  }
}
