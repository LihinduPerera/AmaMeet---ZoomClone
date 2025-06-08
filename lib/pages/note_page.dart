import 'package:ama_meet/widgets/home_btn_widget.dart';
import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),

      appBar: AppBar(
        backgroundColor: const Color(0xFFeeedf2),
        elevation: 0,
        title: const Text("Notes"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeBtnWidget(
                onPressedFunction: () {},
                btnText: 'Add notes',
                btnIcon: Icons.post_add,
                height: 60,
                width: 200,
              ),
            ],
          )
        ],
      ),
    );
  }
}