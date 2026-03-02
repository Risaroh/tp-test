part of 'app_bloc.dart';

@CopyWith()
class AppState {
  String? error;
  bool isLoading;
  bool isError;

  AppState({this.error, this.isLoading = false, this.isError = false});
}
