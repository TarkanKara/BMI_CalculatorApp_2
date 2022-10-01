import 'package:calculate_bmiapp/methods/bmiCalculate.dart';
import 'package:calculate_bmiapp/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Widgets
import 'package:calculate_bmiapp/widgets/cardWidgets.dart';
import 'package:calculate_bmiapp/widgets/buttonWidgets.dart';
import 'package:calculate_bmiapp/widgets/genderwidgets.dart';

enum GenderSelection { KADIN, ERKEK }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int boy = 183;
  int kilo = 95;
  int yas = 25;
  GenderSelection? sec;
  final inActiveClor = Color(0xff5d6c66);
  final ActiveClor = Color(0xff1ff2a0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATE")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CardWidget(
                      color: sec == GenderSelection.ERKEK
                          ? Color(0xff1ff2a0)
                          : Color(0xff5d6c66),
                      myChild: GenderIcon(
                        icon: FontAwesomeIcons.mars,
                        newText: "ERKEK",
                      ),
                      onpress: () {
                        setState(() {
                          sec = GenderSelection.ERKEK;
                        });
                      },
                    ),
                    CardWidget(
                      color: sec == GenderSelection.KADIN
                          ? Color(0xff1ff2a0)
                          : Color(0xff5d6c66),
                      myChild: GenderIcon(
                        icon: FontAwesomeIcons.venus,
                        newText: "KADIN",
                      ),
                      onpress: () {
                        setState(() {
                          sec = GenderSelection.KADIN;
                        });
                      },
                    ),
                  ],
                ),
              ),
              CardWidget(
                color: Color(0xff1ff2a0),
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "BOY",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          boy.toString(),
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 3,
                          activeTrackColor: Colors.red,
                          thumbColor: Colors.redAccent,
                          overlayColor: Colors.amber,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 12,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 25,
                          ),
                        ),
                        child: Slider(
                            max: 220,
                            min: 110,
                            value: boy.toDouble(),
                            onChanged: (newValue) {
                              setState(() {
                                boy = newValue.toInt();
                              });
                            }),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    CardWidget(
                      //CARDWIDGETS
                      color: Color(0xff1ff2a0),
                      myChild: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "KILO",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  kilo.toString(),
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Kg",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 3,
                                activeTrackColor: Colors.red,
                                thumbColor: Colors.redAccent,
                                overlayColor: Colors.deepPurpleAccent,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 12,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 25,
                                ),
                              ),
                              child: Slider(
                                  max: 180,
                                  min: 50,
                                  value: kilo.toDouble(),
                                  onChanged: (newValue) {
                                    setState(() {
                                      kilo = newValue.toInt();
                                    });
                                  }),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    CardWidget(
                      //CARDWIDGETS
                      color: Color(0xff1ff2a0),
                      myChild: Column(
                        children: [
                          Text(
                            "YAŞ",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                yas.toString(),
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Buttonn(
                                colorr: Colors.red,
                                iconn: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    yas--;
                                  });
                                },
                              ),
                              Buttonn(
                                colorr: Colors.red,
                                iconn: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    yas++;
                                  });
                                },
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      CalculateBMI calculateBMI = new CalculateBMI(
                          height: boy.toDouble(), weight: kilo.toDouble());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => ResultPage(
                                bmi: calculateBMI.calculateBMI(),
                                result: calculateBMI.getResult(),
                                feedback: calculateBMI.feedBack(),
                              )),
                        ),
                      );
                    },
                    child: Text(
                      "BMI HESAPLA",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 8.0,
                      primary: Theme.of(context).accentColor,
                      minimumSize: Size(double.infinity, 50),
                    )),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
