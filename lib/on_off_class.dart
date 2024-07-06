import 'package:flutter/material.dart';

class BulbSwitch extends StatefulWidget {
  const BulbSwitch({super.key});

  @override
  State<BulbSwitch> createState() => _BulbSwitchState();
}

class _BulbSwitchState extends State<BulbSwitch> {
  bool isBulbOn = false;

  void toggleBulb() {
    setState(() {
      isBulbOn = !isBulbOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          isBulbOn ? "assets/onn.png" : "assets/off.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: toggleBulb,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            backgroundColor: isBulbOn ? Colors.yellow : Colors.grey,
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Text(isBulbOn ? "Turn Off" : "Turn On"),
        ),
      ],
    );
  }
}
