import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: const Icon(Icons.person),
      ),
      title: const Text(
        'Dr. Marcus Horizon',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'I don\'t have any fever, but headache...',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('10:24', style: TextStyle(color: Colors.grey)),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
            child: const Text(
              '1',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
