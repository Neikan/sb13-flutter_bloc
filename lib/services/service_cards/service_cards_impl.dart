// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:mtg_flutter_bloc/consts/urls.dart';
import 'package:mtg_flutter_bloc/services/service_cards/service_cards.dart';
import 'package:mtg_flutter_bloc/services/service_http.dart';

@LazySingleton(as: ServiceCards)
class ServiceCardsImpl implements ServiceCards {
  @override
  Future<Response<dynamic>> getCards() async =>
      await ServiceHttp.instance.get(urlCards);
}
