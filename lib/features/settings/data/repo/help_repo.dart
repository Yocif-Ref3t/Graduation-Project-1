import 'package:dartz/dartz.dart';
import 'package:graduation_project1/core/helper/failure.dart';

abstract class HelpRepo {
  Future<Either<Failure, List<Map<String, dynamic>>>> getHelp();
}
