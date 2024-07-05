import 'package:flutter/material.dart';

import '../../utils/routes/routes.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    TextScaler textScale = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Spacer(),
            Image.network(
              "https://img.freepik.com/premium-vector/process-rental-booking-isolated-cartoon-vector-illustrations-young-woman-processing-online-booking-using-software-hospitality-rental-business-travel-app-hotel-reservation-vector-cartoon_107173-46934.jpg",
              height: 250,
              width: 250,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "No bookings, yet!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Search for your next destinition & start booking now",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Book now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: w,
        height: h * 0.08,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: w * 0.08,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.home_filled,
                  size: h * 0.04,
                  color: Colors.grey,
                ),
              ),
            ),

            // GestureDetector(
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //   child: Icon(
            //     Icons.home_filled,
            //     size: h * 0.04,
            //     color: Colors.grey,
            //   ),
            // ),
            const Spacer(),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: h * 0.04,
            ),
            const Spacer(),
            Icon(
              Icons.search,
              color: Colors.grey,
              size: h * 0.04,
            ),
            const Spacer(),
            Icon(
              Icons.design_services_outlined,
              color: Colors.grey,
              size: h * 0.04,
            ),
            const Spacer(),
            Icon(
              Icons.help_center_outlined,
              color: Colors.grey,
              size: h * 0.04,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
