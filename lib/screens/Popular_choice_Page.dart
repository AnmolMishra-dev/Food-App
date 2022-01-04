import 'package:flutter/material.dart';

import '../Const.dart';
class PopularChoice extends StatefulWidget {
  const PopularChoice({Key? key}) : super(key: key);

  @override
  _PopularChoiceState createState() => _PopularChoiceState();
}

class _PopularChoiceState extends State<PopularChoice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [  Padding(
          padding: const EdgeInsets.only(top: 10,left: 10),
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
        ),Icon(Icons.menu,color: AppColors.Primary_Color,)],),
        Container(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Choice",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColors.Primary_Color),),
                  Text("Show All",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                ],
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(width: 300,height:200,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Fast Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("cafe western",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          ),
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 10,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.bold),),

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
                          Card(elevation: 3,child: Container(width: 300,height:200,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Fast Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("cafe western",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          ),
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 10,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],),
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(width: 300,height:200,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Fast Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("cafe western",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          ),
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 10,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],),
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(width: 300,height:200,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Fast Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("cafe western",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          ),
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 10,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],),
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(width: 300,height:200,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Fast Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("cafe western",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          ),
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 10,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],),
                  ),
                ),  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Card(elevation: 3,child: Container(width: 300,height:200,child: Image.asset("assets/image/1.jpg",fit: BoxFit.fill,))),
                          Positioned(bottom: 30,right: 30,child: Align(alignment: Alignment.bottomRight,child: Container(width: 100,height: 20,decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.all(Radius.circular(20))),child: Center(child: Text("10-20 Items",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),)),)))
                        ],
                      ),
                      Text("Fast Burger",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text("cafe western",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("regular food",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 10,),),
                          ),
                          Icon(Icons.star,color: AppColors.Primary_Color,size: 10,),
                          Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],),
                  ),
                ),



              ],),),
            ],
          ),),
        Expanded(
          child: Container(

            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("New Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColors.Primary_Color),),
                Card(child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                ),),
                  Card(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  ),),
                  Card(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  ),),


              ],),
            ),
          ),
        )

      ],),
    );
  }
}
