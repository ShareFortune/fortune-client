import 'package:flutter/material.dart';

class TagWrapper extends StatelessWidget {
  const TagWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _tagButton("料理"),
        _tagButton("居酒屋"),
        _tagButton("少人数"),
      ],
    );
  }

  _tagButton(String tag) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          side: const BorderSide(color: Colors.blue),
        ),
        onPressed: () {},
        child: Text(tag),
      ),
    );
  }
}
