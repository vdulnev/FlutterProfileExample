import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataItem extends StatefulWidget {
  const DataItem(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  State<DataItem> createState() => _DataItemState();
}

class _DataItemState extends State<DataItem> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotationTransition(
          turns: _animation,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${widget.index}',
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
        ),
      ],
    );
  }
}
