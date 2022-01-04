import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const.dart';
class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues _currentRangeValues = const RangeValues(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.White_Text_COLOR,
        elevation: 0,
        leading: InkWell(onTap: (){

          Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios,color: AppColors.Text_COLOR,)),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Center(child: Text("Filter",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 20,fontWeight: FontWeight.w500),)),
        ),
actions: [
  Padding(
    padding: const EdgeInsets.only(top: 20,right: 10),
    child: Text("Reset",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 18),),
  )
],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(children: [
Row(children: [
  Text("Sort by",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 20,fontWeight: FontWeight.w500),)
],),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: Container(height: 40,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Most Popular",style: TextStyle(color: AppColors.Primary_Color,fontSize: 20,fontWeight: FontWeight.w500),),
                      Icon(Icons.check,color: AppColors.Primary_Color,)
                    ],
                  ),
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: Container(height: 40,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price high to low",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 20,fontWeight: FontWeight.w500),),
                      // Icon(Icons.check,color: AppColors.Primary_Color,)
                    ],
                  ),
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: Container(height: 40,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Price low to high",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 20,fontWeight: FontWeight.w500),),
                      // Icon(Icons.check,color: AppColors.Primary_Color,)
                    ],
                  ),
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                child: Container(height: 40,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("nearest to me",style: TextStyle(color: AppColors.Grey_Text_COLOR,fontSize: 20,fontWeight: FontWeight.w500),),
                      // Icon(Icons.check,color: AppColors.Primary_Color,)
                    ],
                  ),
                ),),
              ),
            ),
            Row(
              children: [
                Text("Cuisines",style:TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround
                ,children: [
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                BorderRadius.all(Radius.circular(40))),
                  child: Center(child: Text("All")),
                  ),
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: AppColors.Primary_Color,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Fast Food",style: TextStyle(color: AppColors.White_Text_COLOR),)),
                  ),
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Japanese")),
                  ),Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Pizza")),
                  ),


                ],),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround
                  ,children: [
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("All")),
                  ),
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Fast Food",)),
                  ),
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Japanese")),
                  ),Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Pizza")),
                  ),


                ],),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround
                  ,children: [
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("All")),
                  ),
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Fast Food",)),
                  ),
                  Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Japanese")),
                  ),Container(
                    width: 80,height: 30,
                    decoration: BoxDecoration( color: Colors.grey.shade100,borderRadius:
                    BorderRadius.all(Radius.circular(40))),
                    child: Center(child: Text("Pizza")),
                  ),


                ],),
              ),
            ),

            Row(children: [
              Text("price",style: TextStyle(color: AppColors.Text_COLOR,fontWeight: FontWeight.bold,fontSize: 15),),
            ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("0.00",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.bold),),
            Text(_currentRangeValues.end.round().toString(),style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.bold),),
          ],
        ),
        RangeSlider(
          activeColor: AppColors.Primary_Color,
          inactiveColor: AppColors.Grey_Text_COLOR,
          values: _currentRangeValues,
          min: 0,
          max: 100,
          divisions: 5,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
              print( _currentRangeValues.end.round().toString(),);
            });
          },
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
                      "Apply", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),

          ],),
        ),
      ),
    );
  }
}
