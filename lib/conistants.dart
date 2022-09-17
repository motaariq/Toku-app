import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.text, this.onTap});
  String? text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 75,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                text!,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item({this.image, this.textjp, this.texten, this.onTap, this.music});
  String? image;
  String? textjp;
  String? texten;
  String? music;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.orange,
      child: Row(
        children: [
          Image.asset(
            image!,
            width: 100,
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(textjp!,
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
              Text(texten!,
                  style: TextStyle(color: Colors.black, fontSize: 18.0))
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}

NavigateTo(context, Widget) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return Widget;
  }));
}

Play(String) {
  AudioCache Player = AudioCache(prefix: 'assets/sounds/numbers/');
  Player.play(String);
}

PlayFamily(String) {
  AudioCache Player2 = AudioCache(prefix: 'assets/sounds/family_members/');
  Player2.play(String);
}
