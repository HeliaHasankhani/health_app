// import 'package:ecommerce/widgets/health_needs.dart';
// import 'package:ecommerce/widgets/nearby_doctors.dart';
// import 'package:ecommerce/widgets/upcoming_card.dart';
import 'package:flutter/material.dart';
import 'package:health/widgets/health_needs.dart';
import 'package:health/widgets/nearby_doctor.dart';
import 'package:health/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _index = 0;
    return Scaffold(
      
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          const UpcomingCard(),
          const SizedBox(height: 20),
          Text(
            "مراقبت های عمومی",
            style: Theme.of(context).textTheme.titleLarge,
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 15),
          const HealthNeeds(),
          const SizedBox(height: 25),
          Text(
            "نزدیک ترین پزشکان",
            style: Theme.of(context).textTheme.titleLarge,
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(height: 15),
          const NearbyDoctors(),
        ],

      ),

    );
  }
}
