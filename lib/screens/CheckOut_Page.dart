import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Const.dart';
import 'Track _Your_order_Page.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.White_Text_COLOR,

        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(child: Text("Check Out",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18),)),
        ),
        leading: InkWell( onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,color: AppColors.Text_COLOR,)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(height: 100,child: Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Delivery address",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 8,fontWeight: FontWeight.w500),),
                    Text("1268 Burton Avenue,Memphis,Tennessee",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 12,fontWeight: FontWeight.w500),),
                    Text("38117,New York City",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),)


                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Container(child: Text("Change",style: TextStyle(fontSize: 12,color: AppColors.Primary_Color),)),
                    ],
                  ),
                )
              ],
            ),),
            Container(height: 15,color:Colors.grey.shade100,),
            Container(height: 200,child:

              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("payment Method",style: TextStyle(fontSize: 15,color: AppColors.Text_COLOR,fontWeight: FontWeight.w500),),
                    Text("Add +",style: TextStyle(fontSize: 15,color: AppColors.Primary_Color,fontWeight: FontWeight.w500),)
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(color: Colors.grey.shade100,
                  height: 50,width: MediaQuery.of(context).size.width*.8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Container(color: Colors.grey.shade300,child: Center(child: Text("VISA")),
                        height: 30,width: 60,
                        ),Text("****** ***** **** **1233")
                      ],),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(color: Colors.grey.shade100,
                    height: 50,width: MediaQuery.of(context).size.width*.8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(children: [ Container(child:Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAwFBMVEX///8lO4AXm9cVMHuOlrUAl9YlNHsegr4AI3X6+/2NxecRmtcyotkAldUAktQWntoAIHUZM3wAJ3gmMXissccNLHrl5+4AHHMkO4AmL3cfN34PLXpga5rZ2+XQ0t/BxNVpdJ95gqiZyukqSInt9vtLqdzY6vagpr+Ciq1JWI+Vm7kvQoTIzNpUYZTp6/A6S4hqiLO4vM8Rd7VzfaUmaaW01+4pXptwuOIqUZDQ5vSu1O02SIdEp9sAFHEiVpZ3uuPR4Wa5AAAEaElEQVR4nO3bjVKbQBQF4CwRkojEROJPUGtrtImxta1a/1rr+79VMbGOyL0EdndmL/R8T7BnFvawC7RaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABNN1orYT4dfdlxPVJNs0G7jP3t7e7j2fyD6+FqGKrykvbWcK12U7lbIeGz9u7BoesxV7LTrZgwncndjxeuh13B0XblhEoNByPX4y5vtK+RUKnuQc/1yMuatbUSqqGqy5V6kOglVEm3JgvOuWbA1KAeEQf6CVW3DtW4Y5IwGdZgufmiUxavhl9dj381zbL4Z2vqOsBKa5pl8WJvV3xnaJfFi+TAdYJVDMpiaSB9P9XdM0yYnLmOUOyi+s4iN4mye//DlnHC4SfXIQqNjOpwqSu69g3LYmH7yHWKIh+rnNIwZF+m3wzrcMl1iiJVj6FIA8HPNRcmO4tXW4JL30JZpPYFH0v9MNtZvGjPXefgzS2URbqYzlzn4F1ZKIs04ZXrHDw7ZSE5oYVnNiW68i+s1KFqy70P7ZSFGn53HYT1w85VGlyeuk7CsVMWKuiEG66jMOyUhYo9zxca8cxKWajJZhpR5oVq5ZlNJddpQi86dp2GcGJlZ6HiznNCr//ZdZ68QztloRYBPYmrjZ2yCK6XCb3op+tAOVMrZTEOlwG90HMdKOeTjbJIbl6mUOIkWimLsf8voBeKawzzE/03d+FiOT1xHSmrZ2Vn8Sag5z+4zpRloyzGnUzCW9eZsrS+98rKXKPyVtOp8UNbcpcJmN6Isl7SGJdFMtkMswkjWUvNV9NX+Ofee9G961AZidkL7mCSCygsoWFZxH82pSc8NCr88SURUFhCk7IIJhEV0ItE7RH1yyJQ5ASKa4uZXlkkcZqPCSis8XXKIgjimw6XT9xTG98VASkeq7vrNB6bT9qTd489hgouO5TI2yyM50nbPfF/kowXUXK8sDCdJ24HXPBxcPFE8YSdYvAfB080E4ah60xZ/J8kN5oJI1HrTMHHwe92teWnUNqJMHsXBh29hNJO9fmdRdDRCijuzUxBWaxsBYq8t2t8WQQ6F6nAN6R2y8LfELWpWGA/Dk40ykLeJdqyWhZh/8l1GsovNiG3u2Un0Bd1dPGqoCwqJfT7666j0PjfDuMKZRFG0bqoDdMb1coiJPh+FN3K2kxk8H+SEGURbuSc3q4/CHtKe4cvC+KgV9YZYUnsnyRUWcg6nCipUln4rkerg339S5RF+Nv1aDXwf5LEfn4KZZ2ClsN/HEyUhS9t51cG/yfJOZFQcOux/uOySKiykLf3W439k6QxZcH+o/4flEXU9LIYN6QsDh+5hE0pi9Z80M3bj+NxU8oi1ctpPYXkC9BalgXtlD6/qGVZ0PLP3IuykHgWquekT0+hyMNQLff5KqxtWdCO6au0nmVBeqIT1rUsCBv0UtqcsujRC02DyuIznbCWOwtG6FP6zVlKWyfH64TmrKQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANr+AtbYXHYB9448AAAAAElFTkSuQmCC"),
                          height: 30,width: 60,
                        ),Text("Jack@gmail.com",style: TextStyle(fontSize: 15,color: AppColors.Text_COLOR,fontWeight: FontWeight.w500),),],),
                       Icon(Icons.check_circle,color: AppColors.Primary_Color,size: 25,)
                      ],),
                    ),
                  ),
                ),
              ],)
              ),
            Container(height: 15,color:Colors.grey.shade100,),
            Container(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Enter Coupon ",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 15,fontWeight: FontWeight.w500),),
                Text("HUNGRY10",style: TextStyle(color: AppColors.Primary_Color,fontSize: 15,fontWeight: FontWeight.w500),)

              ],),
            ),),
            Container(height: 15,color:Colors.grey.shade100,),
            Container(child: Column(


              children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text("Summary",style: TextStyle(fontSize: 18,color: AppColors.Text_COLOR,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Subtotal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.Text_COLOR),),
                      Text("64.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColors.Text_COLOR),),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Cost",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.Text_COLOR),),
                      Text("Free",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColors.Text_COLOR),),
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.Text_COLOR),),
                      Text("6.4",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColors.Text_COLOR),),
                    ],),
                ),
                Container(height: 1,color: AppColors.Grey_Text_COLOR,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: AppColors.Text_COLOR),),
                      Text("57.60",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: AppColors.Primary_Color),),
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
                          "Send order", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                        ),
                      ),
                    ),
                    onPressed: () {_displayDialog(context);  },
                  ),
                ),

            ],),)

          ],
        ),
      ),
    );
  }
}
_displayDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
transitionDuration: Duration(milliseconds: 200),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.White_Text_COLOR,borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))),
              height: MediaQuery.of(context).size.height*.8,
              padding: EdgeInsets.all(20),

              child: Center(
                child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget> [
                Image.asset("assets/image/right.png"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: 200,child: Text("Thank you for your order",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,decoration: TextDecoration.none),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: 200,child: Text("you can track the delivery in the 'order' sections",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: AppColors.Grey_Text_COLOR,decoration: TextDecoration.none),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 20),
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
                              "Track my order", style: TextStyle(fontSize: 15,color:AppColors.White_Text_COLOR),
                            ),
                          ),
                        ),
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>TrackOrder()),
                          );
                        },
                      ),
                    ),
                    Text("Order something else",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold,decoration: TextDecoration.none),)
                  ],
                ),
              ),
            ),
          ],
        );

    },
  );
}