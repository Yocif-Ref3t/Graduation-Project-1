part of 'help_cubit.dart';

@immutable
sealed class HelpState {}

final class HelpInitial extends HelpState {}

final class HelpLoading extends HelpState {}

final class HelpSuccess extends HelpState {
  final List<Map<String, dynamic>> questions;
  HelpSuccess({required this.questions});
}

final class HelpFailure extends HelpState {
  final String message;
  HelpFailure({required this.message});
}
