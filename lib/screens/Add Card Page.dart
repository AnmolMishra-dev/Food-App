import 'package:flutter/material.dart';

import '../Const.dart';
import 'CheckOut_Page.dart';
class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 18,color: AppColors.Text_COLOR,)),
      backgroundColor: Colors.white,elevation: 1,title: Center(child: Text("Add Card",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.w500),)),),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
         padding: const EdgeInsets.only(top: 30,left: 20),
         child: Text("card Number",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
       ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Card(
            child: Container(padding: EdgeInsets.only(left: 5,right: 5),height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey.shade200, width: 1),
                  borderRadius: BorderRadius.all(
                      Radius.circular(8.0))),
              width: MediaQuery.of(context).size.width*.8,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween
            ,children: [
              Container(width: 25,
                  height: 25,
                  child: Image.network(
                      "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png")),
              Text("1234 7894 8527 45685",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),),
              Icon(Icons.camera_enhance_outlined)

            ],),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20),
              child: Text("Expiry Date",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 10),
              child: Card(
                child: Container(padding: EdgeInsets.only(left: 5,right: 5),height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.grey.shade200, width: 1),
                      borderRadius: BorderRadius.all(
                          Radius.circular(8.0))),
                  width: MediaQuery.of(context).size.width*.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                    ,children: [
                Center(child: Text("MM/YY"))

                  ],),),
              ),
            ),
          ],),    Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20),
                  child: Text("Verification Value",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 10),
                  child: Card(
                    child: Container(padding: EdgeInsets.only(left: 5,right: 5),height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.grey.shade200, width: 1),
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.0))),
                      width: MediaQuery.of(context).size.width*.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween
                        ,children: [
                        Center(child: Text("MM/YY"))

                      ],),),
                  ),
                ),
              ],),

        ],),
        Padding(
          padding: const EdgeInsets.only(top: 30,left: 20),
          child: Text("Country",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Card(
            child: Container(padding: EdgeInsets.only(left: 5,right: 5),height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey.shade200, width: 1),
                  borderRadius: BorderRadius.all(
                      Radius.circular(8.0))),
              width: MediaQuery.of(context).size.width*.8,
              child: Row(

                children: [
                Container(width: 25,
                    height: 25,
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1280px-Flag_of_Brazil.svg.png")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Brazil",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15),),
                ),
               Spacer(flex: 1,),
                Icon(Icons.keyboard_arrow_down)

              ],),),
          ),
        ),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(top: 15,left: 35,bottom: 20),
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
                  "Next", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
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
    ));
  }
}
