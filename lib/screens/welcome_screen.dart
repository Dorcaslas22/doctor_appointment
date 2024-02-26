import 'package:doctor_appointment/colors.dart';
import 'package:doctor_appointment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              pColor.withOpacity(0.8),
              pColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30),
              child: Image.asset("assets/images/image 214.png"),
            ),
            SizedBox(height: 30),
            Text("Doctors Online",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: wColor,
                letterSpacing: 1,
                wordSpacing: 2
              ),
            ),
            SizedBox(height: 10),
            Text("Find a Doctor",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 1,
                  wordSpacing: 2
              ),
            ),
            SizedBox(height: 20),
            Material(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  child: Text("Swipe in",
                    style: TextStyle(
                      color: pColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Image.asset("assets/images/heart_1.png",
              color: wColor,
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}
