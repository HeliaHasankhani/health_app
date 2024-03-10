import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health/pages/chat_page.dart';
import 'package:health/pages/home_page.dart';
import 'package:health/pages/profile_page.dart';
import 'package:ionicons/ionicons.dart';

class Basepage extends StatefulWidget {
  const Basepage({super.key});

  @override
  State<Basepage> createState() => _BasepageState();
}

class _BasepageState extends State<Basepage> {
  List<DateTime> eachDateTime = [];
  DateTimeRange? rangeDateTime;
  List<Widget> _screen = [
    HomePage(),
    ChatPage(),
    ProfilePage(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 3) {
      var result = showDialog(
        context: context,
        builder: (context) => Dialog(
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: CustomCalenderPicker(
            returnDateType: ReturnDateType.list,
            initialDateList: eachDateTime,
            calenderThema: CalenderThema.white,
            buttonColor: Color.fromARGB(255, 161, 78, 209),
            rangeColor: Color.fromARGB(255, 161, 78, 209),
            buttonText: "روز مورد نظر خود را انتخاب کنبد",
          ),
        ),
      );
      if (result != null) {
        if (result is List<DateTime>) {
          setState(() {
            eachDateTime.clear();
            eachDateTime.addAll(result as Iterable<DateTime>);
          });
        }
      }
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(); // add this.
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Ionicons.notifications_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Ionicons.search_outline),
                  ),
                ],
              ),
              Card(
                elevation: 4,
                shadowColor: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 4, top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("رویا عزیز"),
                      Text(
                        "خوش آمدی",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //       title: Card(
          // elevation: 10,
          // shadowColor: Colors.black12,
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.end,
          //           children: [
          //             const Text("رویا عزیز"),
          //             Text(
          //               "خوش آمدی",
          //               style: Theme.of(context).textTheme.bodySmall,
          //             ),
          //           ],
          //         ),
          //       ),
          // actions: [

          // ],
        ),
        body: Center(
          child: _screen.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: AppColors.blueBackgroundColor,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline),
              // icon: ImageIcon(
              //   AssetImage("img/home.png"),
              // ),
              label: 'خانه',
              //title: Text("Home", style: TextStyle(fontSize: 10),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.chatbubble_ellipses_outline),
              // icon: ImageIcon(
              //   AssetImage("img/speech.png"),
              // ),
              label: "پیام",
              // title: Text("Wisdom", style: TextStyle(fontSize: 10),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline),
              label: "پروفایل",
              // title: Text("Sleep", style: TextStyle(fontSize: 10),),
            ),
                        BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_outline),
              // icon: ImageIcon(
              //   AssetImage("img/meditation.png"),
              // ),
              label: "نوبت دهی",
              //title: Text("Meditation", style: TextStyle(fontSize: 10),),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 161, 78, 209),
          unselectedItemColor: Color.fromARGB(255, 86, 85, 87),
          // showSelectedLabels: false,
          // unselectedLabelStyle: TextStyle(backgroundColor: AppColors.accentColor),
          onTap: _onItemTapped,
          selectedLabelStyle: TextStyle(fontFamily: "Vazir-Regular"),
          unselectedLabelStyle: TextStyle(fontFamily: "Vazir-Regular"),
        ),
      ),
    );
  }
}
