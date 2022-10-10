import 'package:flutter/material.dart';

import 'name_input_field.dart';

class NameInputListTile extends StatelessWidget {
  const NameInputListTile({
    super.key,
    required this.tileKey,
    required this.tileValue,
  });

  final String tileKey;
  final String tileValue;

  @override
  Widget build(BuildContext context) {
    const double fontSize = 15;

    return ListTile(
      title: Text(
        tileKey,
        style: const TextStyle(fontSize: fontSize),
      ),
      trailing: Wrap(
        spacing: 10,
        alignment: WrapAlignment.end,
        runAlignment: WrapAlignment.end,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            tileValue,
            style: const TextStyle(
              fontSize: fontSize,
              color: Colors.blue,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NameInputField(TextEditingController());
            },
          ),
        );
      },
    );
  }
}
