import 'package:flutter/material.dart';
import 'package:navigation/tab_bar.dart';

class screenthree extends StatefulWidget {
  const screenthree({super.key});

  @override
  State<screenthree> createState() => _screenthreeState();
}

class _screenthreeState extends State<screenthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("THIS IS MY 3RD PAGE")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>tabBar()),);
                              },
              child: Text(
                "SCREEN-3",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Shop", icon: Icon(Icons.shop)),
          BottomNavigationBarItem(
              label: "Product",
              icon: Icon(Icons.production_quantity_limits_sharp)),
        ],
      ),
    );
  }
}
