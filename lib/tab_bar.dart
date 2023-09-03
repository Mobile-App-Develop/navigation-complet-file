import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  int myindex = 0;
  List<Widget> list = [
    Text("Home"),
    Text("Shop"),
    Text("Product"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MY TAB BAR"),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 30,
            labelColor: Colors.orange,
            tabs: [
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              Text("Chating  Tab"),
              Text("Status  Tab"),
              Text("Call  Tab"),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: myindex,
          onTap: (index) {
            setState(() {
              myindex = index;

            });
          },
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Shop", icon: Icon(Icons.shop)),
            BottomNavigationBarItem(
                label: "Product",
                icon: Icon(Icons.production_quantity_limits_sharp)),
          ],
        ),
      ),
    );
  }
}
