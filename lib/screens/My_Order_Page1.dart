import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const.dart';
import 'CheckOut_Page.dart';
class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.White_Text_COLOR,

        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(child: Text("My Orders",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18),)),
        ),
        leading: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,color: AppColors.Text_COLOR,)),
      ),
      body: Column(children: [
      Container(

        child: Card(
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
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: Colors.grey.shade100,child:
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Classic Cheese Burger x1",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 12)),
                  Text("16",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 15),)
                ],
              ),
            ),
            Container(width: MediaQuery.of(context).size.width,color:Colors.grey.shade300,height: 1,),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("American Beef Burger x1",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 12)),
                  Text("14",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 15),)
                ],
              ),
            ),
            Container(width: MediaQuery.of(context).size.width,color:Colors.grey.shade300,height: 1,),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Chicken Wings Bucket x1",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 12)),
                  Text("12",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 15),)
                ],
              ),
            ),
            Container(width: MediaQuery.of(context).size.width,color:Colors.grey.shade300,height: 1,),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Add more foods",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Primary_Color,fontSize: 12)),

                ],
              ),
            ),
            Container(width: MediaQuery.of(context).size.width,color:Colors.grey.shade300,height: 1,),

          ],),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(child: Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Delivery Instruction ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),
                  Container(child: Row(children: [
                    Text("Add notes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Primary_Color),),
                    Icon(Icons.add,color: AppColors.Primary_Color,)
                  ],),)
                ],),
              ),),
              Container(width: MediaQuery.of(context).size.width,color:Colors.grey.shade300,height: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),
                    Container(child: Row(children: [
                      Text("64",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),

                    ],),)
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Cost",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),
                    Container(child: Row(children: [
                      Text("Free",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),

                    ],),)
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15),
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
                        "Check out", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                      ),
                    ),
                  ),
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckOut()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
    ],),);
  }
}
