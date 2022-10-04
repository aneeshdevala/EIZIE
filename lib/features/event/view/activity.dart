import 'package:eizie/features/event/widget/customcard.dart';
import 'package:eizie/features/event/widget/eventappbar.dart';
import 'package:eizie/features/event/widget/smallcontainer.dart';
import 'package:eizie/utils/colors.dart';
import 'package:eizie/utils/constraints.dart';
import 'package:flutter/material.dart';

List<String> eventNames = [
  'All events',
  'Indoor',
  'Outdoor',
  'Online',
  'Volleyball',
];

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kskyblue,
      appBar: appbarwidget(),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 20, left: 16, right: 16),

        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight20,
                const Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kheight20,
                LimitedBox(
                  maxHeight: MediaQuery.of(context).devicePixelRatio * 17,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: eventNames.length,
                      itemBuilder: (context, index) {
                        return EventScroll(
                          name: eventNames[index],
                          isSelected: index == 0,
                        );
                      }),
                ),
                kheight20,
                customCard(context, 'Car Show @ SSM Downtown',
                    'assets/images/Car Show Event Poster 1.png'),
                kheight20,
                customCard(context, 'under 14 kids Baseball Match',
                    'assets/images/Kids Baseball Match 1.png'),
                kheight20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
