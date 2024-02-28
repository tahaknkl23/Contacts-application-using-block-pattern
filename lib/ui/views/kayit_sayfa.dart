import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/ui/cubit/kayit_sayfa_cubit.dart';

class kayitSayfa extends StatefulWidget {
  const kayitSayfa({super.key});

  @override
  State<kayitSayfa> createState() => _kayitSayfaState();
}

class _kayitSayfaState extends State<kayitSayfa> {
  var tfKisiAdi =TextEditingController();
  var tfKisiTel =TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kayit Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:50,right: 50 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAdi,decoration: const InputDecoration(hintText: "Kisi Ad"),),
              TextField(controller: tfKisiTel,decoration: const InputDecoration(hintText: "Kisi Tel"),),
              ElevatedButton(onPressed: (){
                context.read<KayitSayfaCubit>().kaydet(tfKisiAdi.text, tfKisiTel.text);
              },
                  child: const Text("Kaydet")),
            ],
          ),
        ),

      ),
    );
  }
}
