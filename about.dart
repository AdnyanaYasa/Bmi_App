import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  MyProfil({@required this.profill});

  final int profill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PROFIL SAYA'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(
                  'https://scontent.fsub1-2.fna.fbcdn.net/v/t1.0-9/68618872_2415569215375679_3416606837124890624_n.jpg?_nc_cat=107&_nc_sid=8024bb&_nc_ohc=6Qw7rqyd2BQAX8QLcTZ&_nc_ht=scontent.fsub1-2.fna&oh=899861ffa33f33d9e8396a6734870e00&oe=5E92265A',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "I Komang Adnyana Yasa",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  height: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "1815051077",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  height: 1.0,
                ),
              ),
              Text(
                "PTI",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  height: 1.0,
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 20.0,bottom: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                          color: Colors.blueAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.my_location,
                                size: 110,
                                color: Colors.black,
                              ),
                              Text(
                                'Singaraja',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: Card(
                          color: Colors.blueAccent,
                          margin: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                size: 110,
                                color: Colors.black,
                              ),
                              Text(
                                'Kubutambahan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                          color: Colors.blueAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.music_note,
                                size: 110,
                                color: Colors.black,
                              ),
                              Text(
                                'All Genre',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: Card(
                          color: Colors.blueAccent,
                          margin: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.location_city,
                                size: 110,
                                color: Colors.black,
                              ),
                              Text(
                                'Undiksha',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      child: Card(
                          color: Colors.blueAccent,
                          margin: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            top: 10.0,
                            bottom: 10.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.school,
                                size: 110,
                                color: Colors.black,
                              ),
                              Text(
                                'SMAN 1 KBT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  height: 2.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        color: Colors.blueAccent,
                        margin: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),

                      ),
                    ),

                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
