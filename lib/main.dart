import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'viewSock.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(255, 250, 183, 1),
                    Color.fromRGBO(255, 239, 78, 1),
                  ],
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "assets/images/menu.png",
                    width: 20,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Best Online \nSocks Collection",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(97, 90, 90, 1),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "assets/images/header-socks.png",
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0.0, -35.0),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 20, top: 8),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 28.0,
                    ),
                    border: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Choose \na category",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(97, 90, 90, 1),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.all(10),
                              onPressed: null,
                              color: Color.fromRGBO(251, 53, 105, 0.1),
                              child: Text(
                                "Adult",
                                style: TextStyle(
                                  color: Color.fromRGBO(251, 53, 105, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.all(10),
                              onPressed: null,
                              color: Color.fromRGBO(97, 90, 90, 0.1),
                              child: Text(
                                "Children",
                                style: TextStyle(
                                  color: Color.fromRGBO(97, 90, 90, 0.6),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  makeCard(
                    context: context,
                    startColor: Color.fromRGBO(251, 121, 155, 1),
                    endColor: Color.fromRGBO(251, 53, 105, 1),
                    image: "assets/images/socks-one.png",
                  ),
                  makeCard(
                    context: context,
                    startColor: Color.fromRGBO(203, 251, 255, 1),
                    endColor: Color.fromRGBO(81, 223, 234, 1),
                    image: "assets/images/socks-two.png",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCard({context, startColor, endColor, image}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => ViewSock()));
      },
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [startColor, endColor],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350],
                blurRadius: 10,
                offset: Offset(5, 10),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Image.asset(image),
            ),
          ),
        ),
      ),
    );
  }
}
