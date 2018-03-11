import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Style {
  static final TextStyle TITLE_LARGE = _buildTitleLarge(Colors.blue); //= new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle TITLE_MIDDLE = _buildTitleMedium(Colors.black);//new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle TITLE_MIDDLE_BOLD = new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold);//new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle TITLE_SMALL = _buildTitleSmall(Colors.black);

  static final TextStyle CONTRAST_TITLE_LARGE = _buildTitleLarge(Colors.white); //= new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle CONTRAST_TITLE_MIDDLE = _buildTitleMedium(Colors.white);//new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle CONTRAST_TITLE_MIDDLE_BOLD = new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold);//new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle CONTRAST_TITLE_SMALL = _buildTitleSmall(Colors.black);

  static final TextStyle SUBTITLE_LARGE  = _buildSubTitleLarge(Colors.grey[900]);
  static final TextStyle SUBTITLE_MIDDLE = _buildSubTitleMedium(Colors.black);//new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle SUBTITLE_SMALL  = _buildSubTitleSmall(Colors.black);

  static final TextStyle CONTRAST_SUBTITLE_LARGE  = _buildSubTitleLarge(Colors.white);
  static final TextStyle CONTRAST_SUBTITLE_MIDDLE = _buildSubTitleMedium(Colors.white);//new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);
  static final TextStyle CONTRAST_SUBTITLE_SMALL  = _buildSubTitleSmall(Colors.white);

  static final TextStyle INFO_TEXT  = _buildInfoText(Colors.deepOrange);
  static final TextStyle CONTRAST_INFO_TEXT  = _buildInfoText(Colors.white);

  static TextStyle _buildTitleLarge(Color color) => new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: color);
  static TextStyle _buildTitleMedium(Color color) => new TextStyle(fontSize: 14.0, color: color);
  static TextStyle _buildTitleSmall(Color color) => new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: color);

  static TextStyle _buildSubTitleLarge(Color color) => new TextStyle(fontSize: 14.0, color: color);
  static TextStyle _buildSubTitleMedium(Color color) => new TextStyle(fontSize: 13.0, color: color);
  static TextStyle _buildSubTitleSmall(Color color) => new TextStyle(fontSize: 13.0, color: color);

  static TextStyle _buildInfoText(Color color) => new TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: color);


}