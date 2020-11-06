import 'package:model_flutter/src/shared/repository/api/dioRepository.dart';

class Requests {
  DioRepository dioRepository = DioRepository();
  void dioGet() {
    dioRepository.dio.get('path');
  }
}
