import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  @JsonKey(name: 'order_id')
  int id;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'payment_url')
  String? paymentUrl;

  Order({required this.id, required this.status, this.paymentUrl});

  factory Order.fromJson(dynamic json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
