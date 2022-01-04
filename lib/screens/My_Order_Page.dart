import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';
class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


        Container(width: 500,height: 200,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9ebv8igkMbUD3-aVXwKiuvqYa01ZF-9UAEA&usqp=CAU"),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("your basket is empty",style: TextStyle(color: AppColors.Primary_Color,fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        Container(width: 200,child: Text("Make your basket happy and food to it",textAlign: TextAlign.center,style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.bold),))
    ],);
  }
}
