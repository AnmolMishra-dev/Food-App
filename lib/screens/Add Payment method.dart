import 'package:flutter/material.dart';
import 'package:flutter_food_demo/Const.dart';

import 'Add Card Page.dart';
class AddPaymentMethod extends StatefulWidget {
  const AddPaymentMethod({Key? key}) : super(key: key);

  @override
  _AddPaymentMethodState createState() => _AddPaymentMethodState();
}

class _AddPaymentMethodState extends State<AddPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: (){ Navigator.pop(context);},child: Icon(Icons.arrow_back_ios,size: 18,color: AppColors.Text_COLOR,)),
          backgroundColor: Colors.white,
          elevation: 1,
          title: Center(child: Text("Add Payment Method",style: TextStyle(color: AppColors.Text_COLOR,fontSize: 18,fontWeight: FontWeight.w500),)),
        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Column(


            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddCard()),
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

                      width: MediaQuery.of(context).size.width*.8,
                      height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(child: Icon(Icons.credit_card_outlined,color: Colors.grey.shade500,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Text("credit or debit card",style: TextStyle(color: Colors.grey.shade500,fontSize: 15,fontWeight: FontWeight.w500),),
                              Container(width: 200,child: Text("we support major debit card issued by banco do.... ",style: TextStyle(color: Colors.grey.shade500,fontSize: 12,)))
                            ],)),
                          ),
                        ],
                      )
                  ),
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

                    width: MediaQuery.of(context).size.width*.8,
                    height: 70,
                    child: Row(
                      children: [
                        Container(height: 50,width: 50,child: Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAwFBMVEX///8lO4AXm9cVMHuOlrUAl9YlNHsegr4AI3X6+/2NxecRmtcyotkAldUAktQWntoAIHUZM3wAJ3gmMXissccNLHrl5+4AHHMkO4AmL3cfN34PLXpga5rZ2+XQ0t/BxNVpdJ95gqiZyukqSInt9vtLqdzY6vagpr+Ciq1JWI+Vm7kvQoTIzNpUYZTp6/A6S4hqiLO4vM8Rd7VzfaUmaaW01+4pXptwuOIqUZDQ5vSu1O02SIdEp9sAFHEiVpZ3uuPR4Wa5AAAEaElEQVR4nO3bjVKbQBQF4CwRkojEROJPUGtrtImxta1a/1rr+79VMbGOyL0EdndmL/R8T7BnFvawC7RaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABNN1orYT4dfdlxPVJNs0G7jP3t7e7j2fyD6+FqGKrykvbWcK12U7lbIeGz9u7BoesxV7LTrZgwncndjxeuh13B0XblhEoNByPX4y5vtK+RUKnuQc/1yMuatbUSqqGqy5V6kOglVEm3JgvOuWbA1KAeEQf6CVW3DtW4Y5IwGdZgufmiUxavhl9dj381zbL4Z2vqOsBKa5pl8WJvV3xnaJfFi+TAdYJVDMpiaSB9P9XdM0yYnLmOUOyi+s4iN4mye//DlnHC4SfXIQqNjOpwqSu69g3LYmH7yHWKIh+rnNIwZF+m3wzrcMl1iiJVj6FIA8HPNRcmO4tXW4JL30JZpPYFH0v9MNtZvGjPXefgzS2URbqYzlzn4F1ZKIs04ZXrHDw7ZSE5oYVnNiW68i+s1KFqy70P7ZSFGn53HYT1w85VGlyeuk7CsVMWKuiEG66jMOyUhYo9zxca8cxKWajJZhpR5oVq5ZlNJddpQi86dp2GcGJlZ6HiznNCr//ZdZ68QztloRYBPYmrjZ2yCK6XCb3op+tAOVMrZTEOlwG90HMdKOeTjbJIbl6mUOIkWimLsf8voBeKawzzE/03d+FiOT1xHSmrZ2Vn8Sag5z+4zpRloyzGnUzCW9eZsrS+98rKXKPyVtOp8UNbcpcJmN6Isl7SGJdFMtkMswkjWUvNV9NX+Ofee9G961AZidkL7mCSCygsoWFZxH82pSc8NCr88SURUFhCk7IIJhEV0ItE7RH1yyJQ5ASKa4uZXlkkcZqPCSis8XXKIgjimw6XT9xTG98VASkeq7vrNB6bT9qTd489hgouO5TI2yyM50nbPfF/kowXUXK8sDCdJ24HXPBxcPFE8YSdYvAfB080E4ah60xZ/J8kN5oJI1HrTMHHwe92teWnUNqJMHsXBh29hNJO9fmdRdDRCijuzUxBWaxsBYq8t2t8WQQ6F6nAN6R2y8LfELWpWGA/Dk40ykLeJdqyWhZh/8l1GsovNiG3u2Un0Bd1dPGqoCwqJfT7666j0PjfDuMKZRFG0bqoDdMb1coiJPh+FN3K2kxk8H+SEGURbuSc3q4/CHtKe4cvC+KgV9YZYUnsnyRUWcg6nCipUln4rkerg339S5RF+Nv1aDXwf5LEfn4KZZ2ClsN/HEyUhS9t51cG/yfJOZFQcOux/uOySKiykLf3W439k6QxZcH+o/4flEXU9LIYN6QsDh+5hE0pi9Z80M3bj+NxU8oi1ctpPYXkC9BalgXtlD6/qGVZ0PLP3IuykHgWquekT0+hyMNQLff5KqxtWdCO6au0nmVBeqIT1rUsCBv0UtqcsujRC02DyuIznbCWOwtG6FP6zVlKWyfH64TmrKQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANr+AtbYXHYB9448AAAAAElFTkSuQmCC"),),
                        Text("PayPal",style: TextStyle(color: Colors.grey.shade500,fontSize: 15,fontWeight: FontWeight.w500),),
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

                    width: MediaQuery.of(context).size.width*.8,
                    height: 70,
                    child: Row(
                      children: [

                      Container(height: 50,width: 50,child: Icon(Icons.card_giftcard_outlined ,color: Colors.grey.shade500,)),
                                    Text("Gift Card",style: TextStyle(color: Colors.grey.shade500,fontSize: 15,fontWeight: FontWeight.w500),),
                      ],
                    )
                ),
              ),
            ],
          ),
        ));
  }
}
