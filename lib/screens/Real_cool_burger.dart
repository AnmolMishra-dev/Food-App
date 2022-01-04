import 'package:flutter/material.dart';

import '../Const.dart';
import 'My_Order_Page1.dart';
class Burger extends StatefulWidget {
  const Burger({Key? key}) : super(key: key);

  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Color(0XFFfde2dc),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .29,
                child: Stack(
                  overflow: Overflow.visible,
                  fit: StackFit.expand,
                  children: [
                    Container(child: Image.network("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/popeyes-secret-menu-1601665325.png?resize=640:*",fit: BoxFit.fill
                      ,),),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 20),
                      child: InkWell(onTap: (){Navigator.pop(context);},child: Align(  alignment: Alignment.topLeft,child: Icon(Icons.arrow_back_ios,color: Colors.white,))),
                    ),


                    Positioned(bottom: 20,right: 20,child: Align(alignment: Alignment.bottomRight,child: Container(decoration: BoxDecoration( color: Colors.white,   borderRadius:
            BorderRadius.all(Radius.circular(20))),width: 100,height: 30,child: Center(child: Text("20-30 min")),)))
                  ],)
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15,right: 15,left: 15),
                decoration: BoxDecoration(
                    color: AppColors.White_Text_COLOR,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(20, 30),
                        topRight: Radius.elliptical(20, 30))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child:Container(
                    width: MediaQuery.of(context).size.width,
                    child:
                    Column(

                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 150,child: Text("Really cool Burgers",style: TextStyle(color: AppColors.Primary_Color,fontSize: 25,fontWeight: FontWeight.w600),),),
                        Icon(Icons.favorite_border,color: Colors.grey.shade200,)
                      ],
                    ),
                        Row(children: [
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 15,),
                          Text("4.9",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: AppColors.Primary_Color),),
                          Text("(129 rating)",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                          Text("Burger-Western food",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),)
                        ],),
                        Row(children: [
                          Icon(Icons.location_on,color: AppColors.Primary_Color,size: 15,),

                          Text("123 Rock street,New york",style: TextStyle(fontSize: 12,color: AppColors.Grey_Text_COLOR),),
                        ],),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 15),
                          child: Row(
                            children: [
                              Text("popular choices",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: AppColors.Text_COLOR),),
                            ],
                          ),
                        ),
                        Container(
                          child:
                          SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 100,color: Colors.white,
                                  child: Image.asset("assets/image/burger.png"),
                                  ),

                                  Text("American beef",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("₹100",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 100,color: Colors.white,
                                    child: Image.asset("assets/image/burger.png"),
                                  ),

                                  Text("American beef",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("₹190",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 100,color: Colors.white,
                                    child: Image.asset("assets/image/burger.png"),
                                  ),

                                  Text("Signature Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("₹150",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 100,color: Colors.white,
                                    child: Image.asset("assets/image/burger.png"),
                                  ),

                                  Text("Burger Bistro",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("₹100",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(width: 100,color: Colors.white,
                                    child: Image.asset("assets/image/burger.png"),
                                  ),

                                  Text("Smokin' Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                                  Text("₹90",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            ),

                          ],),),),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 15),
                          child: Row(
                            children: [
                              Text("Burgers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: AppColors.Text_COLOR),),
                            ],
                          ),
                        ),
                        Card(child: Container(
                          height: 80,
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(

      mainAxisAlignment: MainAxisAlignment.center,

   crossAxisAlignment: CrossAxisAlignment.start,

      children: [

      Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Text("Classic Cheese Burger",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),

          Text("₹600",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),),



        ],

      ),

      Row(



        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Container(child: Column(children: [



            Text("Angur,beef,cheese",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12),),

            Text("tomato jam,cheese",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12),)

          ],),),

        Row(



          children: [Icon(Icons.star,color: AppColors.Primary_Color,size: 12,),Text("Popular",style: TextStyle(color: AppColors.Primary_Color,fontSize: 12,fontWeight: FontWeight.bold),)],)

        ],

      )



  ],),
),
                        ),),
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
                                  "Add To Basket", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyOrders()),
                              );
                            },
                          ),
                        ),

                    ],),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
