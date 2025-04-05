void main() {
  LoanProcessingSystem system = LoanProcessingSystem();
  Loan personalLoan = PersonalLoan("Ahmed", 100000);
  Loan homeLoan = HomeLoan("Sameh", 600000, 0.08);
  Loan carLoan = CarLoan("Elsayed", 40000, 0.07);
  system.applyLoan(personalLoan);
  system.applyLoan(homeLoan);
  system.applyLoan(carLoan);
  system.calculateInstallments(12);
}

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;
  Loan(this.borrowerName, this.loanAmount, this.interestRate);
  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount, 0.10);
  @override
  double calculateMonthlyInstallment(int months) {
    double totalWithInterest = loanAmount * (1 + interestRate);
    return totalWithInterest / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount, double interestRate)
    : super(borrowerName, loanAmount, interestRate);
  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount > 500000) {
      interestRate = 0.095;
    } else {
      interestRate = 0.08;
    }
    double totalWithInterest = loanAmount * (1 + interestRate);
    return totalWithInterest / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount, double interestRate)
    : super(borrowerName, loanAmount, interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount > 50000) {
      interestRate = 0.09;
    } else {
      interestRate = 0.07;
    }
    double totalWithInterest = loanAmount * (1 + interestRate);
    return totalWithInterest / months;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];
  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print('Monthly installment: $installment');
    }
  }
}
