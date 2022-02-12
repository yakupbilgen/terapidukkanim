import 'package:flutter/material.dart';
import 'package:terapidukkanim/widgets/appointment_button.dart';

class HomeScreenBottomBar extends StatelessWidget {
  final String title = 'Terapiye İlişkin Bazı Bilgiler';
  final String subTitle =
      'Belki moraliniz bozuk ya da kaygılısınız. Belki de bir ilişkinin geleceğine dair şüpheleriniz var ya da hayatınızda olmak istediğiniz yerde değilmişsiniz gibi hissediyorsunuz. İhtiyacınız ne olursa olsun size destek olmak için Terapi Dükkanı psikolog ve psikolojik danışmanlarıyla buradayız. Terapi, bir büyüme ve kendini keşfetme sürecidir. Biz de sunduğumuz terapilerde pozitif bir bakış açısını, yeni tutum ve tepkilerin benimsenmesini teşvik ederek davranışlarda dönüşüm sağlamayı hedefliyoruz. Hayatınızı yoluna koymanıza yardım edecek araçlara ve mesleki deneyime sahibiz.';
  final String contentTitle =
      '"Ya şefkatime en muhtaç kişinin, sevilmeye en muhtaç düşmanımın kendim olduğunu fark edersem, o zaman ne olacak?"';
  final String contentSubTitle = 'Carl Gustav Jung';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 50),
              Text(
                contentTitle,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 10),
              Text(
                contentSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              AppointmentButton(),
            ],
          ),
        ),
      ),
    );
  }
}
