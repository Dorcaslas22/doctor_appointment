import 'package:doctor_appointment/colors.dart';
import 'package:doctor_appointment/widgets/doctors_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  List catNames = [
    'Tooth',
    'Heart',
    'Brain',
    'Eyes',
    'Ear',
    'Stomach',
    'Lungs',
  ];
  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: pColor, size: 30),
    Icon(MdiIcons.heartOutline, color: pColor, size: 30),
    Icon(MdiIcons.brain, color: pColor, size: 30),
    Icon(MdiIcons.eyeOutline, color: pColor, size: 30),
    Icon(MdiIcons.earHearing, color: pColor, size: 30),
    Icon(MdiIcons.stomach, color: pColor, size: 30),
    Icon(MdiIcons.lungs, color: pColor, size: 30),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFFFFFFF),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    pColor.withOpacity(0.8),
                    pColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
               ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(radius: 30,
                              backgroundImage: AssetImage("assets/images/patient.jpg"),
                            ),
                            Icon(
                                Icons.notifications_outlined,
                              color: wColor,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text("Hi Manny",
                          style: TextStyle(
                            color: wColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Your health is our priority",
                          style: TextStyle(
                            color: wColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15,bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: wColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search...",
                              hintStyle: TextStyle(
                                color: Colors.black12.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                  Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15),
                    child: Text("Categories",
                      style: TextStyle(
                        color: bColor.withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: (context, index){
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    color: Colors.black12.withOpacity(0.5),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: catIcons[index],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                                catNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: bColor.withOpacity(0.7),
                              ),
                            ),
                          ],
                        );
                      },
                      ),
                  ),
                  SizedBox(height: 30),
                  Padding(padding: EdgeInsets.only(left: 15),
                    child: Text("Recommended Doctors",
                      style: TextStyle(
                          color: bColor.withOpacity(0.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),
                    ),
                  ),
                  DoctorsSection()
                ],
              ),
            ),
          ],),
      ),
    );
  }
}
