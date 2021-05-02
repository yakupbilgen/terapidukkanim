import 'package:flutter/material.dart';
import 'package:terapidukkanim/widgets/personel_widget.dart';

class PersonelScreenBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String ayseImage = 'assets/images/personel/ayse.png';
    final String ayseTitle = 'Klinik Psikolog';
    final String ayseName = 'Ayşe Refia UYSAL';
    final String ayseText =
        """2017 yılında Fatih Sultan Mehmet Vakıf Üniversitesi Edebiyat Fakültesi Psikoloji lisans bölümünden mezun oldum.

2020 yılında İstanbul Kent Üniversitesi Klinik Psikoloji yüksek lisansını tamamladım.

Yüksek Lisans bitirme projesini "Metakognitif Terapi" üzerine yazdım.

Lisans ve Yüksek Lisans eğitimleri dışında; Bilişsel Davranışçı Terapi, Çocuklarda Bilişsel Davranışçı Terapi, Çözüm Odaklı Terapi,  Evlilik ve Çift Terapisi, Oyun Terapisi, Masal Terapisi, EMDR, Temel Hipnoz, Çocuk Resimlerine Klinik Bakış ve Çocuk Testleri, Objektif ve Projektif Testler (CAT-Luise Düss), Beden Dili, Zihin Haritalama Tekniği ve Hafıza Teknikleri eğitimlerini aldım.

Beşiktaş Rehberlik ve Araştırma Merkezi'nde 16 Haftalık staj programını tamamladım.

Lisans eğitimim boyunca ileri istatistik ve SPSS üzerine ileri düzey eğitimler aldım ve psikoloji bilimine katkı sağlayacak araştırmalarda yer almaktayım.

Aile Danışmanlığı, Cinsel Terapi, Kabul ve Kararlılık Terapisi (ACT) eğitimlerine devam etmekteyim.

Bireysel Terapi, Aile ve Çift Terapisi, Grup Terapisi (Yapılandırılmış Oyun Terapisi Ebeveyn Eğitimi) alanlarında danışan kabul etmekteyim.""";

    final String elifNurImage = 'assets/images/personel/elifnur.png';
    final String elifnurTitle = 'Psikolojik Danışman';
    final String elifnurName = 'Elif Nur ERGÜN';
    final String elifnurText =
        """2019 yılında Bahçeşehir Üniversitesi Eğitim Bilimleri Fakültesi Psikolojik Danışmanlık ve Rehberlik bölümünden mezun oldum.

2016-2019 Bahçeşehir Üniversitesi'nde Yrd. Dr. Nevin Dölek, Prof. Dr. Aynur Eren Gümüş, Prof. Dr. Özlem Karaırmak, Prof. Dr. Berna Güloğlu ve Prof. Dr. Bilge Uzun'dan birden fazla ders alarak ve Psikodrama Enstitüsü'nden Deniz Altınay'dan ders alma fırsatı bularak ayrıcalıklı bir lisans hayatı geçirdim.

2019 yılında, mezuniyetimden sonra gönüllü psikolojik danışma veren ekiplerle çalıştım.

2021 Ocak – Mart tarihlerinde İngiltere'deki bir psikolojik danışmanlık şirketi olan Lifelong Counseling’ten EMDR eğitimi aldım, teorik, uygulama ve süpervizyon aşamasından geçtim. Sertifikamı aldım.

Şuan Life Psikoloji'den Cinsel Terapi ve Evlilik ve Çift Terapi eğitimini alıyorum.

Ergen ve Yetişkin bireylerle çalışıyorum.""";

    final String seymaImage = 'assets/images/personel/seyma.png';
    final String seymaTitle = 'Psikolojik Danışman';
    final String seymaName = 'Şeyma ALBAYRAK';
    final String seymaText =
        """2016 yılında Erciyes Üniversitesi Eğitim Bilimleri Fakültesi Psikolojik Danışmanlık ve Rehberlik bölümünden mezun oldum.
2014-2016 yılları arasında ortaöğretim kurumlarında stajlarımı tamamladım. Ardından yaklaşık iki yıl ortaöğretim kurumlarında psikolojik danışmanlık yaptım. Şu an hala özel eğitim kurs merkezlerinde psikolojik danışmanlık hizmeti sunmaktayım.  
Eğitim sürecimde ve sonrasında almış olduğum eğitimler; Hipnotik Yeniden İşleme Terapisi, Bilişsel Davranışçı Terapi, Çözüm Odaklı Kısa Süreli Terapi, Aile Danışmanlığı, Filial Terapi, Çocuk Resimlerinin Psiko-Pedagojik Analizi ve Çocuk Testleri Eğitimi, Projektif Testler, Çocuk İstismarında İlk Görüşme Teknikleri.
Bireysel Terapi (Ergen-Yetişkin) , Aile Terapisi ve Ebeveyn-Çocuk İlişkisine (Filial Terapi) yönelik danışan kabul etmekteyim.""";
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Personelimiz'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: CircleAvatar(child: Image.asset(elifNurImage)),
                iconMargin: EdgeInsets.all(100),
              ),
              Tab(
                icon: CircleAvatar(child: Image.asset(ayseImage)),
              ),
              Tab(
                icon: CircleAvatar(child: Image.asset(seymaImage)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PersonelWidget(
                title: elifnurTitle, name: elifnurName, text: elifnurText),
            PersonelWidget(title: ayseTitle, name: ayseName, text: ayseText),
            PersonelWidget(title: seymaTitle, name: seymaName, text: seymaText),
          ],
        ),
      ),
    );
  }
}
