import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double borderRadius;

  CustomButton({
    required this.text,
    required this.onPressed,
    this.color = Colors.transparent,
    this.borderRadius = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
        elevation: 0,
        onPressed: onPressed,
        color: color,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.logout,
              color: Colors.white,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
