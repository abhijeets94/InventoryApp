import 'package:flutter/material.dart';
import 'package:inventory/util/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

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
            Hero(
                tag: "detailImage",
                child: SizedBox(
                  height: size.height / 2,
                  width: size.width / 2,
                  child: Image.asset(image),
                )),
          ],
        ),
      ),
    );
  }
}
