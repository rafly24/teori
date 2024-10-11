import 'package:flutter/material.dart';
import '../controllers/chat_controller.dart';

class ChatTile extends StatelessWidget {
  final ChatItem chatItem;

  const ChatTile({Key? key, required this.chatItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(chatItem.imageUrl),
        radius: 30,
      ),
      title: Text(chatItem.name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(
        chatItem.lastMessage,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(chatItem.time, style: TextStyle(color: Colors.grey)),
          if (chatItem.unreadCount > 0)
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text(
                chatItem.unreadCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}
