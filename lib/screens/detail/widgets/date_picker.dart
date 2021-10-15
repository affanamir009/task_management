import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weeklist = ['Sun', 'Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat'];
  final daylist = ['10 ', '11', '12', '13', '14', '15', '16'];
  var selected = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
        GestureDetector(
          onTap: () => setState(() => selected = index),
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? Colors.grey.withOpacity(0.1) : null ,
            ),
            child: Column(
              children: [
               Text(weeklist[index],
               style: TextStyle(
                 color: selected ==   index ? Colors.black : Colors.grey
               ),),
               SizedBox(height: 5),
               Text(daylist[index],
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.bold,
                 color: selected ==   index ? Colors.black : Colors.grey
               ),
               )
              ],
            ),
          ),
        ),
       separatorBuilder: (_ , index) => SizedBox(width: 5),
        itemCount: weeklist.length),
    );
  }
}
