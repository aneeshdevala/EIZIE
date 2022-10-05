import 'package:eizie/features/activity/model/model.dart';
import 'package:eizie/features/activity/view/sub_category/swimmig_activity.dart';
import 'package:eizie/utils/constraints.dart';
import 'package:eizie/utils/routes.dart';
import 'package:flutter/material.dart';

class ActivityCustomCard extends StatelessWidget {
  const ActivityCustomCard({Key? key, this.items}) : super(key: key);
  final ActivityModel? items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        RouteController.pushRoute(context, const SwimmingCategory());
      },
      child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
          color: items!.color,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 18,
              left: 5,
              right: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight,
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    items!.head,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                kheight,
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    items!.image,
                    fit: BoxFit.fill,
                  ),
                ),
                kheight20,
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 252, 253, 253),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Card(
                        margin: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(13)),
                        color: const Color.fromARGB(255, 255, 255, 254),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Image.asset(
                              'assets/images/SSM_Social_Centre_1.png'),
                        ),
                      ),
                      const Expanded(
                          child: Text(
                        'SSM Social Center',
                        style: TextStyle(fontSize: 12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ))
                    ],
                  ),
                ),
                Visibility(
                  visible: items?.isVisible ?? false,
                  child: Column(
                    children: [
                      kheight,
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 252, 253, 253),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Card(
                              margin: const EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(13)),
                              color: const Color.fromARGB(255, 255, 255, 254),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Image.asset(
                                    'assets/images/SSM_Social_Centre_1.png'),
                              ),
                            ),
                            const Expanded(
                                child: Text(
                              'SSM Social Center',
                              style: TextStyle(fontSize: 12),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5)
              ],
            ),
          )),
    );

    // );
  }
}
