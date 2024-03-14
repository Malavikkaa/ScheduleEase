import 'package:flutter/material.dart';
import 'package:shedule_ease1/finance.dart';
import 'package:shedule_ease1/helth.dart';
import 'package:shedule_ease1/profile.dart';
import 'package:shedule_ease1/screen_home.dart';
import 'package:shedule_ease1/settings.dart';
import 'package:shedule_ease1/todo.dart';

class SheduleHome extends StatefulWidget {
  SheduleHome({super.key});

  @override
  State<SheduleHome> createState() => _SheduleHomeState();
}

class _SheduleHomeState extends State<SheduleHome> {
  int _currentSelectedIndex = 0;

  var _list = [
    [ScreenHome()],
    [SheduleHealth()],
    [SheduleFinance()],
    [SheduleToDo()]
  ];
  List<int> _list1 = [0, 0, 0, 0];
  @override
  Widget build(BuildContext context) {
    var _id = 0;
    return Scaffold(
        appBar: AppBar(
          title: Text('SheduleEase'),
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 9, 53, 121),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            currentIndex: _currentSelectedIndex,
            onTap: (newIndex) {
              setState(() {
                _currentSelectedIndex = newIndex;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety),
                label: 'Health',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.money),
                label: 'Finance',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'ToDo',
              ),
            ]),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 127,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text("SheduleEase"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  setState(() {
                    if (_id != 4) {
                      Navigator.pop(context);
                      _list[_currentSelectedIndex].add(Profile());

                      _list1[_currentSelectedIndex] =
                          _list1[_currentSelectedIndex] + 1;
                      _id = 4;
                    }
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  if (_id != 5) {
                    setState(() {
                      _list[_currentSelectedIndex].add(Settings());
                      _list1[_currentSelectedIndex] =
                          _list1[_currentSelectedIndex] + 1;
                      _id = 5;
                    });
                    Navigator.pop(context);
                  }
                },
              )
            ],
          ),
        ),
        body: _list[_currentSelectedIndex][_list1[_currentSelectedIndex]]);
  }
}
