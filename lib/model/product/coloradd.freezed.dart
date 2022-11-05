// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coloradd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coloradd _$ColoraddFromJson(Map<String, dynamic> json) {
  return _Coloradd.fromJson(json);
}

/// @nodoc
mixin _$Coloradd {
  String? get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_color')
  String? get textColor => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColoraddCopyWith<Coloradd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColoraddCopyWith<$Res> {
  factory $ColoraddCopyWith(Coloradd value, $Res Function(Coloradd) then) =
      _$ColoraddCopyWithImpl<$Res>;
  $Res call(
      {String? colors,
      @JsonKey(name: 'text_color') String? textColor,
      String? label,
      String? value});
}

/// @nodoc
class _$ColoraddCopyWithImpl<$Res> implements $ColoraddCopyWith<$Res> {
  _$ColoraddCopyWithImpl(this._value, this._then);

  final Coloradd _value;
  // ignore: unused_field
  final $Res Function(Coloradd) _then;

  @override
  $Res call({
    Object? colors = freezed,
    Object? textColor = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: textColor == freezed
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ColoraddCopyWith<$Res> implements $ColoraddCopyWith<$Res> {
  factory _$$_ColoraddCopyWith(
          _$_Coloradd value, $Res Function(_$_Coloradd) then) =
      __$$_ColoraddCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? colors,
      @JsonKey(name: 'text_color') String? textColor,
      String? label,
      String? value});
}

/// @nodoc
class __$$_ColoraddCopyWithImpl<$Res> extends _$ColoraddCopyWithImpl<$Res>
    implements _$$_ColoraddCopyWith<$Res> {
  __$$_ColoraddCopyWithImpl(
      _$_Coloradd _value, $Res Function(_$_Coloradd) _then)
      : super(_value, (v) => _then(v as _$_Coloradd));

  @override
  _$_Coloradd get _value => super._value as _$_Coloradd;

  @override
  $Res call({
    Object? colors = freezed,
    Object? textColor = freezed,
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Coloradd(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: textColor == freezed
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coloradd implements _Coloradd {
  _$_Coloradd(
      {this.colors,
      @JsonKey(name: 'text_color') this.textColor,
      this.label,
      this.value});

  factory _$_Coloradd.fromJson(Map<String, dynamic> json) =>
      _$$_ColoraddFromJson(json);

  @override
  final String? colors;
  @override
  @JsonKey(name: 'text_color')
  final String? textColor;
  @override
  final String? label;
  @override
  final String? value;

  @override
  String toString() {
    return 'Coloradd(colors: $colors, textColor: $textColor, label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coloradd &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.textColor, textColor) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(textColor),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ColoraddCopyWith<_$_Coloradd> get copyWith =>
      __$$_ColoraddCopyWithImpl<_$_Coloradd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColoraddToJson(
      this,
    );
  }
}

abstract class _Coloradd implements Coloradd {
  factory _Coloradd(
      {final String? colors,
      @JsonKey(name: 'text_color') final String? textColor,
      final String? label,
      final String? value}) = _$_Coloradd;

  factory _Coloradd.fromJson(Map<String, dynamic> json) = _$_Coloradd.fromJson;

  @override
  String? get colors;
  @override
  @JsonKey(name: 'text_color')
  String? get textColor;
  @override
  String? get label;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ColoraddCopyWith<_$_Coloradd> get copyWith =>
      throw _privateConstructorUsedError;
}
