
import 'package:design/utils/app_theme.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../utils/dimensions.dart';
import 'chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimenssions.paddingBody),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
              Text("Favorite Contacts",style: AppTheme.favoriteText,),
              IconButton(
                onPressed: (){},
                 icon: const Icon(Icons.more_horiz),
                  iconSize: Dimenssions.iconSize,
                 )
             ],
          ),
        ),

        //container
        Container(
          height: Dimenssions.smContainer,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: Dimenssions.mainPadding),
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen(
                      user: favorites[index],
                    ))),
                child: Padding(
                  padding:EdgeInsets.all(Dimenssions.mainPadding),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage("${favorites[index].imageUrl}"),
                      ),
                      SizedBox(height: 2,),
                
                      Text("${favorites[index].name}",style: AppTheme.normalText,),
                    ],
                  ),
                ),
              );
            }),
        )
      ],
    );
  }
}