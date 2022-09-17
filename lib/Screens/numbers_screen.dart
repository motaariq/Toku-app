import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku_app/conistants.dart';

class Numbers_Screen extends StatelessWidget {
  const Numbers_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'NUMBERS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.orange,
          ),
        ),
        body: Container(
          color: Colors.orange,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView(physics: BouncingScrollPhysics(), children: [
              Item(
                  image: 'assets/images/numbers/number_one.png',
                  textjp: 'Ichi',
                  texten: 'One',
                  onTap: () => Play('number_one_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_two.png',
                  textjp: 'Ni',
                  texten: 'Two',
                  onTap: () => Play('number_two_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_three.png',
                  textjp: 'San',
                  texten: 'Three',
                  onTap: () => Play('number_three_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_four.png',
                  textjp: 'Shi',
                  texten: 'Four',
                  onTap: () => Play('number_four_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_five.png',
                  textjp: 'GO',
                  texten: 'Five',
                  onTap: () => Play('number_five_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_six.png',
                  textjp: 'Roku',
                  texten: 'Six',
                  onTap: () => Play('number_six_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_seven.png',
                  textjp: 'Sebun',
                  texten: 'Seven',
                  onTap: () => Play('number_seven_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_eight.png',
                  textjp: 'Hachi',
                  texten: 'Eight',
                  onTap: () => Play('number_eight_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_nine.png',
                  textjp: 'Kiu',
                  texten: 'Nine',
                  onTap: () => Play('number_nine_sound.mp3')),
              Item(
                  image: 'assets/images/numbers/number_ten.png',
                  textjp: 'Ju',
                  texten: 'Ten',
                  onTap: () => Play('number_ten_sound.mp3')),
            ]),
          ),
        ));
  }
}
