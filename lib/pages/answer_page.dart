import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valentines_day/utils/custom_flushbar.dart';

class AnswerPage extends StatefulWidget {
  const AnswerPage({super.key});

  @override
  State<AnswerPage> createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  bool selectedN = false;
  bool selectedY = false;
  bool disable = false;
  bool no1 = true,
      no2 = false,
      no3 = false,
      no4 = false,
      no5 = false,
      no6 = false;
  final colorizeColors = [
    Colors.white,
    Colors.orange,
    Colors.pink,
    Colors.purple
  ];

  final colorizeTextStyle =
      GoogleFonts.pacifico(fontSize: 40, color: Colors.white);

  final colorizeTextStyle2 =
      GoogleFonts.pacifico(fontSize: 25, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      body: Stack(
        children: [
          Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/7.JPG",
                fit: BoxFit.cover,
              )),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromRGBO(0, 0, 0, 0.4),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (no5)
                  Center(
                    child: AnimatedButton(
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
                        width: 70,
                        text: "NO",
                        isSelected: selectedN,
                        textStyle: GoogleFonts.pacifico(
                            fontSize: 22, color: Colors.white),
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.LEFT_TOP_ROUNDER,
                        onPress: () async {
                          setState(() {
                            no5 = false;
                            no6 = true;
                          });
                          flushBarGlobal(
                            context,
                            "Esta bien, vamos a intentarlo de nuevo, ok?",
                            null,
                            seconds: 3,
                            gradient: const LinearGradient(colors: [
                              Colors.purple,
                              Colors.black,
                            ]),
                          );
                        }),
                  ),
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Hola niña preciosa',
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Yo solo quería saber si... Te gustaría ser mi san valentín?',
                        textAlign: TextAlign.center,
                        textStyle: colorizeTextStyle2,
                        colors: colorizeColors,
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
                const SizedBox(height: 20),
                if (no3)
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
                      width: 70,
                      text: "NO",
                      isSelected: selectedN,
                      textStyle: GoogleFonts.pacifico(
                          fontSize: 22, color: Colors.white),
                      selectedTextColor: Colors.black,
                      transitionType: TransitionType.LEFT_TOP_ROUNDER,
                      onPress: () async {
                        setState(() {
                          no3 = false;
                          no4 = true;
                        });
                        flushBarGlobal(
                          context,
                          "No me parece que sea la respuesta correcta :(",
                          null,
                          seconds: 3,
                          gradient: const LinearGradient(colors: [
                            Colors.purple,
                            Colors.black,
                          ]),
                        );
                      }),
                if (no3) const SizedBox(height: 20),
                Container(
                    margin: const EdgeInsets.only(right: 50),
                    child: Image.asset("assets/blue-birthday.gif")),
                const SizedBox(height: 40),
                if (no6)
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
                      width: 70,
                      text: "NO",
                      isSelected: selectedN,
                      textStyle: GoogleFonts.pacifico(
                          fontSize: 22, color: Colors.white),
                      selectedTextColor: Colors.black,
                      transitionType: TransitionType.LEFT_TOP_ROUNDER,
                      onPress: () async {
                        setState(() {
                          no6 = false;
                          disable = true;
                        });
                        flushBarGlobal(
                          context,
                          "Sabes? mejor te dejo sin opción...",
                          null,
                          seconds: 3,
                          gradient: const LinearGradient(colors: [
                            Colors.purple,
                            Colors.black,
                          ]),
                        );
                      }),
                if (no6) const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (no1)
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
                          width: 70,
                          text: "NO",
                          isSelected: selectedN,
                          textStyle: GoogleFonts.pacifico(
                              fontSize: 22, color: Colors.white),
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.LEFT_TOP_ROUNDER,
                          onPress: () async {
                            setState(() {
                              no1 = false;
                              no2 = true;
                            });
                            flushBarGlobal(
                              context,
                              "¿SEGURAAAAAAAAAA?",
                              null,
                              seconds: 3,
                              gradient: const LinearGradient(colors: [
                                Colors.purple,
                                Colors.black,
                              ]),
                            );
                          }),
                    AnimatedButton(
                        key: GlobalKey(),
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
                        width: 70,
                        text: "SI",
                        isSelected: selectedY,
                        textStyle: GoogleFonts.pacifico(
                            fontSize: 22, color: Colors.white),
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.LEFT_TOP_ROUNDER,
                        onPress: () async {
                          setState(() => selectedY = true);
                          Future.delayed(const Duration(milliseconds: 500))
                              .then((value) {
                            setState(() => selectedY = false);

                            mostrarDialogAnimado();
                          });
                        }),
                    if (no4)
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
                          width: 70,
                          text: "NO",
                          isSelected: selectedN,
                          textStyle: GoogleFonts.pacifico(
                              fontSize: 22, color: Colors.white),
                          selectedTextColor: Colors.black,
                          transitionType: TransitionType.LEFT_TOP_ROUNDER,
                          onPress: () async {
                            setState(() {
                              no4 = false;
                              no5 = true;
                            });
                            flushBarGlobal(
                              context,
                              "Te doy una pista, pulsa en el SI!!!",
                              null,
                              seconds: 3,
                              gradient: const LinearGradient(colors: [
                                Colors.purple,
                                Colors.black,
                              ]),
                            );
                          }),
                  ],
                ),
                if (no2) const SizedBox(height: 20),
                if (no2)
                  Center(
                    child: AnimatedButton(
                        borderColor: Colors.white,
                        borderRadius: 10,
                        gradient: const LinearGradient(colors: [
                          Colors.purple,
                          //Colors.orange,
                          Colors.pink,
                          Colors.black,
                        ]),
                        borderWidth: 1,
                        width: 70,
                        text: "NO",
                        isSelected: selectedN,
                        textStyle: GoogleFonts.pacifico(
                            fontSize: 22, color: Colors.white),
                        selectedTextColor: Colors.black,
                        transitionType: TransitionType.LEFT_TOP_ROUNDER,
                        onPress: () async {
                          setState(() {
                            no2 = false;
                            no3 = true;
                          });
                          flushBarGlobal(
                            context,
                            "MMMMM, a ver piensalo bien...",
                            null,
                            seconds: 3,
                            gradient: const LinearGradient(colors: [
                              Colors.purple,
                              Colors.black,
                            ]),
                          );
                        }),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void mostrarDialogAnimado() {
    showAnimatedDialog(
        barrierDismissible: true,
        context: context,
        animationType: DialogTransitionType.scale,
        duration: const Duration(milliseconds: 500),
        builder: (builder) {
          return CustomDialogWidget(
              backgroundColor: Colors.purple.shade400,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: const Text(
                "AL FIN!!!",
                style: TextStyle(color: Colors.white),
              ),
              content: RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text:
                              "Ya viste que no era tan dificil mi amor, bueno, el 14 de febrero te espero en nuestra cita. \n\n",
                          style: TextStyle(fontSize: 13)),
                      TextSpan(
                          text: "Hora: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                      TextSpan(text: "20h00\n"),
                      TextSpan(
                          text: "Lugar: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                      TextSpan(text: "Puerto Santa Ana\n\n"),
                      TextSpan(text: "No faltes, ok?\n\n"),
                      TextSpan(
                          text: "TE AMOOOOOO <3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13))
                    ]),
              ));
        });
    /*ClassicGeneralDialogWidget(
            titleText: "AL FIN!!!!",
            contentText:
                ". \n\nHora: 20h00 \nLugar: Puerto Santa Ana \nNo faltes, ok? \n\n TE AMO <3",
          );*/
  }
}
