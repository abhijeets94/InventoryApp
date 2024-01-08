import 'package:flutter/material.dart';
import 'package:inventory/util/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.title,
    required this.image,
    required this.heroTag,
  });

  final String title;
  final String image;
  final String heroTag;

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
                child: Container(
                  height: size.height / 2,
                  width: size.width / 1.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ))),
                )),
          ],
        ),
      ),
    );
  }
}
