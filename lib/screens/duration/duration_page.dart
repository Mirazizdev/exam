import 'package:flutter/material.dart';

class DurationPage extends StatelessWidget {
  const DurationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF050352),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
                child: Image(
                    height: MediaQuery.of(context).size.width * 0.5,
                    image: AssetImage("assets/logo.png"))),
            flex: 9,
          ),
          Expanded(
            child: Image(
              width: MediaQuery.of(context).size.width * 0.5,
              image: AssetImage("assets/logo_text.png"),
            ),
            flex: 2,
          )
        ],
      ),
    );
  }
}
