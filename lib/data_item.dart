import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataItem extends StatelessWidget {
  const DataItem(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '$index',
                style: const TextStyle(
                  fontSize: 48.0,
                ),
              ),
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  width: 8,
                  color: Colors.red,
                )),
          ),
        ),
      ],
    );
  }
}
