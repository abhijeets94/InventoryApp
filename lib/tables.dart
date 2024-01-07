import 'package:flutter/material.dart';
import 'package:inventory/util/tables.dart';
import 'package:inventory/util/widgets.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});
  static const String routeName = "/table-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: Text("Table Screen"),
          centerTitle: true,
          automaticallyImplyLeading: true,
          actions: []),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: tables.length,
          itemBuilder: (context, index) {
            Color tableColor;
            int length = tables[index]["table_list_of_orders"].length;
            if (length == 0) {
              tableColor = Colors.grey;
            } else if (length < 5) {
              tableColor = Colors.green;
            } else {
              tableColor = Colors.red;
            }
            return GestureDetector(
              onTap: () {
                showBottomSheet(
                    context: context,
                    backgroundColor: Colors.brown[50],
                    builder: (context) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Table no: ${tables[index]['table_no']}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                "Last Order Time: ${tables[index]['table_last_order_time']}"),
                            Text(
                                "Last Order : ${tables[index]["table_last_order"]}"),
                          ],
                        ),
                      );
                    });
              },
              child: Icon(
                Icons.dining_outlined,
                color: tableColor,
                size: 50,
              ),
            );
          }),
    );
  }
}
