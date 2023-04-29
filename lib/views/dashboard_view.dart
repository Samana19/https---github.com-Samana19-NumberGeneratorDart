import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dashboard')),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/number');
                  },
                  child: const Text("Number Generator"),
                ),
              ),
            ],
          )),
        ));
  }
}
