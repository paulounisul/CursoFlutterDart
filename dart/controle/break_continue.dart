main() {
  for (int a = 0; a < 10; a++) {
    print(a);
    if (a == 6) {
      break;
    }
  }

  print("Depois do laço For...1");

  for (int a = 0; a < 10; a++) {
    if (a % 2 == 0) {
      continue; //mesmo que loop do xharbour.
    }
    print(a);
  }

  print("Depois do laço For..2");
}
