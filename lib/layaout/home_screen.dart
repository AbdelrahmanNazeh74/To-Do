import 'package:flutter/material.dart';
import 'package:to_do/modules/archived-tasks/archived_tasks_screen.dart';
import 'package:to_do/modules/done-tasks/done_tasks_screen.dart';
import 'package:to_do/modules/new-tasks/new_tasks_screen.dart';

class HomeScreen extends StatefulWidget {
static String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex =0;
List<Widget> screen=[
  NewTasksScreen(),
  DoneTasksScreen(),
  ArchivedTasksScreen()
];
List<String> titles =[
  'New Tasks',
  'Done Tasks',
  'Archived Tasks'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(titles[currentIndex]),
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
       ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
                    setState(() {
                        currentIndex=index;
                    });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu) ,
            label: 'Tasks'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archived'
            ),
        ],
        ),
      body: screen[currentIndex],

    );
  }
}