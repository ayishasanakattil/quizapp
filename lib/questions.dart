import 'package:flutter/material.dart';

class Ques extends StatefulWidget {
  const Ques({Key? key}) : super(key: key);

  @override
  State<Ques> createState() => _QuesState();
}

class _QuesState extends State<Ques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text('flutter is an open source framework by google ',
              style: TextStyle(fontSize: 28, color: Colors.white)),
            SizedBox(height: 100,),
            Container(
              height: 50,
              width: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {}, child: Text('TRUE'))),
            SizedBox(height: 25,),
            Container(
              height: 50,
              width: 200,
           child: ElevatedButton(
               style: ElevatedButton.styleFrom(primary: Colors.red),
               onPressed: () {}, child: Text('FALSE'))),
          ],
        ),
      ),
    );
  }
}
