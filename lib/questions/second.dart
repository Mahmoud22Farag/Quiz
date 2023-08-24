import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/main.dart';
import 'package:task1/questions/third.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String? answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              const Center(
                child: Text(
                  "Kepp Going",
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "${qNumber}/5",
                  style: const TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsetsDirectional.all(17),
                  child: const Text(
                    "Which data structure uses LIFO?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: answer == "Array" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("Array"),
                  value: "Array",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: answer == "Queues" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("Queues"),
                  value: "Queues",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: answer == "Stacks" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("Stacks"),
                  value: "Stacks",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                    });
                  },
                ),
              ),
              Spacer(),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {

                      Navigator.pop(context);
                          qNumber--;
                          score = score-20;
                    },
                    backgroundColor: Colors.green,
                    child: const Text(
                      "Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //
                  //     Navigator.pop(context);
                  //     qNumber--;
                  //     score--;
                  //
                  //   },
                  //   icon: Icon(
                  //     Icons.navigate_before,
                  //     size: 40,
                  //   ),
                  // ),
                  Spacer(),
                  if (answer != null)
                    FloatingActionButton(
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Third()));
                        if (answer == "Stacks") {
                          score = score + 20;
                        }
                        qNumber++;
                      },
                      backgroundColor: Colors.green,
                      child: const Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {
                    //
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) => Third()));
                    //     if(answer=="cout")
                    //     {
                    //       score++;
                    //     }
                    //     qNumber++;
                    //   },
                    //   icon: Icon(
                    //     Icons.navigate_next,
                    //     size: 40,
                    //   ),
                    // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
