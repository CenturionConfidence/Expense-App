import 'package:flutter/material.dart';
import './models.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem(this.transaction, {Key? key}) : super(key: key);

  final List<Transaction> transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: ((context, index) => Card(
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(
                    '\$${transaction[index].amount.toString()}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                title: Text(transaction[index].title),
                subtitle: Text(transaction[index].date.toString()),
              ),
            )),
        itemCount: transaction.length,
      ),
    );
  }
}
