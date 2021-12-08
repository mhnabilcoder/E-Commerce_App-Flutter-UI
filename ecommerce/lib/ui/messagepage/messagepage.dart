import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                SafeArea(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Messages",style: TextStyle(fontSize: 25,color: Colors.black),),
                      ),
                      SizedBox(width: 2,),
                      Row(
                        children: [
                          Icon(Icons.cleaning_services_outlined),
                          Text("Mark all as read",style: TextStyle(color: Colors.black),),
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,right: 26.0,bottom: 8.0,left: 26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(child: Icon(Icons.chat),backgroundColor: Colors.green,),
                          Text("Chats"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(child: Icon(Icons.border_style_outlined),backgroundColor: Colors.blueAccent,),
                          Text("Orders"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(child: Icon(Icons.notifications_active_outlined),backgroundColor: Colors.orangeAccent,),
                          Text("Notifications"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(child: Icon(Icons.card_giftcard_outlined),backgroundColor: Colors.redAccent,),
                          Text("Promos"),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              height: 210,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),

            ),
          )
        ],
      ),
    );
  }
}
