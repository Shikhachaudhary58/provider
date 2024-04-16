import 'package:flutter/material.dart';
import 'package:flutter_project1/provider/sub_provider.dart';
import 'package:provider/provider.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Consumer<SubjectProvider>(
        builder: (context, subjectProvider, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Subject is: ${subjectProvider.subject.name}', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple
                  ),
                  child: Text('Next Screen',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

