import 'package:flutter/material.dart';
import 'package:todoapp_algorizatask2/models/task_data.dart';
import 'package:todoapp_algorizatask2/screens/add_task_screen.dart';
import 'package:todoapp_algorizatask2/widgets/tasks_lists.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                    child: AddTaskScreen((newTaskTitle){
//                      setState(() {
//                        tasks.add(Task(name: newTaskTitle));
//                        Navigator.pop(context);
//                      });
                    }),
                ),
              ),
          );
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ) ,
      backgroundColor: Colors.deepOrange[200],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ToDo List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
                '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

