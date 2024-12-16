```dart
class MyClass {
  int? _myVariable;

  int get myVariable => _myVariable ?? 0; // Using ?? 0 to handle null

  set myVariable(int value) {
    if (value < 0) {
      throw Exception('Value cannot be negative'); // Throwing exception for negative value
    }
    _myVariable = value;
  }
}

void main() {
  final myObject = MyClass();
  print('Initial value: ${myObject.myVariable}'); // Accessing the getter

  myObject.myVariable = 10;
  print('After setting 10: ${myObject.myVariable}');

  try {
    myObject.myVariable = -5; // Trying to set a negative value to trigger exception
  } catch (e) {
    print('Exception caught: $e');
  }
}
```