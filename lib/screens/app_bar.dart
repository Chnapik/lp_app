import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({required this.appBarTitle});

  String appBarTitle;
  // bool showLeading = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(appBarTitle),
      actions: [
        Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
            onPressed: () {
              context.go('/settings');
            },
          );
        }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
