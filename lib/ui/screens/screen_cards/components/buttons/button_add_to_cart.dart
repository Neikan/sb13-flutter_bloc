// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart_event.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart_state.dart';

class ButtonAddToCart extends StatelessWidget {
  final String cardId;

  const ButtonAddToCart({
    super.key,
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<BlocCart, BlocCartState>(
        builder: (context, state) {
          if (state.cards.contains(cardId)) {
            return IconButton(
              icon: Icon(
                Icons.remove_shopping_cart_outlined,
                color: Colors.red.shade800,
              ),
              onPressed: () => context.read<BlocCart>().add(
                    BlocCartEventRemove(cardId),
                  ),
            );
          }

          return IconButton(
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.green.shade800,
            ),
            onPressed: () => context.read<BlocCart>().add(
                  BlocCartEventAdd(cardId),
                ),
          );
        },
      );
}
