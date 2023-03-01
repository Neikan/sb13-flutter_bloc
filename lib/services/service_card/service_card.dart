// Package imports:
import 'package:dio/dio.dart';

abstract class ServiceCard {
  Future<Response<dynamic>> getCard(String id);
}
