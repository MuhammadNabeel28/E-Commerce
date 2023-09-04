import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  final String buttonText;
  final IconData? icon;

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    this.backgroundColor,
    required this.buttonText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      height: height,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          label: Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppsColors.grey,
            ),
          ),
          icon: Icon(icon),
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