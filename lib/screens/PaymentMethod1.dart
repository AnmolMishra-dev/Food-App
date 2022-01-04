import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';

import 'Add Payment method.dart';
class PaymentMethod1 extends StatefulWidget {
  const PaymentMethod1({Key? key}) : super(key: key);

  @override
  _PaymentMethod1State createState() => _PaymentMethod1State();
}

class _PaymentMethod1State extends State<PaymentMethod1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,elevation: 1,
        title: Center(child: Text("Wallet",style: TextStyle(color: AppColors.Text_COLOR),)),
          actions: [
            InkWell(onTap: (){Navigator.pop(context);},child: Icon(Icons.cancel,color: AppColors.Text_COLOR,))
          ],
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,bottom: 20),
              child: Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: AppColors.Text_COLOR),),
            ),




                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 18, right: 18),
                      child: Wrap(
                        // direction: Axis.vertical,
                        // alignment: WrapAlignment.center,
                        // spacing:8.0,
                        // runAlignment:WrapAlignment.center,
                        // runSpacing: 8.0,
                        // crossAxisAlignment: WrapCrossAlignment.center,
                        // textDirection: TextDirection.rtl,
                        // verticalDirection: VerticalDirection.up,
                        children: [
                          Card(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade200, width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0))),

                                width: 90,
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(child: Text("Uber", style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.Text_COLOR),)),
                                    Container(width: double.infinity,
                                      height: 1,
                                      color: Colors.grey.shade400,),
                                    Container(padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text("Uber Cash", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),),
                                          Text("Rs 00", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),)
                                        ],),)
                                  ],
                                )
                            ),
                          ),
                          Card(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade200, width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0))),

                                width: 90,
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(width: 25,
                                        height: 25,
                                        child: Image.network(
                                            "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png")),
                                    Container(width: double.infinity,
                                      height: 1,
                                      color: Colors.grey.shade400,),
                                    Container(padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text("*** 999 ", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),),
                                          Text("(Debit)", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),)
                                        ],),)
                                  ],
                                )
                            ),
                          ),
                          Card(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade200, width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0))),

                                width: 90,
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(width: 25,
                                        height: 25,
                                        child: Image.network(
                                            "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png")),
                                    Container(width: double.infinity,
                                      height: 1,
                                      color: Colors.grey.shade400,),
                                    Container(padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text("*** 999 ", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),),
                                          Text("(Debit)", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),)
                                        ],),)
                                  ],
                                )
                            ),
                          ),
                          Card(
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.shade200, width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0))),

                                width: 90,
                                height: 120,
                                child: Column(
                                  children: [
                                    Container(width: 25,
                                        height: 25,
                                        child: Image.network(
                                            "data:image/png;base64,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")),
                                    Container(width: double.infinity,
                                      height: 1,
                                      color: Colors.grey.shade400,),
                                    Container(padding: EdgeInsets.only(top: 20),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Text("Cash ", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),),
                                          Text("(Debit)", style: TextStyle(
                                              color: AppColors.Grey_Text_COLOR,
                                              fontSize: 15),)
                                        ],),)
                                  ],
                                )
                            ),
                          ),
                          InkWell(onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AddPaymentMethod()),
                            );
                          },
                            child: Card(
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade200, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0))),

                                  width: 90,
                                  height: 120,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                     Icon(Icons.add,color: AppColors.Text_COLOR,size: 25,),
                                      Text("add" ,style: TextStyle(
    color: AppColors.Grey_Text_COLOR,
    fontSize: 15),)
                                    ],
                                  )
                              ),
                            ),
                          ),


                        ],
                      ),


              ),
            
          ],
        ));
  }
}
