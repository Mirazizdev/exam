import 'package:exam/lists/lists.dart';
import 'package:exam/screens/mavzu2/yana.dart';
import 'package:exam/screens/mavzular/mavzular_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String kurs_bolim = "Dizayn";
  List rang_bolim = [true, false, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Builder(builder: (context) {
          return SafeArea(
            // padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: const Text(
                      "Qanday darslar sizni qiziqtiradi?",
                      style: TextStyle(
                          fontSize: 25, fontFamily: "ProductSans-Bold"),
                    ),
                  ),
                ]),
                Row(children: const [
                  SizedBox(
                    height: 15,
                    child: Text("28 xil yo`nalishda darsliklar mavjud"),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                const CupertinoSearchTextField(
                  placeholder: "Izlash",
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  // color: Colors.cyan,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: (() {
                          setState(() {
                            if (rang_bolim[index] == true) {}
                          });
                        }),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                      color: rang_bolim[index]
                                          ? const Color(0xFFF1F2F6)
                                          : Colors.cyan,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Image(
                                    image: AssetImage(kurs[index]["logo"]),
                                    color: Colors.black,
                                    height: 40,
                                  )),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  kurs[index]["name"],
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontFamily: "ProductSans-Bold"),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                    itemCount: 4,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Text(
                    "${kurs_bolim}ga oid kurslar",
                    style: const TextStyle(
                        fontSize: 16, fontFamily: "ProductSans-Bold"),
                  ),
                ]),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MavzularPage(),
                                ));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            height: MediaQuery.of(context).size.height * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.cyan,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.17,
                                      width: MediaQuery.of(context).size.width,
                                      child: Image(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://source.unsplash.com/random/$index")),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(children: const [
                                    Text(
                                      "UX/UI dizayn",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "ProductSans-Bold"),
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(children: const [
                                    Text(
                                      "Boshlang`ich darajadagilar uchun",
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Row(children: const [
                                    Text(
                                      "95%",
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      itemCount: 5,
                    ),
                  ),
                )
              ],
            )),
          );
        }),
      ),
    );
  }
}
