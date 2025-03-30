import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';
import 'package:graduation_project1/core/services/supabase_services.dart';
import 'package:graduation_project1/features/auth/data/models/user_model.dart';
import 'package:graduation_project1/features/auth/data/repo/auth_repo.dart';
import 'package:graduation_project1/features/auth/presentation/manager/register%20cubit/register_cubit.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, UserModel>> register(RegisterCubit data) async {
    try {
      final response = await SupabaseServices.register({
        "email": data.email,
        "password": data.password,
        "name": data.name,
        "age": 21,
        "birthdate": data.birthdate,
        "gender": data.gender,
      });
      if (response.user != null) {
        return right(UserModel.fromJson(response));
      }
      return left(Failure.defaultMessage());
    } catch (ex) {
      return Left(Failure.defaultMessage());
    }
  }
}
