part of 'healthcheck_bloc.dart';

@immutable
abstract class HealthcheckEvent {}

class Healthchecked extends HealthcheckEvent {}

class Healthuncheck extends HealthcheckEvent {}

