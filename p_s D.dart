import 'dart:io';

void main() {
  print("Enter the weights of Limak and Bob:");
  List<String> inputs = stdin.readLineSync()?.split(' ') ?? [];
  if (inputs.length < 2) {
    print("Invalid input. Please enter two numbers.");
    return;
  }

  int? a = int.tryParse(inputs[0]);
  int? b = int.tryParse(inputs[1]);

  if (a == null || b == null || a > b) {
    print("Invalid input. Please enter two valid weights where a ≤ b.");
    return;
  }

  int years = 0;
  while (a <= b) {
    a *= 3;
    b *= 2;
    years++;
  }

  print("Limak will become strictly larger than Bob after $years years.");
}
