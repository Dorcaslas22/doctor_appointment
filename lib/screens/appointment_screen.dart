import 'package:doctor_appointment/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD9E4EE),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/Hospital4.jpg",
                ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      pColor.withOpacity(0.9),
                      pColor.withOpacity(0),
                      pColor.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    color: Colors.black12.withOpacity(0.7),
                                  )
                                ]
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 28,
                                  color: pColor,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color:  Color(0xFFF2F8FF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.black12.withOpacity(0.7),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(Icons.favorite_outline,
                                size: 28,
                                color: pColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Patients",
                                style: TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.bold,
                                  color: wColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("20.8k",
                                style: TextStyle(
                                fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: wColor,
                              ),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Experience",
                                style: TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.bold,
                                  color: wColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("8 yrs",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: wColor,
                                ),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Speciality",
                                style: TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.bold,
                                  color: wColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("Dermatologist",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: wColor,
                                ),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rating",
                                style: TextStyle(
                                  fontSize:16,
                                  fontWeight: FontWeight.bold,
                                  color: wColor,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("4.2",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: wColor,
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr Chidinma",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: pColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(MdiIcons.heartPulse,color: Colors.red,size: 28),
                      SizedBox(width: 5),
                      Text("Dermatologist",
                        style: TextStyle(
                          fontSize: 16,
                          color: bColor.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text("A medical doctor who specializes in conditions that affect the skin, hair,"
                      " and nails. The skin is an incredible organ.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 5),
                  Text("Book Date",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: bColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index){
                        return InkWell(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8,vertical: 5),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                  color: index == 1? pColor : Color(0xFFF2F8FF),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12.withOpacity(0.5),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("${index + 24}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: index == 1
                                            ? wColor : bColor.withOpacity(0.5),
                                      ),
                                    ),

                                    Text(
                                      "FEB",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: index == 1
                                            ? wColor : bColor.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                      },
                  ),

                  ),
                  SizedBox(height: 5),
                  Text(
                    "Book Time",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: bColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 60,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                            color: index == 2 ? pColor : Color(0xFFF2F8FF),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.5),
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "${index + 6} : 00AM",
                              style: TextStyle(
                                fontSize: 16,
                                color: index == 2 ? wColor : pColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                        );
                      },
                  ),
                  ),
                  SizedBox(height: 15),
                  Material(
                    color: pColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text("Book Appointment",
                            style: TextStyle(
                              color: wColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
