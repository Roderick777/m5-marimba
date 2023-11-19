import 'package:flutter/material.dart';

class MarimbaKeyCircle extends StatefulWidget {
  final double top;
  final double? left;
  final double? right;
  const MarimbaKeyCircle({super.key, required this.top, this.left, this.right});

  @override
  State<MarimbaKeyCircle> createState() => _MarimbaKeyCircleState();
}

class _MarimbaKeyCircleState extends State<MarimbaKeyCircle> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      right: widget.right,
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
