import 'package:collect_app/utils/colors.dart';
import 'package:collect_app/utils/viewBuisness.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/AddBuisess.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final GlobalKey<ScaffoldState> key = GlobalKey();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: mainColor,
          height: 60,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Addbuisess()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            "Add Buisness",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Viewbuisness()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                          ),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.view_agenda,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                "View Buisness",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        )))
              ],
            ),
          ),
        ),
        key: key,
        drawer: Drawer(
          backgroundColor: mainColor,
        ),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              key.currentState?.openDrawer();
            },
            icon: Icon(Icons.menu_open),
            color: Colors.white,
          ),
          backgroundColor: mainColor,
          title: const Text(
            "Collect data ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 252, 252, 252)),
          ),
        ),
        body: Center(
          child: Image.network(
              "https://img.freepik.com/free-vector/office-concept-illustration_114360-795.jpg?t=st=1721235407~exp=1721239007~hmac=70cdb22ab9a75405bcecf137323037c3461bf430c2758589be11248e0a2d1774&w=826"),
        ));
  }
}
