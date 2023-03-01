// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/ui/components/app_loader.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/header_cards/header_cards.dart';

class LoaderCards extends StatelessWidget {
  const LoaderCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HeaderCards(),
      body: AppLoader(),
    );
  }
}
