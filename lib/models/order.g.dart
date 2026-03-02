// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
  id: (json['order_id'] as num).toInt(),
  status: json['status'] as String,
  paymentUrl: json['payment_url'] as String?,
);

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
  'order_id': instance.id,
  'status': instance.status,
  'payment_url': instance.paymentUrl,
};
