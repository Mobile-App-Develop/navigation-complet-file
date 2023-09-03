import 'package:flutter/material.dart';
import 'package:navigation/screenthree.dart';

class screentwo extends StatefulWidget {
  final String name;
  final int rollNo;
  const screentwo({super.key, required this.name, required this.rollNo});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:
                Text(widget.name.toString() + "" + widget.rollNo.toString())),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screenthree()),
                );
              },

                  child: Text(
                    "SCREEN-2",
                    style: TextStyle(

                      color: Colors.white,
                    ),
                  ),
                ),
          ),


          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back"),
          ),
        ],
      ),
    );
  }
}
