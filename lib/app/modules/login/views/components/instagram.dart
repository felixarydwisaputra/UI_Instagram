import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
        child: Text(
          "Instagram",
          style: TextStyle(
              fontFamily: "Satisfy", fontSize: 45, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
