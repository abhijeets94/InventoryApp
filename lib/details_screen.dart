import 'package:flutter/material.dart';
import 'package:inventory/tables.dart';
import 'package:inventory/util/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.title,
    required this.image,
    required this.count,
    this.heroTag,
  });

  final String title;
  final String image;
  final String count;
  final String? heroTag;

  static const String routeName = "/details-screen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          title: Text(title),
          centerTitle: true,
          automaticallyImplyLeading: true,
          actions: const []),
      body: SizedBox(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Hero(
                tag: heroTag!,
                child: SizedBox(
                  height: size.height / 3,
                  width: size.width / 1.2,
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
                          image: AssetImage(image),
                        ),
                      )),
                )),
            SizedBox(
              height: size.height / 2.5,
            ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                text: "Counts: ",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              TextSpan(
                text: count,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ])),
            SizedBox(
              width: size.width / 1.2,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, TableScreen.routeName),
                child: const Text(
                  "Select Table",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
