// Package imports:
import 'package:dio/dio.dart';

abstract class ServiceCards {
  Future<Response<dynamic>> getCards();
}
