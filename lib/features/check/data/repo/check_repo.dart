import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';

import '../models/check_data_model.dart';

abstract class CheckRepo {
  Future<Either<Failure, bool>> predict(CheckDataModel data);
}
