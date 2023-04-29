// model
import 'dart:math';

class MyModel {
  int randomNum1 = Random().nextInt(101);
  int randomNum2 = Random().nextInt(101);
  int totalClicks = 0;
  int correctAnswer = 0;
  int incorrectAnswer = 0;
  bool isGameFinished = false;

  void initState() {
    if (randomNum1 == randomNum2) {
      insertRandomNumber();
    }
  }

  void insertRandomNumber() {
    randomNum1 = Random().nextInt(101);
    randomNum2 = Random().nextInt(101);
  }

  void checkAnswer(int buttonNum) {
    if (totalClicks < 10) {
      if (buttonNum == 1) {
        if (randomNum1 > randomNum2) {
          correctAnswer++;
        } else {
          incorrectAnswer++;
        }
      } else if (buttonNum == 2) {
        if (randomNum2 > randomNum1) {
          correctAnswer++;
        } else {
          incorrectAnswer++;
        }
      }

      insertRandomNumber();
      if (randomNum1 == randomNum2) {
        insertRandomNumber();
      }
    } else {
      isGameFinished = true;
    }

    totalClicks++;
  }

  void reset() {
    totalClicks = 0;
    isGameFinished = false;
    correctAnswer = 0;
    incorrectAnswer = 0;
    insertRandomNumber();
  }
}
