import 'package:exam/screens/mavzu2/mavzu_matni.dart';
import 'package:exam/screens/mavzu2/yana.dart';
import 'package:flutter/material.dart';

class MavzularPage extends StatelessWidget {
  const MavzularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Icon(
            Icons.message,
            color: Colors.yellow,
          ),
          SizedBox(
            width: 15,
          )
        ],
        title: const Text(
          "UX/UI darslari",
          style: TextStyle(
              fontSize: 25,
              fontFamily: "ProductSans-Bold",
              color: Colors.black),
        ),
      ),
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => MavzuMatni())));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              margin: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F2F6),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        child: Stack(children: [
                          Positioned(
                              left: 0,
                              bottom: 0,
                              right: 0,
                              top: 0,
                              child: Image.network(
                                "https://source.unsplash.com/random/$index",
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text("12:17"),
                                ),
                              ))
                        ]),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: const Text(
                                      "UX/UI nima? Soha haqida umumiy tushuncha.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "ProductSans-Bold",
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: const Text(
                                      "Miraziz Makhmudjonov",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "12 kun avval yuklandi",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Icon(Icons.downloading)
                            ],
                          )
                        ],
                      ),
                    ))
              ]),
            ),
          );
        },
      )),
    );
  }
}
