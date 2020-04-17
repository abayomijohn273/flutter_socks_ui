import "package:flutter/material.dart";

class ViewSock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height / 3,
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(251, 121, 135, 1),
                    Color.fromRGBO(251, 53, 105, 1),
                  ],
                ),
              ),
              child: Transform.translate(
                offset: Offset(30, -30),
                child: Image.asset("assets/images/details-page-header.png"),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: mediaQuery.size.height / 1.4,
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ranger Sport",
                      style: TextStyle(
                        color: Color.fromRGBO(97, 90, 90, .54),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ankle Men's Athletic Socks",
                      style: TextStyle(
                        color: Color.fromRGBO(97, 90, 90, 1),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ranger Sport socks are a fusion of materials of the sturdiest quality and very durable and last longer. Sport socks are a fusion of materials of the sturdiest quality and very durable and last longer.",
                      style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, .53),
                        fontSize: 18,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.red,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 53, 105, 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(81, 234, 234, 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Text(
                      "More option",
                      style: TextStyle(
                        color: Color.fromRGBO(92, 90, 90, .54),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300],
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(251, 53, 105, 1),
                                    ),
                                    child: Image.asset(
                                        "assets/images/socks-icon.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Ankle Length Socks",
                                        style: TextStyle(
                                          color: Color.fromRGBO(97, 90, 90, 1),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "23,345",
                                        style: TextStyle(
                                          color: Color.fromRGBO(97, 90, 90, .7),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300],
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(81, 234, 234, 1),
                                    ),
                                    child: Image.asset(
                                        "assets/images/socks-icon-left.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Quarter Length Socks",
                                        style: TextStyle(
                                          color: Color.fromRGBO(97, 90, 90, 1),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "23,345",
                                        style: TextStyle(
                                          color: Color.fromRGBO(97, 90, 90, .7),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 60,
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(251, 121, 155, 1),
                            Color.fromRGBO(251, 53, 105, 1)
                          ]),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              blurRadius: 10,
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                "\$14",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              Text(
                                "54",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Pay",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
