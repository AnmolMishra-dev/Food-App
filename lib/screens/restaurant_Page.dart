import 'package:flutter/material.dart';

import '../Const.dart';
import 'Burgers_Page.dart';
import 'Filter_Page.dart';
import 'Offers_Page.dart';
class Restaurant extends StatefulWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return  Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 15),
          child: Text("Delivering to",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: DropdownButton<String>(
            icon: Icon(Icons.keyboard_arrow_down,color: AppColors.Primary_Color,),
            underline: Container(),

            hint: Text("Current location",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.Text_COLOR,fontSize: 18),),
            items: <String>['Current location', 'Current location',].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(20.0),
          ),
            width: MediaQuery.of(context).size.width*.8,
            height: 35,
            child: TextFormField(
maxLines: null,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.search,color:Colors.black,),
                  hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),
                  border:InputBorder.none,
                  hintText: "search foods"

              ),
            ),
          ),
            InkWell(onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Filter()),
            );
          },child: Icon(Icons.clear_all_sharp,size: 25,color: AppColors.Primary_Color,))],),
        ),
        Container(
          child:
          SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BurgersPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 100,color: Colors.white,
                   child: Image.asset("assets/image/burger.png"), ),
                    Text("Offers",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 100,color: Colors.white,
                      child: Image.asset("assets/image/burger.png",fit: BoxFit.fill,)  ), Text("Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
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
                    child: Image.asset("assets/image/burger.png"),),         Text("Asian",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
          ],),),),
        Expanded(
          child: Container(

            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/2.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/3.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/4.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/5.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/6.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/7.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/8.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/9.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(child: Image.asset("assets/image/10.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Bollywood Star Cafe",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [Icon(Icons.star,color: AppColors.Primary_Color,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 12,),),
                          ),
                        ],
                      )
                    ],),
                  ),
                ),

                          ],),
                        ),
                      ))


      ],);

  }
}
