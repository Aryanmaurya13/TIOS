import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatapp/models/chatuser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screens/ChatScreen.dart';
import 'Dialogs/profile_dialog.dart';

class ChatUserCard extends StatefulWidget {
  final ChatUser users;
  const ChatUserCard({super.key, required this.users});

  @override
  State<ChatUserCard> createState() => _ChatUserCardState();
}

class _ChatUserCardState extends State<ChatUserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width* 0.04,vertical: 8),
      color: Colors.blue.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: InkWell(
          onTap: (){
            Get.to(()=>ChatScreen(user: widget.users,));
          },
          child: ListTile(
            leading: InkWell(
              onTap: (){
                showDialog(context: context,builder: (_)=> ProfileDialog(user: widget.users,));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*.3),
                child: CachedNetworkImage(
                  width: MediaQuery.of(context).size.height*.055,
                  height: MediaQuery.of(context).size.height*.055,
                  imageUrl: widget.users.image,
                  // placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>  CircleAvatar(child: Icon(CupertinoIcons.person,color: Colors.blue,),backgroundColor: Colors.blue.shade100,),
                
                ),
              ),
            ),
            title: Text(widget.users.name,),
            subtitle: Text(widget.users.about,maxLines: 1,),
            trailing: Container(width: 15,height: 15,decoration: BoxDecoration(color: Colors.green,
            borderRadius: BorderRadius.circular(10)
            ))
            //Text(widget.users.lastActive,style: TextStyle(color: Colors.black54),),
          )),
    );
  }
}
