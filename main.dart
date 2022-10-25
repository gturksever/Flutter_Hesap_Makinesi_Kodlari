// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print, unnecessary_import

import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  //tutulan degerler
  num? sayi1, sayi2, memorydegeri = 0;
  String? gosterilecekSayi = "0";

  String? sonuc;
  String? islem;

  //Tıklanılan değeri tutma.
  void BtnTiklama(String butonDegeriTutucu) {
    print(butonDegeriTutucu);

    if (butonDegeriTutucu == "AC") {
      sonuc = "0";
    } else if (butonDegeriTutucu == "C") {
      memorydegeri = 0;
    } else if (butonDegeriTutucu == "M") {
      memorydegeri = int.parse(gosterilecekSayi!) + memorydegeri!;
      gosterilecekSayi = "";
    } else if (butonDegeriTutucu == "MR") {
      sonuc = memorydegeri.toString();
    } else if (butonDegeriTutucu == "+") {
      sayi1 = int.parse(gosterilecekSayi!);
      sonuc = "";
      islem = butonDegeriTutucu;
    } else if (butonDegeriTutucu == "/") {
      sayi1 = int.parse(gosterilecekSayi!);
      sonuc = "";
      islem = butonDegeriTutucu;
    } else if (butonDegeriTutucu == "x") {
      sayi1 = int.parse(gosterilecekSayi!);
      sonuc = "";
      islem = butonDegeriTutucu;
    } else if (butonDegeriTutucu == "-") {
      sayi1 = int.parse(gosterilecekSayi!);
      sonuc = "";
      islem = butonDegeriTutucu;
    } else if (butonDegeriTutucu == ",") {
    } else if (butonDegeriTutucu == "=") {
      sayi2 = int.parse(gosterilecekSayi!);
      if (islem == "+") {
        sonuc = (sayi1! + sayi2!).toString();
      } else if (islem == "/") {
        sonuc = (sayi1! / sayi2!).toString();
      } else if (islem == "x") {
        sonuc = (sayi1! * sayi2!).toString();
      } else if (islem == "-") {
        sonuc = (sayi1! - sayi2!).toString();
      }
    } else {
      sonuc = int.parse(gosterilecekSayi! + butonDegeriTutucu).toString();
    }
    setState(() {
      gosterilecekSayi = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 130, 134),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 100, 130, 134),
          title: const Text("HESAPLA"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1, 1),
              padding: EdgeInsets.only(right: 15, bottom: 0),
            ),
            Container(
              alignment: Alignment(1, 1),
              padding: EdgeInsets.only(right: 20, bottom: 5),
              child: Text(
                gosterilecekSayi!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 70,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HesapMakinesiButonu(
                  metin: "M",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "C",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "MR",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "/",
                  dolgurengi: 0XFFFF5722,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HesapMakinesiButonu(
                  metin: "1",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "2",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "3",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "x",
                  dolgurengi: 0XFFFF5722,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HesapMakinesiButonu(
                  metin: "4",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "5",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "6",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "-",
                  dolgurengi: 0XFFFF5722,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HesapMakinesiButonu(
                  metin: "7",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "8",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "9",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "+",
                  dolgurengi: 0XFFFF5722,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HesapMakinesiButonu(
                  metin: "AC",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "0",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: ",",
                  dolgurengi: 0XFFFAFAFF,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
                HesapMakinesiButonu(
                  metin: "=",
                  dolgurengi: 0XFFFF5722,
                  metinRengi: 0XFF000000,
                  metinboyutu: 46,
                  tiklama: BtnTiklama,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HesapMakinesiButonu extends StatelessWidget {
  final String metin;
  final int dolgurengi;
  final int metinRengi;
  final double metinboyutu;
  final Function tiklama;

  const HesapMakinesiButonu({
    super.key,
    required this.metin,
    required this.dolgurengi,
    required this.metinRengi,
    required this.metinboyutu,
    required this.tiklama,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: SizedBox(
        width: 83,
        height: 83,
        child: FloatingActionButton(
          backgroundColor: Color(dolgurengi),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            metin,
            style: TextStyle(
              color: Color(metinRengi),
              fontSize: metinboyutu,
              fontWeight: FontWeight.w400,
            ),
          ),
          onPressed: () {
            tiklama(metin);
          },
        ),
      ),
    );
  }
}
