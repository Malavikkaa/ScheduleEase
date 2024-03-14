import 'package:flutter/material.dart';

class SheduleHealth extends StatelessWidget {
  const SheduleHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HealthHome(),
    );
  }
}

class HealthHome extends StatelessWidget {
  const HealthHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) => ListView.separated(
                      itemCount: 4,
                      itemBuilder: (context, intex) {
                        return Container(
                          child: Text('HI'),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                    )),
                separatorBuilder: (ctx, index) {
                  return Divider();
                },
                itemCount: 7),
          ),
        ],
      ),
    );
  }
}
