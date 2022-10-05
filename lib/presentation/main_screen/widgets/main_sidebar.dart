import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class MainSidebar extends StatelessWidget {
  final VoidCallback onLogout;

  const MainSidebar({
    super.key,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.primary,
      child: ListView(
        children: [
          ListTile(
            onTap: onLogout,
            leading: const Icon(LucideIcons.logOut),
            title: Text('lbl_logout'.tr),
            iconColor: ColorConstant.green400,
            textColor: ColorConstant.green400,
          )
        ],
      ),
    );
  }
}
