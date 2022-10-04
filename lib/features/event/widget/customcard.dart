import 'package:eizie/utils/colors.dart';
import 'package:eizie/utils/constraints.dart';

import 'package:flutter/material.dart';

Card customCard(BuildContext context, String name, String image) {
  return Card(
    color: Colors.grey[100],
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.contain,
              width: double.infinity,
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 50,
                height: 50,
                child: Center(
                  child: Column(
                    children: const [
                      Text(
                        '05',
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Sep',
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).devicePixelRatio * 55,
          color: kskyblue,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kheight,
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      size: 18,
                      color: mainColor,
                    ),
                    Text(' Queen Street')
                  ],
                ),
                kheight,
                Container(
                  padding: const EdgeInsets.all(10),
                  //color: kWhite,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kWhite,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kGrey)),
                        child: Image.asset(
                            'assets/images/SSM Social Centre 1.png'),
                      ),
                      kWidth10,
                      const Text('SSM Social...'),
                      const Spacer(),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(mainColor)),
                          onPressed: () {},
                          child: const Text(
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
  );
}
