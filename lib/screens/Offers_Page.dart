import 'package:flutter/material.dart';

import '../Const.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.Primary_Color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15),
                  child: Text(
                    "Latest offers",
                    style: TextStyle(
                        color: AppColors.White_Text_COLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .19,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Container(
                              width: 170,
                              child: Text(
                                "find discount offers special meals and more",
                                style: TextStyle(
                                    color: AppColors.White_Text_COLOR,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 15),
                            child: Container(
                                width: 160,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: AppColors.White_Text_COLOR,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Center(
                                    child: Text(
                                  "29 restaurant",
                                  style: TextStyle(
                                      color: AppColors.Text_COLOR,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                          )
                        ],
                      ),
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * .19,
                        width: MediaQuery.of(context).size.height * .2,
                        child: Image.asset("assets/image/offer.png"))
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: AppColors.White_Text_COLOR,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(20, 30),
                      topRight: Radius.elliptical(20, 30))),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/1.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/2.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/3.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/4.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/5.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/6.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/7.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/8.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/9.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.White_Text_COLOR,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Card(
                                    elevation: 3,
                                    child: Container(
                                        child: Image.asset(
                                      "assets/image/10.jpg",
                                      fit: BoxFit.fill,
                                    ))),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.White_Text_COLOR,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: Center(
                                              child: Text(
                                            "10-20 Items",
                                            style: TextStyle(
                                                color: AppColors.Text_COLOR,
                                                fontSize: 15),
                                          )),
                                        )))
                              ],
                            ),
                            Text(
                              "Bollywood Star Cafe",
                              style: TextStyle(
                                  color: AppColors.Text_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.Primary_Color,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      color: AppColors.Primary_Color,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "regular food",
                                    style: TextStyle(
                                      color: AppColors.Grey_Text_COLOR,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
