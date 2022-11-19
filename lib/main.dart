import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
void main(){
  runApp(new MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility detector"),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VisibilityDetector(
              key: Key("one"),
              onVisibilityChanged: (val){
                print("first container is visibile ${val.visibleFraction}");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20,),


            VisibilityDetector(
              key: Key("two"),
              onVisibilityChanged: (val){
                print("second container is visibile ${val.visibleFraction}");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20,),



            VisibilityDetector(
              key: Key("three"),
              onVisibilityChanged: (val){
                print("third container is visibile ${val.visibleFraction}");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20,),



            VisibilityDetector(
              key: Key("four"),
              onVisibilityChanged: (val){
                print("fourth container is visibile ${val.visibleFraction}");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20,),


            VisibilityDetector(
              key: Key("five"),
              onVisibilityChanged: (val){
                print("fifth container is visibile ${val.visibleFraction}");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
