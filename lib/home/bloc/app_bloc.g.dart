// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AppStateCWProxy {
  AppState error(String? error);

  AppState isLoading(bool isLoading);

  AppState isError(bool isError);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AppState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AppState(...).copyWith(id: 12, name: "My name")
  /// ```
  AppState call({String? error, bool isLoading, bool isError});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAppState.copyWith(...)` or call `instanceOfAppState.copyWith.fieldName(value)` for a single field.
class _$AppStateCWProxyImpl implements _$AppStateCWProxy {
  const _$AppStateCWProxyImpl(this._value);

  final AppState _value;

  @override
  AppState error(String? error) => call(error: error);

  @override
  AppState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  AppState isError(bool isError) => call(isError: isError);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AppState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AppState(...).copyWith(id: 12, name: "My name")
  /// ```
  AppState call({
    Object? error = const $CopyWithPlaceholder(),
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? isError = const $CopyWithPlaceholder(),
  }) {
    return AppState(
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      isError: isError == const $CopyWithPlaceholder() || isError == null
          ? _value.isError
          // ignore: cast_nullable_to_non_nullable
          : isError as bool,
    );
  }
}

extension $AppStateCopyWith on AppState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAppState.copyWith(...)` or `instanceOfAppState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AppStateCWProxy get copyWith => _$AppStateCWProxyImpl(this);
}
