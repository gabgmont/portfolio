import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/uikit/ds_colors.dart';

class DSStyles {
  static final titleStyle = GoogleFonts.lexend(
      fontSize: 72, color: DSColors.primaryText, fontWeight: FontWeight.bold);

  static final subtitleStyle = GoogleFonts.lexend(
      fontSize: 54, color: DSColors.primaryText, fontWeight: FontWeight.bold);

  static final textLabelStyle = GoogleFonts.lexend(
      fontSize: 16, color: DSColors.primaryText, fontWeight: FontWeight.bold);

  static final itemLabelStyle = GoogleFonts.lexend(
      fontSize: 24, color: DSColors.primaryText, fontWeight: FontWeight.bold);

  static final textBodyStyle =
      GoogleFonts.darkerGrotesque(fontSize: 28, color: DSColors.primaryText);

  static final textItemStyle =
      GoogleFonts.darkerGrotesque(fontSize: 18, color: DSColors.primaryText, fontWeight: FontWeight.w600);
}
