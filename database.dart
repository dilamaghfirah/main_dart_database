import 'package:flutter/material.dart';
void main() => runApp (MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Flutter penyimpanan data' ,
      home: Scaffold(
        appBar: AppBar(
          title: Text ('6SIA4'),
        ),
        body : Pembelian (),
      ),
    );
  }
}

class PembelianKaosSablon {
  String namabrg;
  String ukuran;
  String jumlah;
  String warna;
  
  PembelianKaosSablon ({this.namabrg, this.ukuran, this.jumlah, this.warna});
  
}

//kelas Pembelian
class Pembelian extends StatefulWidget {
  _MyappState createState () => _MyappState ();
}

class _MyappState extends State<Pembelian> {
  //deklarasi variabel 
  final txtnamabrg = TextEditingController();
  final txtukuran= TextEditingController();
  final txtjumlah = TextEditingController();
  final txtwarna = TextEditingController();
  
  List <Widget> data = [];
  
  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Text(txtwarna.text),
        title: Text(txtukuran.text),
        subtitle: Text(txtnamabrg.text),
        trailing: Text(txtjumlah.text),
      ));
      txtnamabrg.clear();
      txtukuran.clear();
      txtjumlah.clear();
      txtwarna.clear();
    });
  }
  
  Widget build(BuildContext context){
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAligment: MainAxisAligment.spaceEvenly,
            children: <Widget>[
               TextField(
                controller: txtnamabrg.
                decoration: Inputdecoration(hintText: 'Nama Barang'),
              ),
        
              TextField(
                controller: txtukuran,
                deocration: Inputdecoration(hintText: 'Ukuran Baju'),
              ),
        
              TextField(
                controller: txtjumlah,
                deocration: Inputdecoration(hintText: 'Jumlah'),
              ),
        
              TextField(
                controller: txtwarna,
                deocration: Inputdecoration(hintText: 'Warna'),
              ),
              Divider(height:5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}