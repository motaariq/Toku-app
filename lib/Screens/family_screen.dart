import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku_app/conistants.dart';

class Family_Screen extends StatefulWidget {
  const Family_Screen({Key? key}) : super(key: key);

  @override
  State<Family_Screen> createState() => _Family_ScreenState();
}

class _Family_ScreenState extends State<Family_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Family',
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
                image: 'assets/images/family_members/family_father.png',
                texten: 'Father',
                textjp: 'Chichioya',
                onTap: () => PlayFamily('father.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_daughter.png',
                texten: 'Daughter',
                textjp: 'Musume',
                onTap: () => PlayFamily('daughter.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_grandfather.png',
                texten: 'Grand Father',
                textjp: 'Ojisan',
                onTap: () => PlayFamily('grand father.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_mother.png',
                texten: 'Mother',
                textjp: 'Hahaoya',
                onTap: () => PlayFamily('mother.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_grandmother.png',
                texten: 'Grand Mother',
                textjp: 'Sobo',
                onTap: () => PlayFamily('grand mother.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_older_brother.png',
                texten: 'Older Brother',
                textjp: 'Nisan',
                onTap: () => PlayFamily('older bother.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_older_sister.png',
                texten: 'Older Siser',
                textjp: 'Ane',
                onTap: () => PlayFamily('older sister.wav'),
              ),
              Item(
                image: 'assets/images/family_members/family_son.png',
                texten: 'Son',
                textjp: 'Musuko',
                onTap: () => PlayFamily('son.wav'),
              ),
            ]),
          ),
        ));
  }
}
