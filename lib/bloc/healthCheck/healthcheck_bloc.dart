import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'healthcheck_event.dart';
part 'healthcheck_state.dart';

class HealthcheckBloc extends Bloc<HealthcheckEvent, HealthcheckState> {
  HealthcheckBloc() : super(HealthcheckInitial());

  @override
  Stream<HealthcheckState> mapEventToState(HealthcheckEvent event) async* {
    if (event is Healthchecked) {
      yield CheckState(true);
    } else if (event is Healthuncheck) {
      yield CheckState(false);
    }
  }
}
