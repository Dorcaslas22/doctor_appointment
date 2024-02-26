import 'package:doctor_appointment/colors.dart';
import 'package:flutter/material.dart';

import '../screens/appointment_screen.dart';

class DoctorsSection extends StatelessWidget {
  const DoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 4,
                      color: Colors.black12.withOpacity(0.5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => AppointmentScreen(),
                            ));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset("assets/images/Hospital${index + 1}.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.black12.withOpacity(0.5),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outline,
                                size: 28,
                                color: pColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr Chidinma",
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: pColor,
                          ),),
                          Text("Dermatologist",
                            style: TextStyle(
                              fontSize: 14,
                              color: bColor.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBox(width: 8),
                              Text("4.2",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: bColor.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },

      ),
    );

  }
}
