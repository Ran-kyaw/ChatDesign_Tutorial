import 'package:design/Pages/favorite_Contacts.dart';
import 'package:design/Pages/recent_chats.dart';
import 'package:design/models/message_model.dart';
import 'package:design/utils/app_theme.dart';
import 'package:design/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../my_widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.mainColor,
      appBar: AppBar(
        leading: IconButton(
            iconSize: Dimenssions.iconSize,
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.menu)),
        title: Text(
          "Chats",
          style: AppTheme.headText,
        ),
        elevation: 0.2,
        actions: <Widget>[
          IconButton(
              iconSize: Dimenssions.iconSize,
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.search))
        ],
      ),

      ///=> start body
      body: Column(
        children: <Widget>[
          //start category selector my widget
          CategorySelector(),
          //start imagecontainer
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppTheme.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),

              //start favorite contacts
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),

                  //recentChats
                  RecentChats()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
