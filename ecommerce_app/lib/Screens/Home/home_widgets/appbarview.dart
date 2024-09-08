import 'package:flutter/material.dart';

class Appbarview extends StatelessWidget implements PreferredSizeWidget {
  const Appbarview({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      title: Row(
        children: [
          const Text("Hi!"),
          const Spacer(),
          ClipOval(
            child: IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Add your notification action here
              },
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 40,
                width: 250,
                child: TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    labelText: 'Search',
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const Spacer(), // Space between search bar and filter icon
              ClipOval(
                child: IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // Add your filter action here
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(100); // Adjust height for AppBar + Search
}
