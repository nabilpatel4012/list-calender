import 'package:flutter/material.dart';
import 'package:quiver/time.dart';
import 'package:list_calendar/days.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.separated(
      itemCount: 12,
      separatorBuilder: (BuildContext context, int index) => Divider(
        color: Colors.black,
      ),
      itemBuilder: (_, index) {
        return ListTile(
          title:
              Text(months.elementAt(index++), style: TextStyle(fontSize: 30)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Days(daysInMonth(2022, index))),
            );
          },
        );
      },
    );
  }
}
