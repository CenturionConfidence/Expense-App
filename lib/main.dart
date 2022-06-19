import 'package:expense_app/user_transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          secondary: Colors.purple,
        ),
      ),
      home: const ExpenseApp(),
    );
  }
}

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blueAccent,
                child: Text('Chart'),
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
