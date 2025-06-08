import 'package:ama_meet/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeBtnWidget extends StatelessWidget {
  final VoidCallback? onPressedFunction;
  final IconData? btnIcon;
  final String btnText;
  const HomeBtnWidget({super.key,
    required this.onPressedFunction,
    required this.btnIcon,
    required this.btnText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressedFunction,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.6),
                  offset: const Offset(0, 4)
                )
              ]
            ),

            child: Icon(btnIcon, color: Colors.white, size: 30,),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            btnText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10
            ),
          )
        ],
      ),
    );
  }
}