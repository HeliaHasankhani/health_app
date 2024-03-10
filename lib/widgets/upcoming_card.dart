import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "دکتر علی زمانی",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "متخصص بیماری های لثه",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white70,
                      ),
                ),
                const SizedBox(height: 18),
          
                  Padding(
                    padding: const EdgeInsets.only(top:2, bottom:2),
                    child: Container(
                      // padding: const EdgeInsets.symmetric(
                      //   vertical: 6,
                      //   horizontal: 6.0,
                      // ),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                              "14:30 - 15:30 ",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                        ),
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Ionicons.time_outline,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                         Padding(
                            padding: EdgeInsets.only(left: 6, right:4),
                            child: Text(
                              "امروز",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                               Padding(
                                 padding: EdgeInsets.only(right: 8),
                                 child: Icon(
                                                         Ionicons.calendar_outline,
                                                         size: 16,
                                                         color: Colors.white,
                                                       ),
                               ),
                        ],
                      ),
                    ),
                  ),
              
              ],
            ),
        ),
            const SizedBox(width: 14),
              ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/doctor_2.jpg',
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
