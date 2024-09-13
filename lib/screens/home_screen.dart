import 'package:flutter/material.dart';
import 'package:flutter_lessons/base/widgets/text_row_layout.dart';
import 'package:flutter_lessons/base/widgets/ticket_view.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        children: [
          //mother column
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //1st child row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3b3b3b)),
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      // color: Colors.purple,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/logo.png"))),
                    )
                  ],
                ),
                //2nd row
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Iconsax.search_normal_copy,
                        color: Color(0XFFBFC205),
                      ),
                      Text(
                        "Search",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const TextLayoutRow(bigText: "Upcoming Flights", smallText: "View all"),
                const SizedBox(
                  height: 25,
                ),
                const TicketView()
              ],
            ),
          )
        ],
      ),
    );
  }
}
