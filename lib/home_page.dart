import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  Future showAlertDialog(String msg) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Entered Name'),
          content: Text('Hello $msg!'),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  int count = 0;
  @override
  void initState() {
    super.initState();
    _nameController.addListener(
      () {
        setState(() {
          count = _nameController.text.length;
        });
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field Widget In Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Enter Your Name',
                labelText: 'Full Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: () {
                    _nameController.clear();
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Character Count: $count'),
            const SizedBox(height: 16),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    final name = _nameController.text;
                    if (name.isNotEmpty) {
                      showAlertDialog(name);
                    }
                  },
                  child: const Text('Read Text'),
                ),
                FilledButton(
                  onPressed: () {
                    _nameController.text = 'Mahesh Kulkarni';
                  },
                  child: const Text('Set Text'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
