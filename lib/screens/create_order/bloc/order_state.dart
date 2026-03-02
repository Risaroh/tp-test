part of 'order_bloc.dart';

@CopyWith()
class OrderState {
  bool isLoading;
  Order? order;
  bool isError;
  String? errorText;

  OrderState({this.isLoading = false, this.order, this.isError = false, this.errorText});
}
