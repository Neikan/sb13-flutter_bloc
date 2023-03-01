// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/consts/translations.dart';
import 'package:mtg_flutter_bloc/ui/components/app_header.dart';
import 'package:mtg_flutter_bloc/ui/components/app_icon_button.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/header_cards/button_go_to_cart.dart';

class HeaderCards extends StatelessWidget implements PreferredSizeWidget {
  final bool? isListView;
  final VoidCallback? onSwitchView;

  const HeaderCards({
    super.key,
    this.isListView,
    this.onSwitchView,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final checkIsListView = isListView == true;

    return AppHeader(
      title: labelCards,
      actions: isListView != null
          ? [
              AppIconButton(
                onPressed: !checkIsListView ? onSwitchView : null,
                child: Icon(
                  Icons.list_rounded,
                  color: checkIsListView ? Colors.red.shade900 : Colors.grey,
                ),
              ),
              AppIconButton(
                onPressed: checkIsListView ? onSwitchView : null,
                child: Icon(
                  Icons.apps_rounded,
                  color: !checkIsListView ? Colors.red.shade900 : Colors.grey,
                ),
              ),
              const ButtonGoToCart(),
            ]
          : null,
    );
  }
}
