import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, height * 0.1, width * 0.4, 0),
              child: Text(
                "${dateTime.year}年${dateTime.month}月${dateTime.day}日",
                style: GoogleFonts.sawarabiMincho(
                  textStyle: TextStyle(
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff19343e),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, height * 0.024, width * 0.17, 0),
              child: Text(
                "오늘 하루는 어떠셨나요?",
                style: GoogleFonts.nanumMyeongjo(
                  textStyle: TextStyle(
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff19343e),
                  ),
                ),
              ),
            ),
            fiveDots(context)
          ],
        ),
      ),
    );
  }
}

Widget fiveDots(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  double width = screenSize.width;
  double height = screenSize.height;
  return Column(
    children: <Widget>[
      Center(
        child: Container(
          child: Text(
            '.',
            style:
                TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Center(
        child: Container(
          child: Text(
            '.',
            style:
                TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Center(
        child: Container(
          child: Text(
            '.',
            style:
                TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Center(
        child: Container(
          child: Text(
            '.',
            style:
                TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Center(
        child: Container(
          child: Text(
            '.',
            style:
                TextStyle(fontSize: width * 0.1, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}

// child: Container(
// padding: EdgeInsets.all(width * 0.096),
// child: Column(
//   children: <Widget>[
//     SizedBox(
//       height: height * 0.048,
//     ),
// Text(
//   "${dateTime.year}年${dateTime.month}月${dateTime.day}日",
//   style: GoogleFonts.sawarabiMincho(
//     textStyle: TextStyle(
//       fontSize: width * 0.06,
//       fontWeight: FontWeight.w300,
//       color: Color(0xff19343e),
//     ),
//   ),
// ),
// Column(
//   children: <Widget>[
//     Center(
//       child: Container(
//         child: Text(
//           '.',
//           style: TextStyle(
//               fontSize: width * 0.1, fontWeight: FontWeight.bold),
//         ),
//       ),
//     ),
//   ],
// ),
//   ],
// ),
// ),
