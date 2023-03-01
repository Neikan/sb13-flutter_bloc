// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Package imports:
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'package:mtg_flutter_bloc/services/service_card/service_card.dart'
    as _i3;
import 'package:mtg_flutter_bloc/services/service_card/service_card_impl.dart'
    as _i4;
import 'package:mtg_flutter_bloc/services/service_cards/service_cards.dart'
    as _i5;
import 'package:mtg_flutter_bloc/services/service_cards/service_cards_impl.dart'
    as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ServiceCard>(() => _i4.ServiceCardImpl());
    gh.lazySingleton<_i5.ServiceCards>(() => _i6.ServiceCardsImpl());
    return this;
  }
}
