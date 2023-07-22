import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final ScrollController controller;
  const HomeScreen({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(249, 190, 124, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2.0,
                    blurRadius: 5.0,
                    offset: Offset(0, 3))
              ]),
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://scontent.fpnh24-1.fna.fbcdn.net/v/t39.30808-6/355710405_1518082212270933_263845053053196095_n.jpg?_nc_cat=106&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGF47l8PA71jOgx1L6MFGhezEyddWOx8M_MTJ11Y7Hwz9cXk4Vl0WMQmn3AhWKMr6QacYcwgmc8RHxe25SLeaG6&_nc_ohc=z3XxxrVFgPMAX8Kbgd-&_nc_ht=scontent.fpnh24-1.fna&oh=00_AfC0eJRe_uTZjt3QjCRf1vKYwvuSxjfcwXgTAGJKxFI0QQ&oe=64BDD90C'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Ma veasna',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('Server Engineer'),
                )
              ],
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'My Tasks',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(35, 153, 149, 1),
                  child: Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10.0),
            children: const [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.timelapse,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'To Do',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                        Text('5 tasks, now started 1')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(249, 188, 128, 1),
                    child: Icon(
                      Icons.timelapse,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'In Progress',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                        Text('1 task. now 1 started')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(101, 136, 225, 1),
                    child: Icon(
                      Icons.timelapse,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Potatos'),
                        Text('18 tasks now. 5 tasks started')
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const Column(
          children: [
            Text('Active Projects'),
          ],
        )
      ],
    );
  }
}
