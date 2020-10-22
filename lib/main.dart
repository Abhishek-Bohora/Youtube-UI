import 'package:flutter/material.dart';
import 'package:youtube_ui/widgets/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget eachVideo(String assets, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(assets),
            Positioned.fill(
              bottom: 10,
              right: 10,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.all(3),
                  child: Text(
                    '4:20',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.grey[900],
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(assets),
              radius: 20,
            ),
            title: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Channel Owner Name . 444kViews . 21 months ago',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar: bottombar,
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            eachVideo('assets/img1.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img2.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img3.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img4.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img5.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img6.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img7.jpg', "IT'S JUST A RANDOM PICTURES...."),
            eachVideo('assets/img8.jpg', "IT'S JUST A RANDOM PICTURES...."),
          ],
        ),
      ),
    );
  }
}
