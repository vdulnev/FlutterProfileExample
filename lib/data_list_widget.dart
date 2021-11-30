import 'package:flutter/widgets.dart';

import 'data_item.dart';

class DataList extends StatelessWidget {
  const DataList(this.size, {Key? key}) : super(key: key);

  final int size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [for (var i = 0; i < size; i++) DataItem(i)],
      ),
    );
  }
}
