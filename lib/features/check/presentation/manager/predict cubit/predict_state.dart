part of 'predict_cubit.dart';

@immutable
sealed class PredictState {}

final class PredictInitial extends PredictState {}

final class PredictLoading extends PredictState {}

final class PredictSuccess extends PredictState {
  final bool result;
  PredictSuccess({required this.result});
}

final class PredictFailure extends PredictState {
  final String error;
  PredictFailure({required this.error});
}
