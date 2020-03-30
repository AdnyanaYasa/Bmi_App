import 'package:flutter/material.dart';
import 'dart:math';

class BMIResult extends StatelessWidget {
  BMIResult(
      {@required this.tinggi_badan,
      @required this.berat_badan,
      @required this.nama_lengkap,
      @required this.tahun_lahir,
      @required this.jenis_kelamin});

  final int tinggi_badan;
  final int tahun_lahir;
  final int berat_badan;
  final String nama_lengkap;
  final String jenis_kelamin;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text('HASIL BMI'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 100.0)),
            new Text(
              "Nama : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Umur : ${2020 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            new Text(
              "Jenis Kelamin : ${jenis_kelamin} ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            Text(
              'Jangkauan Normal BMI',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        height: 80,
        child: RaisedButton(
          color: Colors.grey,
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
