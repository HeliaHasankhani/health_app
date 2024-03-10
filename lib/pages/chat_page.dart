import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black12,
              child: Center(
                child: Column(children: [     ChatBubble(
                clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 20),
                backGroundColor:Color.fromARGB(255, 161, 78, 209),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "سلام وقت بخیر ,چطور میتونم کمکتون کنم؟",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
                
                ChatBubble(
                  clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
                  backGroundColor: Color(0xffE7E7ED),
                  margin: EdgeInsets.only(top: 20),
                  child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: Text(
                "...سلام وقت بخیر",
                style: TextStyle(color: Colors.black),
              ),
                  ),
                ),],)
              ),
            ),
          ),
          TextField(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0,),
                   border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
              hintText: 'پیام جدید',
              fillColor: Colors.white,
              filled: true,
              hintStyle: TextStyle(
                color: Colors.black26,
                
              ),
            ),
          ),
        ],
      ),
    
      // body: Column(children: [
      // Expanded(
      //   child: Container(
      //     child: Column(
      //         children: [
      //           ChatBubble(
      //           clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
      //           alignment: Alignment.topRight,
      //           margin: EdgeInsets.only(top: 20),
      //           backGroundColor:Color.fromARGB(255, 161, 78, 209),
      //           child: Container(
      //             constraints: BoxConstraints(
      //               maxWidth: MediaQuery.of(context).size.width * 0.7,
      //             ),
      //             child: Text(
      //               "سلام وقت بخیر ,چطور میتونم کمکتون کنم؟",
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //         ),
                
      //           ChatBubble(
      //             clipper: ChatBubbleClipper1(type: BubbleType.receiverBubble),
      //             backGroundColor: Color(0xffE7E7ED),
      //             margin: EdgeInsets.only(top: 20),
      //             child: Container(
      //         constraints: BoxConstraints(
      //           maxWidth: MediaQuery.of(context).size.width * 0.7,
      //         ),
      //         child: Text(
      //           "...سلام وقت بخیر",
      //           style: TextStyle(color: Colors.black),
      //         ),
      //             ),
      //           ),
      //         TextField(
      //               decoration: InputDecoration(
      //                 contentPadding:
      //                     new EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      //                 hintText: '...',
      //                 fillColor: Colors.white,
      //                 filled: true,
      //                 hintStyle: TextStyle(
      //                   color: Colors.black26,
      //                 ),
      //               ),
      //             ),
      //         ],
      //       ),
      //   ),
      // ),
      // ]),
    );
  }
}