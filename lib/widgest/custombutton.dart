import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  final String buttonText;
  final String? icon;
  final double? iconSize;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? opticalSize;
  final AlignmentGeometry alignment = Alignment.center;
  final TextDirection? textDirection;

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    this.backgroundColor,
    required this.buttonText,
    this.icon,
    this.iconSize,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.opticalSize,
    required Alignment alignment,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 8,
                // top: 4,
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  color: color,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 170,
                top: 4,
              ),
              child: Image.asset(
                '$icon',
                width: iconSize,
                alignment: alignment,
              ),
            ),
          ],
        ),
      ),
    );

    // return ElevatedButton(
    //   onPressed: () {
    //     print('Item added');
    //   },
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.green,
    //     elevation: 5,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     padding: const EdgeInsets.symmetric(horizontal: 16),
    //     minimumSize: const Size(10, 50),
    //   ),
    //   child: const Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Text('Item Add'),
    //       Icon(Icons.add),
    //     ],
    //   ),
    // );
  }
}
