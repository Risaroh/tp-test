import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_test/common/storage.dart';
import 'package:tp_test/core/services/api/api_client.dart';
import 'package:uuid/v6.dart';

part 'app_bloc.g.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<InitialAppEvent>(_initialEvent);
  }

  Future<void> _initialEvent(InitialAppEvent event, Emitter<AppState> emit) async {
    try {
      emit(AppState(isLoading: true));

      await Future<void>.delayed(const Duration(seconds: 2));

      /// В тестовом задании нет кейса авторизации, поэтому токен будет генерироваться с помощью [Uuid] и сразу записываться в хранилище

      String? token = auth.get('token');
      token ??= UuidV6().generate();
      auth.put('token', token);

      if (!apiClient.options.headers.containsKey('Authorization')) {
        apiClient.options.headers.addAll(<String, dynamic>{'Authorization': 'Bearer $token'});
      }

      emit(AppState(isLoading: false));
    } catch (e) {
      emit(AppState(isLoading: false, error: e.toString()));
    }
  }
}
