import 'package:doctoro_get/Doctor%20pages/payment_model.dart';
import 'package:doctoro_get/constants/color_constants.dart';
import 'package:flutter/material.dart';

class DoctorPayment extends StatelessWidget {
  DoctorPayment({super.key});

  final List<Transaction> transactions = [
    Transaction(
      title: 'MR. Sukhvinder Suki',
      amount: 500.0,
      date: DateTime(2024, 4, 7, 11, 32),
      isDebit: true,
    ),
    Transaction(
      title: 'Payment Refunded',
      amount: 20.0,
      date: DateTime(2024, 4, 7, 11, 32),
      isDebit: false,
    ),
    Transaction(
      title: 'Mr. XYZ addon',
      amount: 70.0,
      date: DateTime(2024, 4, 7, 11, 32),
      isDebit: true,
    ),
    Transaction(
      title: 'Payment Refunded',
      amount: 1000.0,
      date: DateTime(2024, 4, 7, 11, 32),
      isDebit: false,
    ),
    Transaction(
      title: 'Payment Refunded',
      amount: 200.0,
      date: DateTime(2024, 4, 7, 11, 32),
      isDebit: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Padding(
          padding: EdgeInsets.only(right: 208.0),
          child: Text('My Wallet'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Material(
                elevation: 4,
                shadowColor: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20),
                child: const SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 70,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25.0),
                        child: Column(
                          children: [
                            Text(
                              'Current Balance',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            Text(
                              '₹ 500',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return TransactionTile(transaction: transaction);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final icon =
        transaction.isDebit ? Icons.arrow_upward : Icons.arrow_downward;
    final color = transaction.isDebit ? Colors.red : Colors.green;
    final amount = transaction.isDebit
        ? '- ₹ ${transaction.amount}'
        : '+ ₹ ${transaction.amount}';

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(transaction.title),
      subtitle: Text(transaction.date.toString()),
      trailing: Text(amount),
    );
  }
}
