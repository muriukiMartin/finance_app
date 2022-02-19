import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (cxt, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  )),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'KES ${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.deepPurple),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.red),
                    ),
                    Text(DateFormat('EEEE, d MMMM, yyyy').format(transactions[index].date),
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey)),
                  ],
                ),
              ],
            ),
          ); 
        },
        itemCount: transactions.length,
        
      ),
    );
  }
}