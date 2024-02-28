import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/ui/cubit/detay_sayfa_cubit.dart';

class detaySayfa extends StatefulWidget {
  Kisiler kisi;
  detaySayfa({required this.kisi});

  @override
  State<detaySayfa> createState() => _detaySayfaState();
}

class _detaySayfaState extends State<detaySayfa> {
  var tfKisiAdi =TextEditingController();
  var tfKisiTel =TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var kisi= widget.kisi;
    tfKisiAdi.text=kisi.kisi_ad;
    tfKisiTel.text=kisi.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detay Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:50,right: 50 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAdi,decoration: const InputDecoration(hintText: "Kisi Ad"),),
              TextField(controller: tfKisiTel,decoration: const InputDecoration(hintText: "Kisi Tel"),),
              ElevatedButton(onPressed: (){
                context.read<DetaySayfaCubit>().guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
              },
                  child: const Text("Güncelle")),
            ],
          ),
        ),

      ),
    );
  }
}
