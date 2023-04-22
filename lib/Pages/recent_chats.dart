import 'package:design/Pages/chat_screen.dart';
import 'package:design/utils/dimensions.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../utils/app_theme.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: AppTheme.recentColor,
              ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chat = chats[index];
                  return GestureDetector(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen(
                      user:chat.sender,
                    ))),
                    child: Container(
                      margin: EdgeInsets.only(top: Dimenssions.recentSizebox,left: Dimenssions.recentSizebox,bottom: Dimenssions.recentSizebox),
                      padding: EdgeInsets.symmetric(horizontal: Dimenssions.recentSizebox, vertical: Dimenssions.recentSizebox),
                      decoration: BoxDecoration(
                        color:chat.unread! ? AppTheme.recentColor: AppTheme.secondaryColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage("${chat.sender!.imageUrl}"),
                              ),
                              SizedBox(width: Dimenssions.recentSizebox,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${chats[index].sender!.name}",style: AppTheme.normalText,),
                              
                                  //textcontaine
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.45,
                                    child: Text("${chat.text}",style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w600,
                                      overflow: TextOverflow.ellipsis
                                    ),),
                                  )
                                ],
                              ),
                            ],
                          ),
                              
                          Column(
                            children: [
                              Text("${chat.time}",
                              style: AppTheme.normalText,),
                  
                              SizedBox(height: Dimenssions.recentSizebox,),
                  
                              chat.unread! ? Container(
                                height: Dimenssions.screenHeight/41,
                                width: Dimenssions.screenWidth/10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(
                                  child: Text("New",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),),
                                )
                                ) : Text(""),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )),
    );
  }
}
