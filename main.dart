import 'package:flutter/material.dart';
import 'bmi_result.dart';
import 'about.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => Home(),
      '/Haldua': (BuildContext context) => MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tinggi = 0;
  int berat = 0;
  int tahun = 0;

  String _jk = "";

  void _pilihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          leading: Icon(
            Icons.exit_to_app,
            color: Colors.blue,
          ),
          actions: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: Colors.blue,
            )
          ],
          title: Text('MENGHITUNG BMI')),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _nama,
                  decoration: InputDecoration(
                    hintText: "Masukkan Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                TextField(
                  onChanged: (txt) {
                    setState(() {
                      tahun = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: InputDecoration(
                      hintText: "Masukkan Tahun Lahir",
                      labelText: "Tahun Lahir",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Tinggi Badan",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            //filled: true,
                            hintText: 'Tinggi',
                            fillColor: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Berat Badan",
                            suffix: Text('kg'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            //filled: true,
                            hintText: 'Berat'),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RadioListTile(
                        value: "Laki-laki",
                        groupValue: _jk,
                        title: Text("Laki-laki"),
                        onChanged: (String value) {
                          _pilihJk(value);
                        },
                        subtitle: Text("Pilih jika Laki-laki"),
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        value: "Perempuan",
                        groupValue: _jk,
                        title: Text("Perempuan"),
                        onChanged: (String value) {
                          _pilihJk(value);
                        },
                        subtitle: Text("Pilih jika Perempuan"),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 60.0)),
                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = MaterialPageRoute(
                        builder: (BuildContext) => BMIResult(
                            nama_lengkap: _nama.text,
                            tinggi_badan: tinggi,
                            berat_badan: berat,
                            tahun_lahir: tahun,
                            jenis_kelamin: _jk),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 80, right: 80),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'HITUNG BMI',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  //height: double.infinity,
                  margin:
                      EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyProfil(profill: tinggi)),
                      );
                    },
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 30, right: 30),
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    child: Text(
                      'ABOUT_ME',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 50,
          color: Colors.black54,
          alignment: Alignment.center,
          child: Text(
            'Developed by AdnyanaYasa',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.orange),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}
