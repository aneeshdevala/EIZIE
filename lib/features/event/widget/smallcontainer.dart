import 'package:eizie/utils/colors.dart';
import 'package:flutter/material.dart';

class EventScroll extends StatelessWidget {
  const EventScroll({required this.name, required this.isSelected, Key? key})
      : super(key: key);
  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child:
          // ElevatedButton(
          //     style: ButtonStyle(
          //         textStyle: MaterialStateProperty.all(const TextStyle(
          //           fontSize: 14,
          //         )),
          //         backgroundColor: isSelected
          //             ? MaterialStateProperty.all(mainColor)
          //             : MaterialStateProperty.all(kGrey),
          //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //             RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(20),
          //         ))),
          //     onPressed: () {},
          //     child: Text(
          //       name,
          //     )),
          ChoiceChip(
        label: Text(name),
        selected: isSelected,
        backgroundColor: Colors.grey[100],
        selectedColor: mainColor,
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : mainColor,
        ),
        onSelected: (bool selected) {},
      ),
    );
  }
}
