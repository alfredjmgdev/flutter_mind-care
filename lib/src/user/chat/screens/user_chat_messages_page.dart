import 'package:flutter/material.dart';
import '../../home/shared/widgets/custom_bottom_nav_bar.dart';
import '../widgets/chat_tab_bar.dart';
import '../widgets/chat_list_item.dart';

class UserChatMessagesPage extends StatelessWidget {
  const UserChatMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const ChatTabBar(),
          Expanded(
            child: ListView.builder(
              itemCount: 3, // Replace with actual data length
              itemBuilder: (context, index) {
                return const ChatListItem();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 1),
    );
  }
}
