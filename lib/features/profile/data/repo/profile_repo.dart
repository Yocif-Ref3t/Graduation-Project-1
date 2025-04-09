import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, bool>> changePassword(String newPassword);
}
