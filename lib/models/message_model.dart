
import 'package:design/models/user_model.dart';

class Message{
  final  User? sender;
  final String? time;

  final String? text;
  final bool? isLiked;
  final bool? unread;

  Message({
      this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread
  });
}
//users model
  //You - curren user
final User currentUser = User(
  id: 0,
  name: "Current User",
  imageUrl: 'assets/images/antony.png',
);

//USERS
final User ran= User(
  id: 1,
  name: "Ran",
  imageUrl: 'assets/images/antony2.png',
);
final User kyaw= User(
  id: 2,
  name: "Kyaw",
  imageUrl: 'assets/images/antony3.png',
);
final User linn= User(
  id: 3,
  name: "Linn",
  imageUrl: 'assets/images/antony.png',
);
final User antony= User(
  id: 4,
  name: "Antony",
  imageUrl: 'assets/images/Web capture_30-11-2022_18379_cn.bing.com.jpeg',
);
final User steven= User(
  id: 5,
  name: "Steven",
  imageUrl: 'assets/images/9b02f922-7b88-44ed-b468-51d0b1b1a366.jpg',
);
final User john= User(
  id: 6,
  name: "John",
  imageUrl: 'assets/images/antony-ajax.jpg',
);
final User oliva= User(
  id: 7,
  name: "Oliva",
  imageUrl: 'assets/images/antony4.png',
);
//Favorite Contacts
List<User> favorites = [ran,kyaw,linn,antony,steven, john,oliva];

//Example chats on home screen
List<Message> chats =[
   Message(
    sender:ran,
    time: "5:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: true
   ),
   Message(
     sender:kyaw,
     time: "4:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: false
   ),
    Message(
   sender:linn,
     time: "1:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: true
   ),Message(
  sender: antony,
    time: "5:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: true
   ),
   Message(
     sender:steven,
     time: "4:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: false
   ),
    Message(
     sender:john,
     time: "1:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: true
   ),
   Message(
    sender:oliva,
     time: "1:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: false,
    unread: true
   )
];

//EXAMPLE MESSAGE IN CHAT SCREEN
List<Message> messages = [
   Message(
    sender:ran,
    time: "5:30 PM",
    text: "Hey, how's it going? what did you do today?",
    isLiked: true,
    unread: true
   ),
   Message(
     sender:currentUser,
     time: "4:30 PM",
    text: "Just walked my doge. She was super duper cute.The best pupper!!",
    isLiked: true,
    unread: false
   ),
    Message(
   sender:ran,
     time: "1:30 PM",
    text: "How/'s the doggo",
    isLiked: false,
    unread: true
   ),Message(
  sender: ran,
    time: "5:30 PM",
    text: "All the food",
    isLiked: false,
    unread: true
   ),
   Message(
     sender:currentUser,
     time: "4:30 PM",
    text: "Nice! What kind of food did you eat?",
    isLiked: false,
    unread: false
   ),
    Message(
     sender:ran,
     time: "1:30 PM",
    text: "I ate so mush food today",
    isLiked: true,
    unread: false
   ),
   
];