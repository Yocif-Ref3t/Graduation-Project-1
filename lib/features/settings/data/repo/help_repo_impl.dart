import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';
import 'package:graduation_project1/core/services/supabase_services.dart';
import 'package:graduation_project1/features/settings/data/repo/help_repo.dart';

class HelpRepoImpl extends HelpRepo {
  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> getHelp() async {
    try {
      final response = await SupabaseServices.readTable('questions');
      if (response.isNotEmpty) {
        return right(response);
      }
      return left(Failure.defaultMessage());
    } catch (ex) {
      return left(Failure.defaultMessage());
    }
  }
}
