import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm(this.addTx, {Key? key}) : super(key: key);

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final amountFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            onSubmitted: (_) {
              FocusScope.of(context).requestFocus(amountFocusNode);
            },
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Amount',
            ),
            keyboardType: TextInputType.number,
            focusNode: amountFocusNode,
            controller: amountController,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              addTx(
                titleController.text,
                double.parse(amountController.text),
              );
              Navigator.of(context).pop();
            },
            child: const Text('Add Transaction'),
          ),
        ],
      ),
    );
  }
}
