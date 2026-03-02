import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_test/core/services/api/api_exception.dart';
import 'package:tp_test/core/services/api/network_api.dart';
import 'package:tp_test/models/order.dart';

part 'order_bloc.g.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderState()) {
    on<OrderCreateEvent>(_onCreateOrderEvent);
  }

  Future<void> _onCreateOrderEvent(OrderCreateEvent event, Emitter<OrderState> emit) async {
    emit(OrderState(isLoading: true, isError: false, order: null, errorText: null));

    /// 2-х секундный дилей так как пробуем стучаться на несуществующий сервер для отображения загрузки
    await Future<void>.delayed(const Duration(seconds: 2));

    try {
      final Order? order = await NetworkApi().submitOrder(event.userId, event.serviceId);

      emit(OrderState(isLoading: false, order: order));
    } on ApiException catch (e) {
      emit(
        OrderState(
          isLoading: false,
          isError: true,
          order: null,
          errorText:
              'Возникла ошибка при создании заказа. Статус: ${e.statusCode}. Ошибка: ${e.errorMessage}. ${e.details.isNotEmpty ? 'Детали: ${e.details}' : ''} ',
        ),
      );
    }
  }
}
