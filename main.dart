
void main() {
  // ==========================================
  // PRACTICAL LAB 1: DART BASICS
  // ==========================================

  print("========== LAB 1: DART BASICS ==========");

  String studentName = "Ahmad";
  int age = 22;
  int semester = 5;
  double gpa = 3.65;
  bool active = true;

  print("Name: $studentName");
  print("Age: $age");
  print("Semester: $semester");
  print("GPA: $gpa");
  print("Active: $active");

  // Type inference using var
  var university = "Kabul University"; // String
  var creditHours = 18;                // int

  print("University: $university");
  print("Credit Hours: $creditHours");

  // Arithmetic operations
  print("Addition: ${age + semester}");
  print("Subtraction: ${age - semester}");
  print("Multiplication: ${semester * 2}");
  print("Division: ${gpa / 2}");

  // Comparison operators
  print(age > 18);
  print(gpa >= 3.0);

  // Logical operators
  print(age > 18 && active == true);
  print(age < 18 || active == true);

  // ==========================================
  // PRACTICAL LAB 2: CONDITIONS AND LOOPS
  // ==========================================

  print("\n========== LAB 2: CONDITIONS AND LOOPS ==========");

  int mark = 78;

  if (mark >= 50) {
    print("Result: Pass");
  } else {
    print("Result: Fail");
  }

  // Letter grade
  if (mark >= 90) {
    print("Grade: A");
  } else if (mark >= 80) {
    print("Grade: B");
  } else if (mark >= 70) {
    print("Grade: C");
  } else if (mark >= 60) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }

  // Print numbers 1–20
  for (int i = 1; i <= 20; i++) {
    print(i);
  }

  // Print even numbers
  print("Even numbers:");
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // While loop
  print("While loop:");
  int count = 1;

  while (count <= 5) {
    print(count);
    count++;
  }

  // Ternary operator
  String status = mark >= 50 ? "Passed" : "Failed";
  print("Student Status: $status");

  // ==========================================
  // PRACTICAL LAB 3: LISTS
  // ==========================================

  print("\n========== LAB 3: LISTS ==========");

  List<String> courses = [
    "Dart",
    "Flutter",
    "Database",
    "Programming",
    "Networking"
  ];

  print("First Course: ${courses.first}");
  print("Last Course: ${courses.last}");

  // Add a course
  courses.add("Software Engineering");

  // Remove a course
  courses.remove("Networking");

  // Check whether Flutter exists
  print("Contains Flutter: ${courses.contains("Flutter")}");

  // Iterate through courses
  print("All Courses:");
  for (String course in courses) {
    print(course);
  }

  // Marks and average
  List<int> marks = [85, 90, 75, 80, 95];

  int total = 0;

  for (int mark in marks) {
    total += mark;
  }

  double average = total / marks.length;

  print("Total Marks: $total");
  print("Average Marks: $average");

  // ==========================================
  // PRACTICAL LAB 4: CLASSES AND CONSTRUCTORS
  // ==========================================

  print("\n========== LAB 4: CLASSES AND CONSTRUCTORS ==========");

  List<Student> students = [
    Student("Ahmad", "Computer Science", 5),
    Student("Sara", "Software Engineering", 4),
    Student("Ali", "Information Technology", 6),
  ];

  for (Student student in students) {
    student.displayInfo();
  }
}

// Student class
class Student {
  String name;
  String department;
  int semester;

  // Constructor
  Student(this.name, this.department, this.semester);

  // Method
  void displayInfo() {
    print("--------------------");
    print("Name: $name");
    print("Department: $department");
    print("Semester: $semester");
  }
}
