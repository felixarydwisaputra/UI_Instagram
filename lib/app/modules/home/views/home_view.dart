import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                        fontFamily: "Satisfy",
                        fontSize: 34,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 40,
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/logo/add.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/logo/love.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/logo/chat.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 0),
              height: 125,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index != 0) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(right: 0),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.red,
                                      Colors.purple,
                                    ]),
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(40)),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[400],
                                backgroundImage: NetworkImage(
                                    "https://picsum.photos/id/${index + 237}/200/300"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                            width: 20,
                          ),
                          Container(
                              child: Text("Friend - $index",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)))
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 10, left: 10),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://picsum.photos/200/300?grayscale"),
                                ),
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(40)),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                              child: Text(
                            "Your Story",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 12),
                          ))
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  child: Column(
                    children: [
                      index == 0
                          ? Divider(
                              color: Colors.black,
                              height: 1,
                            )
                          : SizedBox(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://picsum.photos/id/${index + 247}/200/300")),
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("friend - ${index + 1}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12))
                              ],
                            ),
                            Container(
                              child: Icon(
                                Icons.more_horiz_rounded,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 350,
                        color: Colors.grey[400],
                        child: Image.network(
                          "https://picsum.photos/id/${index + 287}/500/350",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 55,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 120,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: Image.asset(
                                            "assets/logo/love.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: Image.asset(
                                            "assets/logo/komen.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: Image.asset(
                                            "assets/logo/send.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      child:
                                          Image.asset("assets/logo/save.png"))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 25,
                              child: Row(
                                children: [
                                  Container(
                                    width: 90,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 25,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                      "https://picsum.photos/id/${index + 227}/500/350")),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        );
                                      },
                                    ),
                                  ),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      text: "Liked by ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: "Ujangaja",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                        text: " and ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "others.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black))
                                  ]))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: 20,
                              child: Text(
                                "November 2022",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                margin: EdgeInsets.only(bottom: 10),
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "friend-1  ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text:
                                            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Reiciendis ducimus quisquam earum odit maiores sequi possimus fuga explicabo omnis alias!",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400))
                                  ]),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/logo/home.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/logo/cari.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/logo/play.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/logo/shop.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  child: Icon(
                Icons.person_outline_rounded,
                size: 30,
              )),
            ],
          )),
    );
  }
}
