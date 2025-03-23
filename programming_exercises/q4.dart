void main() {
  int start = 10;
  int end = 50;
  print(
    "Prime numbers between $start and $end: ${findPrimesInRange(start, end)}",
  );
}

List<int> findPrimesInRange(int start, int end) {
  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }

  List<int> primeNumbers = [];

  for (int num = start; num <= end; num++) {
    if (isPrime(num)) {
      primeNumbers.add(num);
    }
  }

  return primeNumbers;
}

bool isPrime(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
