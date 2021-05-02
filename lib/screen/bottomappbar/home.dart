import 'package:flutter/material.dart';

class HomeScreenBottomBar extends StatelessWidget {
  String title = 'Terapiye İlişkin Bazı Bilgiler';
  String subTitle =
      '    Belki moraliniz bozuk ya da kaygılısınız. Belki de bir ilişkinin geleceğine dair şüpheleriniz var ya da hayatınızda olmak istediğiniz yerde değilmişsiniz gibi hissediyorsunuz. İhtiyacınız ne olursa olsun size destek olmak için Terapi Dükkanı psikolog ve psikolojik danışmanlarıyla buradayız. Terapi, bir büyüme ve kendini keşfetme sürecidir. Biz de sunduğumuz terapilerde pozitif bir bakış açısını, yeni tutum ve tepkilerin benimsenmesini teşvik ederek davranışlarda dönüşüm sağlamayı hedefliyoruz. Hayatınızı yoluna koymanıza yardım edecek araçlara ve mesleki deneyime sahibiz.';
  String contentTitle =
      '"Ya şefkatime en muhtaç kişinin, sevilmeye en muhtaç düşmanımın kendim olduğunu fark edersem, o zaman ne olacak?"';
  String contentSubTitle = 'Carl Gustav Jung';

  String appointmentUrl = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:
                          Theme.of(context).textTheme.headline6.fontSize)),
              SizedBox(height: 10),
              Text(subTitle),
              SizedBox(height: 50),
              Text(contentTitle),
              SizedBox(height: 10),
              Text(
                contentSubTitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.headline6.fontSize),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "/appointmentScreen"),
                  child: Text('Randevu Almak İçin Tıklayın')),
            ],
          ),
        ),
      ),
    );
  }
}
