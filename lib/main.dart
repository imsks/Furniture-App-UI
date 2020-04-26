import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Color(getColorHexFromStr('#FDD148')),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 100,
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Color(getColorHexFromStr('#FEE16D')).withOpacity(0.4),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 150,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Color(getColorHexFromStr('#FEE16D')).withOpacity(0.5),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 15,
                          ),
                          Container(
//                            alignment: Alignment.topLeft,
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/chris.jpg')
                              )
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 130,
                          ),
                          Container(
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Hello, Sachin',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Text(
                          'What do you want to buy?',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(5),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                  Icons.search,
                                color: Color(getColorHexFromStr('#FEDF62')),
                                size: 30,
                              ),
                              contentPadding: EdgeInsets.only(left: 15, top: 15),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Material(
                    elevation: 1,
                    child: Container(
                      height: 90,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/sofas.png')
                                      )
                                  ),
                                ),
                                Text(
                                  'Sofas',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/wardrobe.png')
                                      )
                                  ),
                                ),
                                Text(
                                  'Wrdrobe',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/desks.png')
                                      )
                                  ),
                                ),
                                Text(
                                  'Desks',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/dressers.png')
                                      )
                                  ),
                                ),
                                Text(
                                  'Dressers',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ],
          )
        ],
      )
    );
  }
}
