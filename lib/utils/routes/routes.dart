import 'package:flutter/cupertino.dart';
import 'package:oyo_app/screen/bookingpage/bookingpage.dart';
import 'package:oyo_app/screen/details_page/details_page.dart';

import '../../screen/homepage/homepage.dart';

class Routes {
  static String home_page = '/';
  static String booking_page = 'booking_page';
  static String details_page = 'details_page';

  static Map<String, WidgetBuilder> myRoutes = {
    home_page: (context) => const HomePage(),
    booking_page: (context) => const BookingPage(),
    details_page: (context) => const DetailsPage(),
  };
}
