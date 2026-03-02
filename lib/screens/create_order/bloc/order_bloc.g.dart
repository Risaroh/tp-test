// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderStateCWProxy {
  OrderState isLoading(bool isLoading);

  OrderState order(Order? order);

  OrderState isError(bool isError);

  OrderState errorText(String? errorText);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderState(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderState call({
    bool isLoading,
    Order? order,
    bool isError,
    String? errorText,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderState.copyWith(...)` or call `instanceOfOrderState.copyWith.fieldName(value)` for a single field.
class _$OrderStateCWProxyImpl implements _$OrderStateCWProxy {
  const _$OrderStateCWProxyImpl(this._value);

  final OrderState _value;

  @override
  OrderState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  OrderState order(Order? order) => call(order: order);

  @override
  OrderState isError(bool isError) => call(isError: isError);

  @override
  OrderState errorText(String? errorText) => call(errorText: errorText);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderState(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderState call({
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? isError = const $CopyWithPlaceholder(),
    Object? errorText = const $CopyWithPlaceholder(),
  }) {
    return OrderState(
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as Order?,
      isError: isError == const $CopyWithPlaceholder() || isError == null
          ? _value.isError
          // ignore: cast_nullable_to_non_nullable
          : isError as bool,
      errorText: errorText == const $CopyWithPlaceholder()
          ? _value.errorText
          // ignore: cast_nullable_to_non_nullable
          : errorText as String?,
    );
  }
}

extension $OrderStateCopyWith on OrderState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderState.copyWith(...)` or `instanceOfOrderState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderStateCWProxy get copyWith => _$OrderStateCWProxyImpl(this);
}
