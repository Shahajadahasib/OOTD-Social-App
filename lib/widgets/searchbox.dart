import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onchanged;

  const SearchBox({
    Key? key,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 30,
      width: size.width / 2,
      padding: const EdgeInsets.only(
        left: 5,
        top: 2,
      ),
      decoration: const BoxDecoration(
        color: Color(0xffC3C43),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: TextField(
        onChanged: onchanged,
        decoration: const InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search_rounded,
            color: Color(0xff997799),
          ),
        ),
      ),
    );
  }
}
