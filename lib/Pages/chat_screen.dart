import 'package:design/models/message_model.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../utils/app_theme.dart';
import '../utils/dimensions.dart';

class ChatScreen extends StatefulWidget {
  final User? user;
  ChatScreen({this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.mainColor,
      appBar: AppBar(
        title: Text(
          "${widget.user!.name}",
          style: AppTheme.headText,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              iconSize: Dimenssions.iconSize,
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.more_horiz))
        ],
      ),
      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme.recentColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: Dimenssions.mdSize),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender!.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      },
                    ),
                  )),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
          color: isMe ? AppTheme.secondaryColor : AppTheme.darkColor,
          borderRadius: isMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  bottomRight: Radius.circular(15),
                )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${message.time}",
            style: AppTheme.normalText,
          ),
          SizedBox(
            height: Dimenssions.recentSizebox,
          ),
          Text(
            "${message.text}",
            style: AppTheme.normalText,
          ),
        ],
      ),
    );

    if (isMe) {
      return msg;
    }
    return Row(
      children: [
        msg,
        !isMe ? IconButton(
            iconSize: Dimenssions.iconSize,
            color: message.isLiked==true
            ? Colors.redAccent
            : Colors.blueGrey,
            onPressed: () {},
            icon: message.isLiked ==true
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
            ) : Text(""),
      ],
    );
  }

///
  //buildMessage
  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 60.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.photo)),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value) {},
            decoration: InputDecoration.collapsed(
              hintText: "Send a message...",
            ),
          )),
          IconButton(onPressed: () {}, icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
