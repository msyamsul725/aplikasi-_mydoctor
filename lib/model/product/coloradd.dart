import 'package:freezed_annotation/freezed_annotation.dart';

part 'coloradd.freezed.dart';
part 'coloradd.g.dart';

@freezed
class Coloradd with _$Coloradd {
  factory Coloradd({
    String? colors,
    @JsonKey(name: 'text_color') String? textColor,
    String? label,
    String? value,
  }) = _Coloradd;

  factory Coloradd.fromJson(Map<String, dynamic> json) =>
      _$ColoraddFromJson(json);
}
