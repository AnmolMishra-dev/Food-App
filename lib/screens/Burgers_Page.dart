import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const.dart';
import 'Real_cool_burger.dart';
class BurgersPage extends StatefulWidget {
  const BurgersPage({Key? key}) : super(key: key);

  @override
  _BurgersPageState createState() => _BurgersPageState();
}

class _BurgersPageState extends State<BurgersPage> {
  List burgers=[
    {
  "title":"Burger Queen",
      "subtitle":"Cafe-Western Food",
      "heart":false,
      "image":"assets/image/1.jpg"


  },
    {
      "title":"Real Cool Burger",
      "subtitle":"Cafe-Western Food",
      "heart":true,
      "image":"assets/image/2.jpg"
    },
    {
      "title":"Awesome Burger",
      "subtitle":"Cafe-Western Food",
      "heart":false,
      "image":"assets/image/3.jpg"
    },
    {
      "title":"Just Eat burger",
      "subtitle":"Cafe-Western Food",
      "heart":false,
      "image":"assets/image/4.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
color: Colors.brown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .32,
              child: Stack(
                overflow: Overflow.visible,
                fit: StackFit.expand,
                children: [
                Container(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX1G7n-APt8Vog6umvJ7yKZnaRldkYrxLp3w&usqp=CAU",fit: BoxFit.fill
                  ,),),
                  Positioned(bottom: 30,left: 20,child: Align(alignment: Alignment.bottomLeft,child: Text("Burgers",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 40,color: AppColors.White_Text_COLOR),))),
                  GestureDetector(onTap: (){
                    Navigator.pop(context);
                  },child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20),
                    child: Align(alignment: Alignment.topLeft,child: Icon(Icons.arrow_back_ios,color: AppColors.Grey_Text_COLOR,size: 25,)),
                  ))
              ],)
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    color: AppColors.White_Text_COLOR,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(20, 30),
                        topRight: Radius.elliptical(20, 30))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child:
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${burgers.length} restaurants",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
                              Icon(Icons.clear_all_sharp,size: 25,color: AppColors.Primary_Color,)
                            ],
                          ),
                        ),
      ListView.builder(
        shrinkWrap: true,
      itemCount: burgers.length,
      itemBuilder: (BuildContext context,int index){
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                         child: InkWell(
                           onTap: (){ Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => Burger()),
                           );},
                           child: Card(
                             shadowColor: Colors.black,

                             elevation: burgers[index]["heart"]==!true?1:4,
                             child: Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                 Column(children: [
                                   Container(height: 100,width: MediaQuery.of(context).size.width*.3,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                                 child: Image.asset(burgers[index]["image"].toString(),fit: BoxFit.fill,),)
                                 ],),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                     Row(
                                       children: [
                                         Container(width: MediaQuery.of(context).size.width*.4,child: Text(burgers[index]["title"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.Text_COLOR),)),

                                         Icon( burgers[index]["heart"]==!true?Icons.favorite_border:Icons.favorite,size: 20,color:burgers[index]["heart"]==!true? AppColors.Grey_Text_COLOR:AppColors.Primary_Color,),
                                       ],
                                     ),
                                       Text(burgers[index]["subtitle"],style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                                       Row(children: [
                                         Icon(Icons.star,color: AppColors.Primary_Color,),
                                         Text("4.9",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.w600),),
                                         Text("(129 rating)",style: TextStyle(fontSize: 15,color: AppColors.Grey_Text_COLOR),),
                                       ],)
                                   ],),
                                 )

                               ],),
                             ),
                           ),
                         ),
                       );})

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
