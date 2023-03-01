// Project imports:
import 'package:mtg_flutter_bloc/repository/repository_cart/repository_cart.dart';

class RepositoryCartImp extends RepositoryCart {
  const RepositoryCartImp();

  static List<String> state = [];

  @override
  List<String> get data => state;

  @override
  void add(String cardId) {
    state = [...state, cardId];
  }

  @override
  void remove(String cardId) {
    final newState = state.where((id) => id != cardId).toList();

    state = newState;
  }
}
