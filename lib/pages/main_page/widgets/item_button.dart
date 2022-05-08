import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../uikit/ds_colors.dart';
import '../../../uikit/ds_styles.dart';

class ItemButton extends StatelessWidget {
  final String asset;
  final String title;
  final String action;

  const ItemButton(
      {Key? key,
      required this.asset,
      required this.title,
      required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: DSColors.tertiary,
      child: SizedBox(
        width: 300,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    asset,
                    height: 80,
                    color: DSColors.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Text(
                      title,
                      style: DSStyles.itemLabelStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    action,
                    style: DSStyles.textItemStyle,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: DSColors.white,
                      size: 14,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
