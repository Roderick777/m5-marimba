import 'package:flutter/material.dart';
import 'package:m5_marimba/ui/components/marimba_key/components/marimba_key_circle.dart';

class MarimbaKeyComponent extends StatefulWidget {
  final double height;
  final Color color;
  final void Function() onTap;

  const MarimbaKeyComponent({
    super.key,
    this.height = 50,
    this.color = Colors.orange,
    required this.onTap,
  });

  @override
  State<MarimbaKeyComponent> createState() => _MarimbaKeyComponentState();
}

class _MarimbaKeyComponentState extends State<MarimbaKeyComponent> {
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
  }

  void _onTapDown() {
    setState(() => _isPressed = true);
  }

  void _onTapUp() {
    widget.onTap();
    setState(() => _isPressed = false);
  }

  List<BoxShadow> getShadow() {
    List<BoxShadow> shadow = [];
    if (_isPressed) {
      shadow = [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 3.0,
          spreadRadius: 1.0,
          offset: const Offset(0, 4),
        ),
      ];
    }
    return shadow;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double circleTop = (widget.height / 2) - 5;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTapDown: (_) => _onTapDown(),
        onTapUp: (_) => _onTapUp(),
        onTapCancel: () => _onTapUp(),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: size.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: getShadow(),
          ),
          child: Stack(
            children: [
              MarimbaKeyCircle(top: circleTop, left: 30),
              MarimbaKeyCircle(top: circleTop, right: 30),
            ],
          ),
        ),
      ),
    );
  }
}
