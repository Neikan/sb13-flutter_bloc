// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/grid_cards/grid_cards.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/header_cards/header_cards.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/list_cards/list_card.dart';

class ViewCards extends StatefulWidget {
  final List<MtgCardInfo> cards;

  const ViewCards({
    super.key,
    required this.cards,
  });

  @override
  State<ViewCards> createState() => _ViewCardsState();
}

class _ViewCardsState extends State<ViewCards> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderCards(
        isListView: isListView,
        onSwitchView: _handleSwitchView,
      ),
      body: SafeArea(
        child: isListView
            ? ListCards(cards: widget.cards)
            : GridCards(cards: widget.cards),
      ),
    );
  }

  void _handleSwitchView() {
    setState(() {
      isListView = !isListView;
    });
  }
}
