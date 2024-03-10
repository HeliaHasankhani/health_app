import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // COLUMN THAT WILL CONTAIN THE PROFILE
          Column(
            children: const [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjmGSlI7eQPWlQ2q4pgaJ1XaLypEEFH8Hdcz2yDGaD99rt29DFSBG5bnM9M0QzhGb0DEM&usqp=CAU",
                ),
              ),
              SizedBox(height: 10),
              Text(
                "رویا محمدی فر",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Text("Junior Product Designer")
            ],
          ),
          const SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(right: 5, bottom:4),
                child: Text(
                  "تکمیل پروفایل",
                   textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                   
                  ),
                ),
              ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Color.fromARGB(255, 161, 78, 209): Colors.black12,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final card = profileCompletionCards[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    shadowColor: Colors.black12,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(
                            card.icon,
                            size: 30,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            card.title,
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text(card.buttonText),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  const Padding(padding: EdgeInsets.only(right: 5)),
              itemCount: profileCompletionCards.length,
            ),
          ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTiles.length,
            (index) {
              final tile = customListTiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black12,
                  child: ListTile(
                   // leading: Icon(tile.icon,textDirection: TextDirection.rtl),
                    title:  Row(
         mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(tile.title, textDirection: TextDirection.rtl,),
                        SizedBox(width: 10,),
                        Icon(tile.icon,textDirection: TextDirection.rtl),
                      ],
                    ),
                    // trailing: const Icon(Icons.chevron_right),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;
  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "اطلاعات تکمیلی",
    icon: Ionicons.person_circle,
    buttonText: "اضافه کردن",
  ),
  ProfileCompletionCard(
    title: "آپلود نسخه",
    icon: Ionicons.document,
    buttonText: "آپلود",
  ),
  ProfileCompletionCard(
    title: "سوابق بیماری",
    icon: Ionicons.list,
    buttonText: "اضافه کردن",
  ),
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Ionicons.bar_chart,
    title: "سوابق قبلی",
  ),
  CustomListTile(
    icon: Ionicons.location,
    title: "موقعیت ",
  ),
  CustomListTile(
    title: "یادآوری",
    icon: Ionicons.notifications,
  ),
  CustomListTile(
    title: "خروج",
    icon: Ionicons.log_out,
  ),
];