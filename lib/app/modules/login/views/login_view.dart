import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/app/modules/login/views/components/button.dart';
import 'package:instagram/app/modules/login/views/components/emailpass.dart';
import 'package:instagram/app/modules/login/views/components/instagram.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.15,
          ),
          Instagram(),
          Container(
            padding: EdgeInsets.all(40),
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              children: [
                EmailPassword(),
                SizedBox(
                  height: 20,
                ),
                Button(
                  judul: Text(
                    "Masuk",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Lupa detail informasi masuk anda? ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: "Dapatkan bantuan untuk masuk",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ATAU",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Button(
                  judul: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Masuk sebagai @facebook",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(color: Colors.grey),
        )),
        height: 60,
        child: GestureDetector(
          onTap: () {},
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Tidak punya akun? ",
                  style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: "Buat Akun.",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black))
            ]),
          ),
        ),
      ),
    );
  }
}
