import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku_app/Screens/family_screen.dart';
import 'package:toku_app/Screens/numbers_screen.dart';
import 'package:toku_app/conistants.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.orange),
          elevation: 0.0,
          title: Text(
            'TOKU',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.orange,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Learn The Basics',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Category(
                onTap: () => NavigateTo(context, Numbers_Screen()),
                text: 'Number',
              ),
              SizedBox(
                height: 10.0,
              ),
              Category(
                text: 'Family Members',
                onTap: () => NavigateTo(context, Family_Screen()),
              ),
            ],
          ),
        ));
  }
}
