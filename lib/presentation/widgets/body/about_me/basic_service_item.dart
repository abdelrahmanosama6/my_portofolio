import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_service.dart';

class BasicServiceItem extends StatefulWidget {
  const BasicServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<BasicServiceItem> createState() => _BasicServiceItemState();
}

class _BasicServiceItemState extends State<BasicServiceItem> {
  Color itemColor = AppColors.lowPriority;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: itemColor,
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.logo,
              height: 48,
              color: isHovered ? Colors.white : null, // Only set color when hovered
            ),
            const SizedBox(height: 16),
            if (context.width > DeviceType.mobile.getMinWidth())
              FittedBox(
                child: Text(
                  widget.service.service,
                  style: AppStyles.s24,
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _onExit(PointerEvent event) {
    setState(() {
      itemColor = AppColors.lowPriority;
      isHovered = false;
    });
  }

  void _onEnter(PointerEvent event) {
    setState(() {
      itemColor = AppColors.primaryColor;
      isHovered = true;
    });
  }
}
