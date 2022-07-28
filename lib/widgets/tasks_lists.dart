import 'package:flutter/material.dart';
import 'package:todoapp_algorizatask2/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_algorizatask2/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData , child) {
        return  ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context , index){
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkboxChange : (bool? newValue){
                  taskData.updateTask(taskData.tasks[index]);
                },
              listTileDelete: (){
                  taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
