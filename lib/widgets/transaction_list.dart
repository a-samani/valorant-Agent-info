import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quiz_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  const TransactionList(
      {Key? key, required this.transactions, required this.deleteTx})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 420,
        child: transactions.isEmpty
            ? Column(
                children: [
                  const Text('no transactions yet'),
                  SizedBox(
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                    height: 400,
                  )
                ],
              )
            : ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 6,
                    margin: const EdgeInsets.all(5),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: FittedBox(
                            child: Text(
                              '\$${transactions[index].amount}',
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        backgroundColor: Colors.grey,
                        radius: 30,
                      ),
                      title: Text(
                        transactions[index].title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      subtitle: Text(
                        DateFormat('yMMMd').format(transactions[index].date),
                        style: const TextStyle(color: Colors.grey),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.black,
                        ),
                        onPressed: () => deleteTx(transactions[index].id),
                      ),
                    ),
                  );
                },
              ));
  }
}
