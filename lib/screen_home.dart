import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final _diet = ["Break Fast", "Lunch", "Snaks", "Dinner"];
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Finance",
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  '____________________________________________________________________________________________________',
                  style: TextStyle(fontSize: 8),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Balence :",
                            style: TextStyle(color: Colors.red, fontSize: 40),
                          ),
                          Text("20000",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 40)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(0)),
              child: Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: Text(
                  'Diet Today',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => Padding(
                        padding: EdgeInsets.only(
                            bottom: 150, left: 10, right: 10, top: 10),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Container(
                                    width: 150,
                                    child: Text(
                                      _diet[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text('Item'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text('Carbohydrate'),
                                              Text('')
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text('Carbohydrate'),
                                              Text('')
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Row(
                                            children: [
                                              Text('Carbohydrate'),
                                              Text('')
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  separatorBuilder: (ctx, index) {
                    return Divider();
                  },
                  itemCount: 4),
            )
          ],
        ),
      )),
    );
  }
}
