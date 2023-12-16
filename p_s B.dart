import 'dart:io';

void main() {
  print("Enter a number:");
  int? x = int.tryParse(stdin.readLineSync() ?? '');

  if (x != null && x % 2 == 0) {
    print("yes");
  } else {
    print("No");
  }
}
