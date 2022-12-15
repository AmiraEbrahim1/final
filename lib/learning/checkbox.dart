import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yisitapp/learning/Merchants.dart';

class TextCheckbox extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  const TextCheckbox({Key? key, required this.onChanged}) : super(key: key);

  @override
  _TextCheckboxState createState() => _TextCheckboxState();
}

class _TextCheckboxState extends State<TextCheckbox> {
  bool isChecked = false;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
              widget.onChanged(isChecked);
            },
            child: Container(
              width: 23,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    width: isChecked == false ? 1 : 0,
                    color: isChecked == false
                        ? const Color(0xffD9D9D9)
                        : const Color(0xFF21C4A7)),
                color: isChecked == false
                    ? const Color(0xffD9D9D9)
                    : const Color(0xFF21C4A7),
                shape: BoxShape.rectangle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class texting extends StatelessWidget {
  final index;
  const texting({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        Lists[index].name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Google Sans',
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
