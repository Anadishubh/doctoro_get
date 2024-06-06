class Transaction {
  final String title;
  final double amount;
  final DateTime date;
  final bool isDebit;

  Transaction({
    required this.title,
    required this.amount,
    required this.date,
    required this.isDebit,
  });
}