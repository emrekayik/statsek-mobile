import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statsek/pages/stats_calc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController t1 = TextEditingController();
  List alisverisListesi = [];

  elemanEkle() => setState(() {
      alisverisListesi.add(t1.text);
      t1.clear();
    });

  elemanCikar() => setState(() {
      alisverisListesi.remove(t1.text);
      t1.clear();
    });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Color(0xFFC3ACD0),
        appBar: AppBar(
          backgroundColor: Color(0xFF674188),
          toolbarHeight: 70,
          title: const Text(
              'Statsek',
              style: TextStyle(
                color: Color(0xFFF7EFE5),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: new BoxDecoration(
                    color: Color(0xFFF7EFE5),
                    borderRadius: new BorderRadius.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.all(20),
                child:  Container(
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: alisverisListesi.length,
                          itemBuilder: (context, siraNumarasi) => ListBody(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    alisverisListesi[siraNumarasi],
                                    style: const TextStyle(
                                      color: Color(0xFF674188),
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const ElevatedButton(
                                    onPressed: null,
                                    child: Text(
                                      "X",
                                      style: TextStyle(
                                        color: Color(0xFFF7EFE5),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  TextField(
                                    controller: t1,
                                    decoration: const InputDecoration(
                                      hintText: "0",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF674188),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
          ],
        ),
    )
    );
  }
  }

// TextField(controller: t1,),ElevatedButton(onPressed: elemanEkle,child: Text("Ekle"),),ElevatedButton(onPressed: elemanCikar,child: Text("Çıkar"),),