import 'package:flutter/material.dart';

import '../../../ui_kit/ds_colors.dart';
import '../../../ui_kit/ds_styles.dart';

class TextItem extends StatelessWidget {
  final String label;
  final String body;

  const TextItem({Key? key, required this.label, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 414,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 3,
                width: 58,
                decoration: BoxDecoration(
                    color: DSColors.primaryText,
                    borderRadius: BorderRadius.circular(500)),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                label,
                style: DSStyles.itemLabelStyle,
              )
            ],
          ),
          Text(
            body,
            style: DSStyles.textBodyStyle,
          )
        ],
      ),
    );
  }
}
