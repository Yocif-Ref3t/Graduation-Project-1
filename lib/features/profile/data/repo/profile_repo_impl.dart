import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';
import 'package:graduation_project1/core/services/supabase_services.dart';
import 'package:graduation_project1/features/profile/data/repo/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  @override
  Future<Either<Failure, bool>> changePassword(String newPassword) async {
    try {
      final response = await SupabaseServices.changePassword(newPassword);
      if (response.user != null) {
        return right(true);
      }
      return left(Failure.defaultMessage());
    } catch (ex) {
      return left(Failure.defaultMessage());
    }
  }
}
