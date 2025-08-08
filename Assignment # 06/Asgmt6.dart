// Dart Assignment: Looping, Conditions, and String Tasks

import 'dart:math';

void main() {
  // Q1: Fibonacci sequence up to a given number
  int limit = 10;
  int a = 0, b = 1;
  print('Q1: Fibonacci up to \$limit:');
  for (int i = 0; a <= limit; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  // Q2: Find largest element
  List<int> nums = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > largest) largest = nums[i];
  }
  print('nQ2: Largest element: $largest');

  // Q3: Multiplication table
  int num = 5;
  print('nQ3: Multiplication Table of \$num:');
  for (int i = 1; i <= 10; i++) {
    print('$num x $i = ${num * i}');
  }

  // Q4: Palindrome check
  String word = "radar";
  String reversed = word.split('').reversed.join();
  print('nQ4: "$word" is ${word == reversed ? '' : 'not '}a palindrome.');

  // Q5: Triangle pattern with repeating numbers
  print('nQ5: Pattern');
  for (int i = 1; i <= 4; i++) {
    print('${i.toString() * i}');
  }

  // Q6: Print numbers > 5
  List<int> list = [1, 6, 3, 8, 4, 9];
  print('nQ6: Numbers > 5:');
  for (var number in list) {
    if (number > 5) {
      print(number);
    }
  }

  // Q7: Count vowels in a string
  String text = "Hello World";
  int vowelCount = 0;
  for (int i = 0; i < text.length; i++) {
    String ch = text[i].toLowerCase();
    if ('aeiou'.contains(ch)) vowelCount++;
  }
  print('nQ7: Vowel count in "$text": $vowelCount');

  // Q8: Count number of digits using while loop
  int number = 123456;
  int count = 0;
  int temp = number;
  while (temp != 0) {
    temp ~/= 10;
    count++;
  }
  print('nQ8: Number of digits in $number: $count');

  // Q9: Generate random password of given length
  int length = 8;
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  String password = '';
  Random rand = Random();
  while (password.length < length) {
    password += chars[rand.nextInt(chars.length)];
  }
  print('nQ9: Random password: $password');

  // Q10: Check if string is empty
  String str = "";
  print('nQ10: String is ${str.isEmpty ? "empty" : "not empty"}');
}
