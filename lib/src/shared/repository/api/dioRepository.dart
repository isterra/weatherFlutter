import 'package:dio/dio.dart';
import 'package:model_flutter/src/shared/repository/variables.dart';

class DioRepository {
  Dio dio;
  static DioRepository _instance;
  factory DioRepository() {
    BaseOptions options = BaseOptions(
      baseUrl: Variaveis.BASEURL,
      connectTimeout: 5000,
    );
    _instance ??= DioRepository._internalConstructor(Dio(options));
    return _instance;
  }
  DioRepository._internalConstructor(this.dio);
}
