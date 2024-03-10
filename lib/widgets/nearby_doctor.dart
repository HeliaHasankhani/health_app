import 'package:flutter/material.dart';
import 'package:health/models/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DoctorModel> nearbyDoctors = [
      DoctorModel(
        name: "دکتر محمدرضا مدرسی",
        position: "متخصص قلب و عروق",
        averageReview: 3,
        totalReviews: 0,
        profile: "assets/doctor_1.jpg",
      ),
      DoctorModel(
        name: "دکتر علی زمانی",
        position: "متخصص لثه",
        averageReview: 4,
        totalReviews: 0,
        profile: "assets/doctor_2.jpg",
      ),
      DoctorModel(
        name: "دکتر لیلا فراهانی ",
        position: "پزشک عمومی",
        averageReview: 2,
        totalReviews: 0,
        profile: "assets/doctor_3.jpg",
      ),
    ];
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(nearbyDoctors[index].name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl),
                    const SizedBox(height: 8),
                    Text(nearbyDoctors[index].position.toString(),
                        textDirection: TextDirection.rtl),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                  
                        Container(
                              decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10)),
          boxShadow: [
            BoxShadow(color:Colors.black12,spreadRadius: 0, blurRadius: 10),
          ],
        ),
                          child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0, right:4, bottom: 4),
                                      child: Icon(
                                                                Ionicons.star,
                                                                color: Colors.yellow[700],
                                                                size: 16,
                                                              ),
                                    ),
                              Padding(
                                padding: EdgeInsets.only(left: 4, right: 6,bottom: 4),
                                child: Text(
                                  nearbyDoctors[index].averageReview.toString(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("نظرات"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(nearbyDoctors[index].profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
