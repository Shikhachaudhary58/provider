import 'package:flutter/material.dart';
import 'package:flutter_project1/provider/sub_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Enter subject'),
              ),
            ),
            SizedBox(height: 20,),
            Consumer<SubjectProvider>(
              builder: (context, subjectProvider, _) {
                return ElevatedButton(
                  onPressed: () {
                    subjectProvider.updateSubject(_controller.text);
                    // Pass the updated subject text back to the first screen
                    Navigator.pop(context, _controller.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple
                  ),
                  child: Text('Submit', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
