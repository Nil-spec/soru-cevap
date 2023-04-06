
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TestYapisi BenimTestim = new TestYapisi();


//yapıyı
class TestYapisi {
  //nitelikler özellikler
  int aktif_sorum = 0;
  List<Icon> d_y_bilgisi =[];
  List<Soru> Sorular = [
    Soru(soru_metni: "2*2=?",
        a: "3",
        b: "4",
        c: "6",
        d: "7",
        cevap: "B"),
    Soru(soru_metni: "Türkiye'nin başkenti neresidir?",
        a: "Ankara",
        b: "İstanbul",
        c: "Bursa",
        d: "Çanakkale",
        cevap: "A"),
Soru(soru_metni: "3*3?", a: "9", b: "12", c: "22", d: "99", cevap: "A"),

  ];

  // metodlar
// sonraki soruya gec
  void sonraki_soruya_gec() {
    if (Sorular.length-1<aktif_sorum){
    aktif_sorum++;}
    else{
      aktif_sorum=0;
    }
  }

  //soru metnini yaz
  String soru_metnini_yaz() {
    return Sorular[aktif_sorum].Soru_Metni;
  }

  String a_sikkini_yaz() {
    return Sorular[aktif_sorum].A_sikki;
  }

  String b_sikkini_yaz() {
    return Sorular[aktif_sorum].B_sikki;
  }

  String c_sikkini_yaz() {
    return Sorular[aktif_sorum].C_sikki;
  }

  String d_sikkini_yaz() {
    return Sorular[aktif_sorum].D_sikki;
  }
  void cevabi_kontrol_et(String k_cevabi){
   if (Sorular[aktif_sorum].Cevap== k_cevabi) {
d_y_bilgisi.add(Icon(Icons.check) ,);
   }
   else{
    d_y_bilgisi.add(Icon(Icons.close) ,);
   }
   sonraki_soruya_gec();
  }
}


//YAPI
class Soru{
  //nitelikler ve özellikler
  String Soru_Metni="";
  String A_sikki = "";
  String B_sikki= "";
  String C_sikki="";
  String  D_sikki="";
  String Cevap="";

  // yapıcı method
Soru({ required String soru_metni,required String a,required String b,required String c,required String d,required String cevap}){
Soru_Metni=soru_metni;
A_sikki=a;
B_sikki=b;
C_sikki=c;
D_sikki=d;
Cevap=cevap;
}
}