void main() {
  //Q1
  Map car = {
    "brand": "toyota",
    "color": "red",
    "isSedan": true,
  };
  if (car["isSedan"] == true && car["color"] == "red") {
    print("match");
  } else {
    print("no match");
  }
  //Q2
  Map<String, dynamic> user = {
    "name": "ALI",
    "isAdmin": true,
    "isActive": true,
  };
  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("active admin");
  } else {
    print("not an active admin");
  }
  //Q3
  int number = 5;
  for (int i = 0; i <= 13; i++) {
    print("$number * $i = ${i * number}");
  }
  //Q4
  List<int> num1 = [1, 2, 3, 4, 5, 6, 100, 8, 9, 10];
  int largestNumber = num1.reduce((a, b) => a > b ? a : b);
  print("the lagest number of the list is $largestNumber");
}