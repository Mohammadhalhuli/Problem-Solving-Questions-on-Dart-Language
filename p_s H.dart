import 'dart:io';

void main() {
  print("Enter the number of friends:");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null || n < 1 || n > 100) {
    print("Invalid input. Please enter a valid number of friends.");
    return;
  }

  print("Enter the friend numbers who gave the gifts, separated by spaces:");
  List<String> gifts = stdin.readLineSync()?.split(' ') ?? [];
  if (gifts.length != n) {
    print("Invalid input. Please enter $n numbers.");
    return;
  }

  List<int> friendsWhoGaveGifts = List.generate(n, (i) => 0);

  for (int i = 0; i < n; i++) {
    int? friendNumber = int.tryParse(gifts[i]);
    if (friendNumber == null || friendNumber < 1 || friendNumber > n) {
      print("Invalid friend number. Skipping entry.");
      continue;
    }

    friendsWhoGaveGifts[friendNumber - 1] = i + 1;
  }

  String result = friendsWhoGaveGifts.join(' ');
  print("Friends who received gifts from the corresponding friends:");
  print(result);
}
