// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card/mtg_card.dart';
import 'package:mtg_flutter_bloc/services/service_card/service_card.dart';
import 'package:mtg_flutter_bloc/ui/components/app_error_data.dart';
import 'package:mtg_flutter_bloc/ui/components/app_header.dart';
import 'package:mtg_flutter_bloc/ui/components/app_loader.dart';
import 'package:mtg_flutter_bloc/ui/components/app_text.dart';

class ScreenCard extends StatelessWidget {
  final String cardId;
  final String title;

  const ScreenCard({
    super.key,
    required this.cardId,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(title: title),
      body: FutureBuilder(
        future: GetIt.I.get<ServiceCard>().getCard(cardId),
        builder: (BuildContext _, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              String message = (snapshot.error as DioError).message;

              return AppErrorData(text: message);
            }

            final Response<dynamic> response = snapshot.data;

            final MtgCard mtgCard = MtgCard.fromJson(response.data);

            return Center(
              child: AppText(
                text: 'Page of ${mtgCard.card.name} is under construction',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            );
          }

          return const AppLoader();
        },
      ),
    );
  }
}
