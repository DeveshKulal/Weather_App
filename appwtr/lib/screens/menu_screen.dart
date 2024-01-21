// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: 920,
        width: 408,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff2E335A),
            Color(0xff1C1B33),
          ],
        )),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: const Column(children: [
            SizedBox(height: 20),
            //Main Container.....
            CustomMenu(
                imgPath: 'assets/images/moon1.png',
                temp: '19°\n',
                handl: 'H:24° L:18°\n',
                city: 'Montreal, Canada',
                condition: 'Mid Rain'),
            //------------------------------2nd menu----------------------------------
            CustomMenu(
                imgPath: 'assets/images/moon2.png',
                temp: '20°\n',
                handl: 'H:21° L:-19°\n',
                city: 'Toronto, Canada',
                condition: 'Fast Wind'),
            //---------------------------3rd menu-------------------------------------
            CustomMenu(
                imgPath: 'assets/images/sun1.png',
                temp: '13°\n',
                handl: 'H:16° L:8°\n',
                city: 'Tokyo, Japan',
                condition: 'Showers'),
            //----------------------------4th Menu------------------------------------,
            CustomMenu(
                imgPath: 'assets/images/t1.png',
                temp: '23°\n',
                handl: 'H:26° L:16°\n',
                city: 'Tennessee, US',
                condition: 'Tornado'),
            SizedBox(
              height: 50,
            )
          ]),
        ),
      ),
    ));
  }
}

class CustomMenu extends StatelessWidget {
  final String imgPath;
  final String temp;
  final String handl;
  final String city;
  final String condition;

  const CustomMenu({
    Key? key,
    required this.imgPath,
    required this.temp,
    required this.handl,
    required this.city,
    required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 210,
        width: 342,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(
          children: [
            Stack(children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Container(
                  height: 184,
                  width: 342,
                  child: SvgPicture.asset(
                    'assets/images/rectangle.svg',
                  ),
                ),
              ),
              //19 degree and some contents
              Align(
                alignment: const AlignmentDirectional(-0.999, 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Column(
                      children: [
                        const SizedBox(height: 27),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                              text: temp,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 64,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                                text: handl,
                                style: const TextStyle(
                                  color: Color(0x99EBEBF5),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                )),
                            TextSpan(
                                text: city,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                )),
                          ])),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              //Cloud assets or weather assets
              Align(
                alignment: const AlignmentDirectional(0.9, 0),
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Image.asset(
                    imgPath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Align(
                  alignment: const AlignmentDirectional(0.8, 2),
                  child: Container(
                      height: 20,
                      width: 60,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Text(condition,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400))),
                ),
              )
            ])
          ],
        ),
      ),
    ]);
  }
}
