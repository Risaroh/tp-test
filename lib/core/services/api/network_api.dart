import 'package:dio/dio.dart';
import 'package:tp_test/core/services/api/api_client.dart';
import 'package:tp_test/core/services/api/api_exception.dart';
import 'package:tp_test/models/order.dart';

class NetworkApi {
  Future<Order?> submitOrder(int userId, int serviceId) async {
    try {
      final res = await apiClient.post('/orders', data: <String, dynamic>{'userId': userId, 'serviceId': serviceId});

      if (res.data != null && res.statusCode == 200) {
        return Order.fromJson(res.data);
      }

      return null;
    } on DioException catch (e) {
      throw ApiException.getErrorMessageByStatus(e.response?.statusCode ?? 500, e.toString());
    }
  }
}
