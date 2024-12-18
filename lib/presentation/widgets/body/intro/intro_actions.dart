import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; 

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/widgets/custom_button.dart';

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: 'My CV', 
        icon: Icons.download, 
        backgroundColor: AppColors.primaryColor,
        onPressed: _downloadCV, 
        width: 160,
      ),
      context.width < DeviceType.ipad.getMaxWidth()
          ? const SizedBox(height: 6)
          : const SizedBox(width: 32),
      CustomButton(
        label: 'Behance',
        icon: FontAwesomeIcons.behance,
        borderColor: AppColors.primaryColor,
        onPressed: _gotoBehance,
        width: 160,
      ),
    ];
    return context.width < DeviceType.ipad.getMaxWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: actions,
          );
  }

  void _downloadCV() async {
    const url = 'https://drive.google.com/drive/folders/1Tzz9v3rdfa0lnjicJ508TtDwCwQvl85i?usp=drive_link'; 
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  void _gotoBehance() async {
    const url = 'https://www.behance.net/abdelrhmanosama11'; 
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
