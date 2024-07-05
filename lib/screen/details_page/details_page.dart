import 'package:flutter/material.dart';

import '../../utils/list/list.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      data['Image'],
                    ),
                    fit: BoxFit.cover),
                color: Colors.blue,
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 23,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const CircleAvatar(
                    child: Icon(
                      Icons.ios_share,
                      size: 23,
                    ),
                    radius: 18,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 30,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(8),
                  child: const Center(
                    child: Text(
                      "Mid range",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      data['title'],
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${data['rating']}",
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "(280)",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        "75 reviews",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "5.0 Check-in rating > Delightful experience  ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    "4th floor , lift no.6 Atlanta business hub above car care , oop.croma VIP road vesu,surat",
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "View on map",
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Why book this OYO?",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.widgets_outlined,
                      size: 30,
                    ),
                    title: Text(
                      "Wizard discount available",
                    ),
                    subtitle: Text(
                      "Upto 10% extra discount for wizard members",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.supervisor_account_outlined,
                      size: 33,
                    ),
                    title: Text(
                      "Couples are welcome",
                    ),
                    subtitle: Text(
                      "Unmarried couples allowed at the properly",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.restart_alt,
                      size: 33,
                    ),
                    title: Text(
                      "24*27 power backup available",
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "\$${data['price']}",
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data['taxes'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 46,
                          width: 230,
                          decoration: BoxDecoration(
                            color: const Color(0xffCD0E2F),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "Book now & pay at hotel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
