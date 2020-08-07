import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF175B26),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Family Members'),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
        body: FamilyMemberList(),
      ),
    );
  }
}

class ChatUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SearchBox(),
          ChatList(),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFF3F3F3),
      ),
      margin: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 14),
          hintText: 'Search General Physician, Physician, etc..',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        ChatListTile(
          img:
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
          name: 'Ritwik Ranjan',
          lastMessage: 'Hii How are you?',
          time: '10:00AM',
        ),
        ChatListTile(
          img:
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
          name: 'Ritwik Ranjan',
          lastMessage: 'Hii How are you?',
          time: '10:00AM',
        ),
        ChatListTile(
          img:
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
          name: 'Ritwik Ranjan',
          lastMessage: 'Hii How are you?',
          time: '10:00AM',
        )
      ],
    );
  }
}

class ChatListTile extends StatelessWidget {
  final String img, name, lastMessage, time;

  const ChatListTile(
      {Key key,
      @required this.img,
      @required this.name,
      @required this.lastMessage,
      @required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2, bottom: 4),
      child: Card(
        elevation: 0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(img),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey.shade700,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        lastMessage,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade300,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        time,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blueGrey.shade600,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FamilyMemberList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FamilyMemberTile(
          name: 'Ritwik Ranjan',
          img:
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
        ),
      ],
    );
  }
}

class FamilyMemberTile extends StatelessWidget {
  final String img, name;

  const FamilyMemberTile({Key key, @required this.img, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(img),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey.shade700,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
