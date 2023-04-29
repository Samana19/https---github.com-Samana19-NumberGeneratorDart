import 'package:flutter/material.dart';
import 'package:number_generator/models/my_model.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyModel model = MyModel();
  // int randomNum1 = Random().nextInt(101);
  // int randomNum2 = Random().nextInt(101);
  // int totalClicks = 0;
  // int correctAnswer = 0;
  // int incorrectAnswer = 0;
  // bool isGameFinished = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          model.checkAnswer(1);
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Text(
                        model.randomNum1.toString(),
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          model.checkAnswer(2);
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Text(
                        model.randomNum2.toString(),
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Result",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Remaining : ${model.isGameFinished ? 0 : 10 - model.totalClicks}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Correct Answer : ${model.isGameFinished ? model.correctAnswer : ""}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Incorrect Answer : ${model.isGameFinished ? model.incorrectAnswer : ""}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    model.reset();
                  });
                },
                child: const Text(
                  "Restart Game",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//view