import 'package:flutter/widgets.dart';

import 'data_item.dart';

class DataList extends StatelessWidget {
  const DataList(this.size, {Key? key}) : super(key: key);

  final int size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => DataItem(i),
      itemCount: size,
    );
  }
}
