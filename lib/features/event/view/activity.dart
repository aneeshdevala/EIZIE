import 'package:eizie/features/event/widget/eventappbar.dart';
import 'package:eizie/features/event/widget/smallcontainer.dart';
import 'package:eizie/utils/colors.dart';
import 'package:eizie/utils/constraints.dart';
import 'package:flutter/material.dart';

List<String> eventNames = [
  'Swimming',
  'Football',
  'Basketball',
  'Tennis',
  'Volleyball',
];

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kskyblue,
      appBar: appbarwidget(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Card(
                      color: kGrey,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Image.asset(
                                    'assets/images/Car Show Event Poster 1.png'),
                              ),
                              Positioned(
                                right: 10,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Container(
                                    width: 50,
                                    //  width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    color: mainColor,
                                    child: Center(
                                      child: Column(
                                        children: const [
                                          Text(
                                            '05',
                                            style: TextStyle(
                                              color: kWhite,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            'Sep',
                                            style: TextStyle(
                                              color: kWhite,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            color: kskyblue,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Car Show @ SSM Downtown',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  kheight,
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on,
                                        color: mainColor,
                                      ),
                                      Text('Queen Street')
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    color: kWhite,
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Icon(Icons.account_balance_sharp),
                                        Text('SSM Social...'),
                                        Spacer(),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        mainColor)),
                                            onPressed: () {},
                                            child: Text(
                                              "Let's Go",
                                              style: TextStyle(fontSize: 14),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
