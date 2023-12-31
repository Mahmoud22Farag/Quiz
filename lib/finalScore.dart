import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/main.dart';
import 'package:task1/questions/first.dart';

class FinalScore extends StatelessWidget {
  const FinalScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Your score is : ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${score}/100",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: score > 40 ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            if (score > 40)
              Icon(Icons.gpp_good),

            if (score < 60)

            Icon(Icons.mood_bad),
            const SizedBox(
              height: 30,
            ),
            Container(
              // width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: MaterialButton(
                onPressed: () {
                  qNumber = 1;
                  score = 0;
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => first()),
                      (route) => false);
                },
                child: const Text(
                  "Restart",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
