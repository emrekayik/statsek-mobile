import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController();
  List alisverisListesi = [];

  elemanEkle() {
    setState(() {
      alisverisListesi.add(t1.text);
      t1.clear();
    });
  }

  elemanCikar() {
    setState(() {
      alisverisListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: alisverisListesi.length,
              itemBuilder: (context, siraNumarasi) => ListTile(
                subtitle: Text("Marketten Alınacaklar"),
                title: Text(alisverisListesi[siraNumarasi]),
              ),
            ),
          ),
          TextField(
            controller: t1,
          ),
          ElevatedButton(
            onPressed: elemanEkle,
            child: Text("Ekle"),
          ),
          ElevatedButton(
            onPressed: elemanCikar,
            child: Text("Çıkar"),
          ),
        ],
      ),
    );
  }
}