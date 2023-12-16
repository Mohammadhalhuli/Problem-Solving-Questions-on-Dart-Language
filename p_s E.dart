import 'dart:io';

void main() {
  print("Enter the number of rooms:");
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  
  if (n == null || n < 1 || n > 100) {
    print("Invalid input. Please enter a valid number of rooms.");
    return;
  }

  int suitableRooms = 0;
  for (int i = 0; i < n; i++) {
    print("Enter the current and total capacity for room ${i + 1} (separated by space):");
    List<String> room = stdin.readLineSync()?.split(' ') ?? [];
    
    if (room.length != 2) {
      print("Invalid input. Please enter two numbers.");
      continue;
    }

    int? pi = int.tryParse(room[0]);
    int? qi = int.tryParse(room[1]);

    if (pi == null || qi == null || pi < 0 || qi < pi || qi > 100) {
      print("Invalid room data. Skipping room ${i + 1}.");
      continue;
    }

    if (qi - pi >= 2) {
      suitableRooms++;
    }
  }

  print("Number of suitable rooms: $suitableRooms");
}
