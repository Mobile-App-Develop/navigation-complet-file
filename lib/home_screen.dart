import 'package:flutter/material.dart';
import 'package:navigation/screentwo.dart';


class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("THIS IS MY 1ST PAGE")),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 30,
            labelColor: Colors.orange,
            tabs: [
              Tab(
                child: Text("Chat"),
                icon: Icon(Icons.chat),
              ),
              Tab(
                child: Text("Status"),
                icon: Icon(Icons.newspaper),
              ),
              Tab(
                child: Text("Calls"),
                icon: Icon(Icons.call),
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => screentwo(
                                name: "khadim Hussain",
                                rollNo: 2434,
                              )));
                },
                child: Text(
                  "SCREEN-1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 22,
          unselectedFontSize: 22,
          iconSize: 22,
          backgroundColor: Colors.yellow,


          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Shop", icon: Icon(Icons.shop,color: Colors.red, )),
            BottomNavigationBarItem(
                label: "Product",
                icon: Icon(Icons.production_quantity_limits_sharp)),
          ],
        ),
      ),
    );
  }
}
