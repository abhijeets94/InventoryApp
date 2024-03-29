import 'package:flutter/material.dart';
import 'package:inventory/details_screen.dart';
import 'package:inventory/tables.dart';
import 'package:inventory/util/foods.dart';
import 'package:inventory/util/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "/homescreen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: const [
            DrawerHeader(
              child: Text(
                "Hi User,",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            DrawerMenuItems(
              title: "About Us",
            ),
            DrawerMenuItems(
              title: "Feedback",
            ),
            DrawerMenuItems(
              title: "Logout",
            ),
          ],
        ),
      ),
      appBar: CustomAppBar(
        title: const Text("TITLE"),
        centerTitle: true,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, TableScreen.routeName),
              icon: const Icon(Icons.table_restaurant))
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            childAspectRatio: 1,
          ),
          itemCount: foods.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.pushNamed(context, DetailsScreen.routeName,
                  arguments: {
                    "title": foods[index]["name"],
                    "image": foods[index]["img"],
                    "heroTag": "detailImage$index",
                    "count": foods[index]["count"],
                  }),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Hero(
                      tag: "detailImage$index",
                      child: Container(
                          height: size.width / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 8,
                                spreadRadius: 1.5,
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(foods[index]["img"]),
                            ),
                          )),
                    ),
                    // child: Image.asset()),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      foods[index]["name"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "remaining: ${foods[index]["count"]}",
                      style: const TextStyle(fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
