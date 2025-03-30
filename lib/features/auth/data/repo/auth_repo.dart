import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';
import 'package:graduation_project1/features/auth/data/models/user_model.dart';
import 'package:graduation_project1/features/auth/presentation/manager/register%20cubit/register_cubit.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> register(RegisterCubit data);
}
