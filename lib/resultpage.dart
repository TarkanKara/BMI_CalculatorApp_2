import 'package:calculate_bmiapp/homepage.dart';
import 'package:calculate_bmiapp/widgets/cardWidgets.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String bmi;
  final String result;
  final String feedback;
  const ResultPage(
      {super.key,
      required this.bmi,
      required this.result,
      required this.feedback});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATE"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 15, left: 15, bottom: 15, top: 10),
        child: Column(
          children: [
            CardWidget(
              color: Color(0xff1ff2a0),
              myChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: double.infinity,
                    child: Text(
                      "SONUÇ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      widget.bmi,
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      widget.result,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            CardWidget(
              color: Color(0xff1ff2a0),
              myChild: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "BİLGİLENDİRME",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        widget.feedback,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => HomePage()),
                      ),
                    );
                  },
                  child: Text(
                    "TEKRAR HESAPLA",
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
          ],
        ),
      ),
    );
  }
}
