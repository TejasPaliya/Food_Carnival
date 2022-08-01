import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:vibration/vibration.dart';
import 'globals.dart' as globals;

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  ScrollController con = ScrollController();
  void scrollDown(expand) async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      con.jumpTo(140);
    });
  }

  bool expand = true;
  int clr = 350;
  int clr1 = 350;
  int ck = globals.ck;
  int db = globals.db;
  double x1 = 0;
  double x2 = 0;
  double x3 = 0;
  int y1 = 0;
  int clr2 = 350;
  int pudina = globals.pudina;
  int imli = globals.imli;
  int ber = globals.ber;
  int mirchi = globals.mirchi;
  int spdp = globals.spdp;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/fcLogo.png',
          fit: BoxFit.contain,
          height: 67,
        ),
        backgroundColor: Colors.grey[300],
        toolbarHeight: 68,
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                globals.ck = 0;
                globals.db = 0;
                globals.spdp = 0;
                globals.pudina = 0;
                globals.imli = 0;
                globals.ber;
                globals.mirchi = 0;
              });
            },
            icon: Icon(Icons.replay),
            color: Colors.grey[700],
            iconSize: 35,
          ),
          SizedBox(
            width: 6,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_outlined),
            color: Colors.grey[700],
            iconSize: 37,
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: Align(
        alignment: Alignment(0.1, 1.05),
        child: FloatingActionButton(
          child: Icon(Icons.check),
          backgroundColor: Colors.grey[700],
          onPressed: () {
            setState(() {
              showModalBottomSheet<void>(
                  backgroundColor: Colors.grey[300],
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        color: Colors.grey[300],
                        height: 158,
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(8, 8, 8, 3),
                              child: Table(
                                defaultColumnWidth: FixedColumnWidth(80),
                                border: TableBorder.all(
                                  color: Colors.black,
                                  width: 2,
                                  style: BorderStyle.solid,
                                ),
                                children: [
                                  TableRow(children: [
                                    Column(
                                      children: [Text("Item")],
                                    ),
                                    Column(
                                      children: [Text("Price")],
                                    ),
                                    Column(
                                      children: [Text("Quantity")],
                                    ),
                                    Column(
                                      children: [Text("Cost")],
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Column(
                                      children: [Text("Dahi Vada")],
                                    ),
                                    Column(
                                      children: [Text("₹60")],
                                    ),
                                    Column(
                                      children: [
                                        Text("${globals.db}"),
                                      ],
                                    ),
                                    Column(
                                      children: [Text("₹${globals.db * 60}")],
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Column(
                                      children: [Text("Chaat Katori")],
                                    ),
                                    Column(
                                      children: [Text("₹70")],
                                    ),
                                    Column(
                                      children: [
                                        Text("${globals.ck}"),
                                      ],
                                    ),
                                    Column(
                                      children: [Text("₹${globals.ck * 70}")],
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Column(
                                      children: [Text("S.P.D.P")],
                                    ),
                                    Column(
                                      children: [Text("₹40")],
                                    ),
                                    Column(
                                      children: [
                                        Text("${globals.spdp}"),
                                      ],
                                    ),
                                    Column(
                                      children: [Text("₹${globals.spdp * 40}")],
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Column(
                                      children: [Text("Pani Puri")],
                                    ),
                                    Column(
                                      children: [Text("₹30")],
                                    ),
                                    Column(
                                      children: [
                                        Text("${globals.pq}"),
                                      ],
                                    ),
                                    Column(
                                      children: [Text("₹${globals.pq * 30}")],
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Column(
                                      children: [Text("--")],
                                    ),
                                    Column(
                                      children: [Text("--")],
                                    ),
                                    Column(
                                      children: [
                                        Text("--"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                            "₹${globals.pq * 30 + globals.spdp * 40 + globals.ck * 70 + globals.db * 60}")
                                      ],
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            ElevatedButton(
                              child: Text(
                                "Place Order",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey[500]),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ));
                  });
            });
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () async {
              setState(() {
                globals.db = globals.db + 1;
                clr1 = 500;
                x2 = 150;
                Vibration.vibrate(duration: 100);
              });
              await Future.delayed(Duration(milliseconds: 100));
              setState(() {
                clr1 = 350;
                x2 = 0;
              });
            },
            onHorizontalDragEnd: (details) {
              setState(() {
                globals.db--;
              });
            },
            child: Card(
              color: Colors.grey[clr1],
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dahi Vada",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Price: ₹60",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Quantity:",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "${globals.db}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 47,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/db.jpg',
                          height: 150,
                        ),
                        Container(
                          width: x2,
                          height: x2,
                          color: Colors.grey[500],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () async {
              setState(() {
                globals.ck = globals.ck + 1;
                clr = 500;
                x1 = 150;
                Vibration.vibrate(duration: 100);
              });
              await Future.delayed(Duration(milliseconds: 100));
              setState(() {
                clr = 350;
                x1 = 0;
              });
            },
            onHorizontalDragEnd: (details) {
              setState(() {
                globals.ck = globals.ck - 1;
              });
            },
            child: Card(
              color: Colors.grey[clr],
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/ckp.jpg',
                          height: 150,
                        ),
                        Container(
                          height: x1,
                          width: x1,
                          color: Colors.grey[500],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chaat Katori",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Price: ₹70",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Quantity:",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "${globals.ck}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () async {
              setState(() {
                globals.spdp = globals.spdp + 1;
                clr2 = 500;
                x3 = 150;
                Vibration.vibrate(duration: 100);
              });
              await Future.delayed(Duration(milliseconds: 100));
              setState(() {
                clr2 = 350;
                x3 = 0;
              });
            },
            onHorizontalDragEnd: (details) {
              setState(() {
                globals.spdp = globals.spdp - 1;
              });
            },
            child: Card(
              color: Colors.grey[clr2],
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "S.P.D.P   ",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Price: ₹40",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Quantity:",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "${globals.spdp}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 68,
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/dp.jpg',
                          height: 150,
                        ),
                        Container(
                          width: x3,
                          height: x3,
                          color: Colors.grey[500],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              globals.horiz();
              setState(() {
                globals.pq--;
              });
            },
            child: Card(
              color: Colors.grey[350],
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/pp.jpg',
                              height: 150,
                            ),
                            Container(
                              height: 0,
                              width: 0,
                              color: Colors.grey[500],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pani Puri",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Price: ₹30",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Quantity:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "${globals.pq}",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    ExpansionTileCard(
                      title: Text("Customize"),
                      baseColor: Colors.grey[200],
                      expandedColor: Colors.grey[200],
                      expandedTextColor: Colors.black,
                      elevation: 0,
                      initialElevation: 0,
                      initialPadding: EdgeInsets.all(4),
                      children: [
                        GestureDetector(
                          onHorizontalDragEnd: (details) {
                            setState(() {
                              globals.pudina--;
                            });
                          },
                          child: ListTile(
                            title: Text("Pudina"),
                            subtitle: Text("${globals.pudina}"),
                            leading: CircleAvatar(
                              backgroundColor: Colors.green[500],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                setState(() {
                                  globals.pudina++;
                                  Vibration.vibrate(duration: 100);
                                });
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onHorizontalDragEnd: (details) {
                            setState(() {
                              globals.imli--;
                            });
                          },
                          child: ListTile(
                            title: Text("Imli"),
                            subtitle: Text("${globals.imli}"),
                            leading: CircleAvatar(
                              backgroundColor: Colors.brown[700],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                setState(() {
                                  globals.imli++;
                                  Vibration.vibrate(duration: 100);
                                });
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onHorizontalDragEnd: (details) {
                            setState(() {
                              globals.ber--;
                            });
                          },
                          child: ListTile(
                            title: Text("Ber"),
                            subtitle: Text("${globals.ber}"),
                            leading: CircleAvatar(
                              backgroundColor: Colors.orange[900],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                setState(() {
                                  globals.ber++;
                                  Vibration.vibrate(duration: 100);
                                });
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onHorizontalDragEnd: (details) {
                            setState(() {
                              globals.mirchi--;
                            });
                          },
                          child: ListTile(
                            title: Text("Mirchi"),
                            subtitle: Text("${globals.mirchi}"),
                            leading: CircleAvatar(
                              backgroundColor: Colors.green[800],
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {
                                setState(() {
                                  globals.mirchi++;
                                  Vibration.vibrate(duration: 100);
                                });
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                              "Plate can only have 6 number of pani puries",
                              style: TextStyle(
                                  color: Colors.red, fontSize: globals.size)),
                          trailing: TextButton(
                            child: Text("Add Plate"),
                            onPressed: () {
                              num pp = globals.pudina +
                                  globals.ber +
                                  globals.mirchi +
                                  globals.imli;
                              if (pp == 6) {
                                globals.check();
                                setState(() {
                                  globals.pudina = 0;
                                  globals.imli = 0;
                                  globals.mirchi = 0;
                                  globals.ber = 0;
                                  globals.size = 0;
                                  globals.pq++;
                                });
                              } else {
                                setState(() {
                                  globals.size = 12;
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        controller: con,
      ),
    );
  }
}
