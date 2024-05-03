import 'package:flutter/material.dart';

class pillsNameAndDoctor extends StatelessWidget {
  const pillsNameAndDoctor({
    super.key, required this.pillName, required this.docName,
  });

  final String pillName, docName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          pillName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          docName,
          style: Theme.of(context).textTheme.labelMedium!.apply(fontFamily: 'sans'),
        ),
      ],
    );
  }
}