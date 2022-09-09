import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TinguelyMuseum extends StatelessWidget {
  const TinguelyMuseum({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.orangeAccent[100],
                title: Text('Tinguely Museum',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Nunito',
                      fontSize: 30,
                    ))),
            drawer: Drawer(
                backgroundColor: Colors.orangeAccent[100],
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      child: const Text('Tinguely Museum',
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.blue,
                          )),
                    ),
                    const Divider(
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'Homepage');
                        },
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              tileColor: Colors.lightBlueAccent[100],
                              leading: Icon(Icons.home_outlined),
                              title: Text(
                                'Homepage',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple),
                              ),
                            ))),
                    SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/a');
                        },
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              tileColor: Colors.lightBlueAccent[100],
                              leading: Icon(Icons.location_on_outlined),
                              title: Text(
                                'Kleinbasel',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple),
                              ),
                            ))),
                    SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/b');
                        },
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              tileColor: Colors.lightBlueAccent[100],
                              leading: Icon(Icons.location_on_outlined),
                              title: Text(
                                'Grossbasel',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple),
                              ),
                            ))),
                    SizedBox(height: 10),
                    GestureDetector(
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              leading: Icon(Icons.tram_outlined),
                              tileColor: Colors.lightBlueAccent[100],
                              title: Text(
                                'Public Transport',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple),
                              ),
                            ))),
                    SizedBox(height: 10),
                    GestureDetector(
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              leading: Icon(Icons.map_outlined),
                              tileColor: Colors.lightBlueAccent[100],
                              title: Text(
                                'Interactive Map',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple),
                              ),
                            ))),
                  ],
                )),
            body: CustomScrollView(slivers: <Widget>[
              SliverList(
                  delegate: SliverChildListDelegate(
                [
                  Image.network(
                      'https://www.upperrhinevalley.com/sites/default/files/public/styles/grid-8_gallery_image/public/content/3401/museum_tinguely_c_pino_musi.jpg?itok=sbtLsnXH'),
                  Stack(children: [
                    SizedBox(
                        height: 200,
                        width: 400,
                        child: Card(
                            elevation: 0,
                            color: Color.fromRGBO(211, 211, 211, 1.0))),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                        child: Text('Website:',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                      child: TextButton(
                        onPressed: () async {
                          String url = 'https://tinguely.ch';

                          // ignore: deprecated_member_use
                          if (await canLaunch(url)) {
                            // ignore: deprecated_member_use
                            await launch(
                              url,
                              forceWebView: true,
                              enableJavaScript: true,
                              enableDomStorage: true,
                              webOnlyWindowName: '_self',
                            );
                          } else {
                            print('Could not launch $url');
                          }
                        },
                        child: Text(
                          'tinguely.ch',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 23,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Stack(
                    children: [
                      SizedBox(
                          height: 200,
                          width: 400,
                          child: Card(
                              elevation: 0,
                              color: Color.fromRGBO(255, 211, 211, 1.0))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          child: Text('Opening Times:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                          child: Text('Monday: Closed ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 60, horizontal: 5),
                          child: Text('Tuesday-Sunday: 11:00 - 18:00 ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 90, horizontal: 5),
                          child: Text('Thursday: 11:00 - 21:00',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          height: 200,
                          width: 400,
                          child: Card(
                              elevation: 2,
                              color: Colors.lightGreenAccent[100])),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          child: Text('Admission Fees:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                          child: Text('Adults: 18 CHF ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 60, horizontal: 5),
                          child: Text('Students, people with disabilities:  ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 90, horizontal: 5),
                          child: Text('12 CHF',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 120, horizontal: 5),
                          child: Text('Groups (more than 12 persons): ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 150, horizontal: 5),
                          child: Text('12 CHF ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                    ],
                  ),
                ],
              )),
            ])));
  }
}
