import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_algorizatask2/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback ;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle ;

    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Text(
              'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrangeAccent[100],
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
           const SizedBox(
             height: 20,
           ),
             TextField(
             autofocus: true,
             textAlign: TextAlign.center,
              onChanged: (newText){
               newTaskTitle = newText ;
              },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (){
                Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: const Text(
                  'Add',
              ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              primary: Colors.white,
            ),
          ),
        ],
      ) ,
    );
  }
}
