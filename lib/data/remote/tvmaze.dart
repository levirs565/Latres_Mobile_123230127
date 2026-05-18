import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'tvmaze.freezed.dart';

part 'tvmaze.g.dart';

@RestApi(baseUrl: "https://api.tvmaze.com")
abstract class TVMazeClient {
  factory TVMazeClient(Dio dio, {String baseUrl}) = _TVMazeClient;

  @GET("/shows")
  Future<List<RemoteShow>> getShows();

  @GET("/shows/{id}")
  Future<RemoteShow> getShowById(@Path("id") int id);
}

@freezed
abstract class RemoteShow with _$RemoteShow {
  const factory RemoteShow({
    required int id,
    required String url,
    required String name,
    required String type,
    required String language,
    required List<String> genres,
    required String status,
    required int? runtime,
    required int averageRuntime,
    // Convert to datetime
    required String premiered,
    required String? ended,
    required String? officialSite,
    required RemoteShowSchedule schedule,
    required RemoteShowRating rating,
    required int weight,
    required RemoteShowNetwork? network,
    required dynamic webChannel,
    required dynamic dvdCountry,
    required Map<String, dynamic>? externals,
    required RemoteShowImage image,
    required String summary,
    required int updated,
  }) = _RemoteShow;

  factory RemoteShow.fromJson(Map<String, Object?> json) =>
      _$RemoteShowFromJson(json);
}

@freezed
abstract class RemoteShowSchedule with _$RemoteShowSchedule {
  const factory RemoteShowSchedule({
    required String time,
    required List<String> days,
  }) = _RemoteShowSchedule;

  factory RemoteShowSchedule.fromJson(Map<String, Object?> json) =>
      _$RemoteShowScheduleFromJson(json);
}

@freezed
abstract class RemoteShowRating with _$RemoteShowRating {
  const factory RemoteShowRating({required double? average}) = _RemoteShowRating;

  factory RemoteShowRating.fromJson(Map<String, Object?> json) =>
      _$RemoteShowRatingFromJson(json);
}

@freezed
abstract class RemoteShowNetwork with _$RemoteShowNetwork {
  const factory RemoteShowNetwork({
    required int id,
    required String name,
    required RemoteShowNetworkCountry country,
    required String? officialSite,
  }) = _RemoteShowNetwork;

  factory RemoteShowNetwork.fromJson(Map<String, Object?> json) =>
      _$RemoteShowNetworkFromJson(json);
}

@freezed
abstract class RemoteShowNetworkCountry with _$RemoteShowNetworkCountry {
  const factory RemoteShowNetworkCountry({
    required String name,
    required String code,
    required String timezone,
  }) = _RemoteShowNetworkCountry;

  factory RemoteShowNetworkCountry.fromJson(Map<String, Object?> json) =>
      _$RemoteShowNetworkCountryFromJson(json);
}

@freezed
abstract class RemoteShowImage with _$RemoteShowImage {
  const factory RemoteShowImage({
    required String medium,
    required String original,
  }) = _RemoteShowImage;

  factory RemoteShowImage.fromJson(Map<String, Object?> json) =>
      _$RemoteShowImageFromJson(json);
}
