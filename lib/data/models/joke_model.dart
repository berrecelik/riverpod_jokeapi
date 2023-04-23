import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_model.freezed.dart';
part 'joke_model.g.dart';

@freezed
@JsonSerializable()
class JokeModel with _$JokeModel {
  const factory JokeModel({
    String? delivery,
    int? id,
    String? setup,
  }) = _JokeModel;
  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
}
