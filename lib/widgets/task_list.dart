import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tille.dart';
import 'package:todo/services/task.dart';
import 'package:provider/provider.dart';
import 'package:todo/services/tasks_data.dart';
class TasksLists extends StatelessWidget {


    // void call(currentCheckBoxState, isChecked){
    //   setState(() {
    //     isChecked = currentCheckBoxState;
    //   });
    //
    // }
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          return GestureDetector(
            onLongPress: (){
              print('pressed');
              taskData.removeFromList(index);
            },
            child: TaskTile(
                tileTile: taskData.task[index].name.toString(),
                isChecked: taskData.task[index].isDone,
                callBack: (currentCheckBoxState){
                  taskData.updateTask(taskData.task[index]);

                }
            ),
          );

        },

          itemCount: taskData.taskCount,
        );
      }
    );

  }
}

