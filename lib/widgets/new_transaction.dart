import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  const NewTransaction({Key? key, required this.addTx}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _submitTx() {
    widget.addTx(_titleController.text, double.parse(_amountController.text),
        _selectedDate);
    Navigator.of(context).pop();
  }

  DateTime _selectedDate = DateTime.now();
  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                controller: _titleController,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Amount'),
                controller: _amountController,
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Text(_selectedDate == null
                        ? 'no date chosen!'
                        : DateFormat.yMd().format(_selectedDate)),
                    TextButton(
                        onPressed: _presentDatePicker,
                        child: const Text(
                          'select a date',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(),
                onPressed: () {
                  if (_titleController.text.isNotEmpty &&
                      _amountController.text.isNotEmpty) {
                    _submitTx();
                  }
                },
                child: const Text('Add Transaction'),
              ),
            ],
          ),
        ));
  }
}
