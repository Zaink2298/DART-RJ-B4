void main() {
  //Q.1: Create a list of names and print all names using list.
  List teachernames = ["Miss Farzana", " Miss Rakhshanda", "Sir Jamil", "Sir Yousuf"];
  print(teachernames);

  //  Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
  List<String> days = [];
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
   print(days);

   //Q.3: Create a list of Days and remove one by one from the end of list.
  List Days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
   print("Actual list $Days");

  for (int i = Days.length - 1; i >= 0; i++) {
    Days.removeLast();
    print(Days);
    if (Days.isEmpty) {
      print("List is Empty");
      break;}
  }
  //Q4: Smallest and greatest number
  List<int> nums = [5, 3, 10, 2, 45, 7];
  nums.sort();
  print('Smallest: ${nums.first}, Greatest: ${nums.last}');
   
  //Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  
  Map<String, String> contacts = {'name': 'Zain', 'phone': '1234', 'home': '5678'};
  var filteredKeys = contacts.keys.where((key) => key.length == 4);
  print('Keys with length 4: $filteredKeys');

/*Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity, currency and language to it. by using any country key print all the value of Capital & Currency.
 */
  Map<String, Map<String, String>> world = {
    'Pakistan': {
      'capitalCity': 'Islamabad',
      'currency': 'PKR',
      'language': 'Urdu'
    },
    'USA': {
      'capitalCity': 'Washington',
      'currency': 'USD',
      'language': 'English'
    }
  };
  print('Pakistan Capital: ${world['Pakistan']?['capitalCity']}, Currency: ${world['Pakistan']?['currency']}');
     /*Q.7:
Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
}; */

List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];
  usersEligibility.removeWhere((user) => user['eligible'] == false);
  print('Eligible Users: $usersEligibility'); 

    // Q9: Max value from list
  List<int> list = [10, 22, 34, 5, 67];
  int max = list.reduce((a, b) => a > b ? a : b);
  print('Max value: $max');
   
   //Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
  List<String> listsss = ['Mango', 'Cherry', 'Mango', 'orange', 'Cherry'];
  List<String> uniqueList = listsss.toSet().toList();
  print(uniqueList);
   /*Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
 */
  List<int> numbers = [1, 2, 3, 4, 5];
  int n = 3;
  List<int> firstN = numbers.sublist(0, n);
  print('First $n elements:$firstN');
  /*Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.
 */
  List<String> originalList = ["mango", "banana", "cherry"];
  List<String> reversedList = originalList.reversed.toList();
  print(reversedList);
   // Q13: Unique elements
  List<int> withDuplicates = [1, 2, 2, 3, 4, 4, 5];
  List<int> unique = [];
  for (var e in withDuplicates) {
   if (!unique.contains(e)) unique.add(e);}
   print('Unique elements: $unique');
   //Q14: Sorted ascending
  List<int> unsorted = [5, 1, 4, 2, 3];
  List<int> sorted = List.from(unsorted)..sort();
  print('Sorted list:$sorted');
 
  // Q15: Filter positive
  List<int> numbersList = [-5, 3, -2, 7, -1, 4];
  var positives = numbersList.where((n) => n > 0);
  print('Positive numbers: $positives');
  // Q16: Filter even
  var evens = numbersList.where((n) => n % 2 == 0);
  print('Even numbers: $evens');
  // Q17: Square values
  List<int> values = [1, 2, 3, 4];
  var squared = values.map((e) => e * e);
  print('Squared values: $squared');
  // Q18: Check student eligibility
  Map<String, dynamic> person = {'name': 'John', 'age': 25, 'isStudent': true};
  if (person['isStudent'] == true && person['age'] > 18) {
    print('Eligible');
  } else {
    print('Not eligible');
  }

}