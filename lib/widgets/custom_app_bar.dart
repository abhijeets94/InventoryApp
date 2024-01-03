import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("TEST APP"),
      centerTitle: true,
      automaticallyImplyLeading: true,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.table_restaurant))
      ],
    );
  }
}
