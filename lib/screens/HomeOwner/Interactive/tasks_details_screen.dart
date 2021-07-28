import 'package:flutter/material.dart';
import 'package:fyp/constants.dart';

enum Button {
  pastPressed,
  scheduledPressed,
}

class TaskDetailsScreen extends StatefulWidget {
  static const String id = 'task_details_screen';

  @override
  _TaskDetailsScreenState createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  Button selectedButton;
  bool displayContent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: Text('YOUR REQUEST'),
        bottom: PreferredSize(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      selectedButton = Button.pastPressed;
                      displayContent = false;
                    });
                  },
                  color: selectedButton == Button.pastPressed
                      ? kTaskDetailScreenButtonColorSelected
                      : kTaskDetailScreenButtonColor,
                  child: Text(
                    'Past',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: selectedButton == Button.scheduledPressed
                          ? Colors.white
                          : Color(0xFF5145C1),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    setState(() {
                      selectedButton = Button.scheduledPressed;
                      displayContent = true;
                    });
                  },
                  color: selectedButton == Button.scheduledPressed
                      ? kTaskDetailScreenButtonColorSelected
                      : kTaskDetailScreenButtonColor,
                  child: Text(
                    'Scheduled',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: selectedButton == Button.scheduledPressed
                          ? Color(0xFF5145C1)
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
      ),
      body: Container(
        child: Center(
          child: displayContent
              ? Text('No scheduled tasks are available')
              : Text('No previous tasks are available'),
        ),
      ),
    );
  }
}
