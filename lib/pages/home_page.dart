import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valentines_day/pages/answer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  final colorizeColors = [
    Colors.white,
    Colors.orange,
    Colors.pink,
    Colors.purple
  ];

  final colorizeTextStyle =
      GoogleFonts.pacifico(fontSize: 35, color: Colors.white);

  bool img1 = false,
      img2 = false,
      img3 = false,
      img4 = false,
      img5 = false,
      img6 = false,
      img7 = false,
      img8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    if (img1)
                      FadeInLeft(
                        child: Container(
                          margin: const EdgeInsets.only(left: 2),
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.48,
                          child: Image.asset(
                            "assets/6.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (img2)
                          FadeInRight(
                            child: Container(
                              margin: const EdgeInsets.all(2.0),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset(
                                "assets/0.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        if (img3)
                          FadeInRight(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 2),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset(
                                "assets/4.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        if (img4)
                          FadeInUp(
                            child: Container(
                              margin: const EdgeInsets.all(2.0),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset(
                                "assets/5.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        if (img5)
                          FadeInUp(
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 2),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset(
                                "assets/3.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (img6)
                      FadeInUp(
                        child: Container(
                          margin: const EdgeInsets.only(left: 2),
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.48,
                          child: Image.asset(
                            "assets/-.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    if (img7)
                      FadeInDown(
                        child: Container(
                          margin: const EdgeInsets.only(left: 2),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.49,
                          child: Image.asset(
                            "assets/2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    if (img8)
                      FadeInDown(
                        child: Container(
                          margin: const EdgeInsets.only(left: 2),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.49,
                          child: Image.asset(
                            "assets/1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromRGBO(0, 0, 0, 0.4),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Hola mi amorzote',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  /* totalRepeatCount: 2,
                  pause: const Duration(milliseconds: 300),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,*/
                  repeatForever: true,
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
              const SizedBox(height: 30),
              if (img8)
                AnimatedButton(
                    //backgroundColor: const Color.fromRGBO(156, 39, 160, 0.7),
                    borderColor: Colors.white,
                    borderRadius: 10,
                    gradient: const LinearGradient(colors: [
                      Colors.purple,
                      //Colors.orange,
                      Colors.pink,
                      Colors.black,
                    ]),
                    borderWidth: 1,
                    width: 200,
                    text: "Pulsa aquí amor",
                    isSelected: selected,
                    textStyle:
                        GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TOP_ROUNDER,
                    onPress: () async {
                      setState(() => selected = true);
                      Future.delayed(const Duration(milliseconds: 500))
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => AnswerPage()));
                        setState(() => selected = false);
                      });
                    }),
              if (!img8)
                Column(
                  children: [
                    Text(
                      "Primero que nada... te amo mucho <3",
                      style: GoogleFonts.pacifico(
                          fontSize: 17, color: Colors.white),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        "Segundo.. vamos a deslbloquear las imágenes, ya? Son 8",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.pacifico(
                            fontSize: 17, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimatedButton(
                      text: "Puslsa aqui 8 veces",
                      onPress: () {
                        setState(() => selected = true);
                        if (!img1) {
                          setState(() => img1 = true);
                          setState(() => selected = false);
                        } else if (!img2) {
                          setState(() => img2 = true);
                          setState(() => selected = false);
                        } else if (!img3) {
                          setState(() => img3 = true);
                          setState(() => selected = false);
                        } else if (!img4) {
                          setState(() => img4 = true);
                          setState(() => selected = false);
                        } else if (!img5) {
                          setState(() => img5 = true);
                          setState(() => selected = false);
                        } else if (!img6) {
                          setState(() => img6 = true);
                          setState(() => selected = false);
                        } else if (!img7) {
                          setState(() => img7 = true);
                          setState(() => selected = false);
                        } else if (!img8) {
                          setState(() => img8 = true);
                          setState(() => selected = false);
                        }
                      },
                      borderColor: Colors.white,
                      borderRadius: 10,
                      gradient: const LinearGradient(colors: [
                        Colors.purple,
                        //Colors.orange,
                        Colors.pink,
                        Colors.black,
                      ]),
                      borderWidth: 1,
                      width: 150,
                      isSelected: selected,
                      textStyle: GoogleFonts.pacifico(
                          fontSize: 17, color: Colors.white),
                      selectedTextColor: Colors.black,
                      transitionType: TransitionType.LEFT_TOP_ROUNDER,
                    )
                  ],
                )
            ],
          )
        ],
      ),
    );
  }
}
