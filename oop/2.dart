class BankAccount {
  int _accountNumber;
  double _balance = 0;

  BankAccount(this._accountNumber);

  int getAccountNumber() => _accountNumber;

  void setAccountNumber(int accountNumber) => _accountNumber = accountNumber;

  set setBalance(double balance) => _balance = balance;

  void deposit(double amount) => amount > 0
      ? this._balance += amount
      : throw 'Нельзя вносить суммы меньше 0.';

  void withdraw(double amount) => amount > 0 && amount <= _balance
      ? this._balance += amount
      : throw 'Сумма должна быть больше 0 и не превышать $_balance.';

  double getBalance() => _balance;
}

void main() {
  final account = BankAccount(123);
  print('Balance of account is ${account.getBalance()}');

  account.deposit(567);
  print('Balance of account is ${account.getBalance()}');

  account.withdraw(1000);
  print('Balance of account is ${account.getBalance()}');
}
