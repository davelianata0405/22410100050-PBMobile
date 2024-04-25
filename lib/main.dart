import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController isi1 = TextEditingController();
  TextEditingController isi2 = TextEditingController();
  TextEditingController hasil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Tugas 3'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child:TextField(
                controller: isi1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Bilangan 1',
                    hintText: 'Masukkan Angka'
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child:TextField(
                controller: isi2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Bilangan 2',
                    hintText: 'Masukkan Angka'
                ),
              ),
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child:ElevatedButton(
                      child: Text('Tambah'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          elevation: 0
                      ),
                      onPressed: () {
                        var tamb = int.parse(isi1.text.toString()) + int.parse(isi2.text.toString());
                        hasil.text= tamb.toString();
                      },

                    )
                ),

                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child:ElevatedButton(
                      child: Text('Kurang'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          elevation: 0
                      ),
                      onPressed: () {
                        var tamb = int.parse(isi1.text.toString()) - int.parse(isi2.text.toString());
                        hasil.text= tamb.toString();
                      },

                    )
                ),

                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child:ElevatedButton(
                      child: Text('Kali'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          elevation: 0
                      ),
                      onPressed: () {
                        var tamb = int.parse(isi1.text.toString()) * int.parse(isi2.text.toString());
                        hasil.text= tamb.toString();
                      },

                    )
                ),

                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child:ElevatedButton(
                      child: Text('Bagi'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          elevation: 0
                      ),
                      onPressed: () {
                        var tamb = int.parse(isi1.text.toString()) / int.parse(isi2.text.toString());
                        hasil.text= tamb.toString();
                      },

                    )
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child:TextField(
                controller: hasil,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hasil',
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}