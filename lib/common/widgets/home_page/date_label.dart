import 'package:flutter/material.dart';

class dateLabel extends StatelessWidget {
  const dateLabel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '1403 ',
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          'خرداد ',
          style: Theme.of(context)
              .textTheme
              .labelSmall!
              .apply(fontFamily: 'sans'),
        ),
        Text(
          '14',
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}