part of 'healthcheck_bloc.dart';

@immutable
abstract class HealthcheckState {}

class HealthcheckInitial extends HealthcheckState {
  final bool initial = false;
}

class CheckState extends HealthcheckState {
  final bool check;

  CheckState(this.check);
}
