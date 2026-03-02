part of 'order_bloc.dart';

class OrderEvent {}

class OrderCreateEvent extends OrderEvent {
  int serviceId;
  int userId;

  OrderCreateEvent({required this.serviceId, required this.userId});
}
