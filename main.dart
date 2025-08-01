
void main() {
  /*Q.1) Create a list of names and print all names using list. */
  List names = ["Ali", "Zain", "Ayesha", "Sara", "Usman"];
  print(names);
   /*Q. 2) Create a list of Days and print only  Sunday */
   List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  print(days.last);
  /*Q. 3)  create a list  of name, class, roll no, grade, percentage. And print. */
  List Student = ['Zain', '10th', 25, 'A+', 92.5];
  print("Name: ${Student[0]}");
  print("Class: ${Student[1]}");
  print("Roll No: ${Student[2]}");
  print("Grade: ${Student[3]}");
  print("Percentage: ${Student[4]}");
  /* Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.*/
  List<int> numbers = [23, 5, 78, 1, 90, 13];
  numbers.sort();
  print('Smallest: ${numbers.first}');
  print('Greatest: ${numbers.last}');
  /* Q.5: Given a list of integers, write a dart code that returns the maximum value from the list. */
  List<int> nums = [34, 67, 23, 89, 12];
  int maxValue = nums.reduce((a, b) => a > b ? a : b);
  print('Maximum value: $maxValue');
  /*Q.6: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain 
unchanged. */
  List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange'];
  List<String> reversedFruits = fruits.reversed.toList();
  print('Original: $fruits');
  print('Reversed: $reversedFruits');
  /*Q.7: use 15 methods of Lists except retainwhere,removewhere. */
  List<String> stationery = ['pen', 'pencil', 'book', 'eraser', 'marker'];

  // 1. add
  stationery.add('sharpener');

  // 2. addAll
  stationery.addAll(['scale', 'ruler']);

  // 3. insert
  stationery.insert(2, 'highlighter');

  // 4. insertAll
  stationery.insertAll(4, ['tape', 'glue']);

  // 5. remove
  stationery.remove('pen');

  // 6. removeAt
  stationery.removeAt(0);

  // 7. removeLast
  stationery.removeLast();

  // 8. replaceRange
  stationery.replaceRange(0, 2, ['notebook', 'stapler']);

  // 9. length
  print('Length: ${stationery.length}');

  // 10. last item using index
  print('Last item using index: ${stationery[stationery.length - 1]}');

  // 11. first
  print('First item: ${stationery.first}');

  // 12. last
  print('Last item: ${stationery.last}');

  // 13. firstOrNull (safe access)
  print('First or Null: ${stationery.isNotEmpty ? stationery.first : null}');

  // 14. lastOrNull (safe access)
  print('Last or Null: ${stationery.isNotEmpty ? stationery.last : null}');

  // 15. reversed.toList()
  print('Reversed list: ${stationery.reversed.toList()}');

  // 16. isEmpty
  print('Is list empty? ${stationery.isEmpty}');

  // 17. isNotEmpty
  print('Is list not empty? ${stationery.isNotEmpty}');


}