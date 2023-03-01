// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:mtg_flutter_bloc/ui/utils/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const AppHeader({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  AppBar build(BuildContext context) {
    final brightness = getStatusBarBrightness();

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: brightness,
        statusBarBrightness: brightness,
      ),
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey[800],
          fontSize: 24,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
      actions: actions,
    );
  }
}
