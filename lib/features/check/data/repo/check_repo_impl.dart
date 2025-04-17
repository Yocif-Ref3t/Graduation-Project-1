import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:graduation_project1/core/helper/failure.dart';
import 'package:graduation_project1/core/services/api.dart';
import 'package:graduation_project1/features/check/data/models/check_data_model.dart';
import 'package:graduation_project1/features/check/data/repo/check_repo.dart';

class CheckRepoImpl implements CheckRepo {
  @override
  Future<Either<Failure, bool>> predict(CheckDataModel data) async {
    try {
      final Response response = await API.post(
        "/predict",
        body: {
          "features": [
            data.pregnancies,
            data.glucose,
            data.bloodPressure,
            data.skinThickness,
            data.insulin,
            data.bmi,
            data.diabetesPedigreeFunction,
            data.age,
          ],
        },
      );
      if (response.statusCode == 200) {
        var data = response.data['prediction'] as int;
        return right(data == 1);
      }
      return left(Failure.defaultMessage());
    } catch (ex) {
      return left(Failure.defaultMessage());
    }
  }
}
