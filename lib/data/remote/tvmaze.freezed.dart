// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tvmaze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteShow {

 int get id; String get url; String get name; String get type; String get language; List<String> get genres; String get status; int? get runtime; int get averageRuntime;// Convert to datetime
 String get premiered; String? get ended; String? get officialSite; RemoteShowSchedule get schedule; RemoteShowRating get rating; int get weight; RemoteShowNetwork? get network; dynamic get webChannel; dynamic get dvdCountry; Map<String, dynamic>? get externals; RemoteShowImage get image; String get summary; int get updated;
/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteShowCopyWith<RemoteShow> get copyWith => _$RemoteShowCopyWithImpl<RemoteShow>(this as RemoteShow, _$identity);

  /// Serializes this RemoteShow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteShow&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.status, status) || other.status == status)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.averageRuntime, averageRuntime) || other.averageRuntime == averageRuntime)&&(identical(other.premiered, premiered) || other.premiered == premiered)&&(identical(other.ended, ended) || other.ended == ended)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite)&&(identical(other.schedule, schedule) || other.schedule == schedule)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other.webChannel, webChannel)&&const DeepCollectionEquality().equals(other.dvdCountry, dvdCountry)&&const DeepCollectionEquality().equals(other.externals, externals)&&(identical(other.image, image) || other.image == image)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,url,name,type,language,const DeepCollectionEquality().hash(genres),status,runtime,averageRuntime,premiered,ended,officialSite,schedule,rating,weight,network,const DeepCollectionEquality().hash(webChannel),const DeepCollectionEquality().hash(dvdCountry),const DeepCollectionEquality().hash(externals),image,summary,updated]);

@override
String toString() {
  return 'RemoteShow(id: $id, url: $url, name: $name, type: $type, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, officialSite: $officialSite, schedule: $schedule, rating: $rating, weight: $weight, network: $network, webChannel: $webChannel, dvdCountry: $dvdCountry, externals: $externals, image: $image, summary: $summary, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $RemoteShowCopyWith<$Res>  {
  factory $RemoteShowCopyWith(RemoteShow value, $Res Function(RemoteShow) _then) = _$RemoteShowCopyWithImpl;
@useResult
$Res call({
 int id, String url, String name, String type, String language, List<String> genres, String status, int? runtime, int averageRuntime, String premiered, String? ended, String? officialSite, RemoteShowSchedule schedule, RemoteShowRating rating, int weight, RemoteShowNetwork? network, dynamic webChannel, dynamic dvdCountry, Map<String, dynamic>? externals, RemoteShowImage image, String summary, int updated
});


$RemoteShowScheduleCopyWith<$Res> get schedule;$RemoteShowRatingCopyWith<$Res> get rating;$RemoteShowNetworkCopyWith<$Res>? get network;$RemoteShowImageCopyWith<$Res> get image;

}
/// @nodoc
class _$RemoteShowCopyWithImpl<$Res>
    implements $RemoteShowCopyWith<$Res> {
  _$RemoteShowCopyWithImpl(this._self, this._then);

  final RemoteShow _self;
  final $Res Function(RemoteShow) _then;

/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? name = null,Object? type = null,Object? language = null,Object? genres = null,Object? status = null,Object? runtime = freezed,Object? averageRuntime = null,Object? premiered = null,Object? ended = freezed,Object? officialSite = freezed,Object? schedule = null,Object? rating = null,Object? weight = null,Object? network = freezed,Object? webChannel = freezed,Object? dvdCountry = freezed,Object? externals = freezed,Object? image = null,Object? summary = null,Object? updated = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,averageRuntime: null == averageRuntime ? _self.averageRuntime : averageRuntime // ignore: cast_nullable_to_non_nullable
as int,premiered: null == premiered ? _self.premiered : premiered // ignore: cast_nullable_to_non_nullable
as String,ended: freezed == ended ? _self.ended : ended // ignore: cast_nullable_to_non_nullable
as String?,officialSite: freezed == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String?,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as RemoteShowSchedule,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RemoteShowRating,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as RemoteShowNetwork?,webChannel: freezed == webChannel ? _self.webChannel : webChannel // ignore: cast_nullable_to_non_nullable
as dynamic,dvdCountry: freezed == dvdCountry ? _self.dvdCountry : dvdCountry // ignore: cast_nullable_to_non_nullable
as dynamic,externals: freezed == externals ? _self.externals : externals // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RemoteShowImage,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowScheduleCopyWith<$Res> get schedule {
  
  return $RemoteShowScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowRatingCopyWith<$Res> get rating {
  
  return $RemoteShowRatingCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowNetworkCopyWith<$Res>? get network {
    if (_self.network == null) {
    return null;
  }

  return $RemoteShowNetworkCopyWith<$Res>(_self.network!, (value) {
    return _then(_self.copyWith(network: value));
  });
}/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowImageCopyWith<$Res> get image {
  
  return $RemoteShowImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [RemoteShow].
extension RemoteShowPatterns on RemoteShow {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteShow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteShow() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteShow value)  $default,){
final _that = this;
switch (_that) {
case _RemoteShow():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteShow value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteShow() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String url,  String name,  String type,  String language,  List<String> genres,  String status,  int? runtime,  int averageRuntime,  String premiered,  String? ended,  String? officialSite,  RemoteShowSchedule schedule,  RemoteShowRating rating,  int weight,  RemoteShowNetwork? network,  dynamic webChannel,  dynamic dvdCountry,  Map<String, dynamic>? externals,  RemoteShowImage image,  String summary,  int updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteShow() when $default != null:
return $default(_that.id,_that.url,_that.name,_that.type,_that.language,_that.genres,_that.status,_that.runtime,_that.averageRuntime,_that.premiered,_that.ended,_that.officialSite,_that.schedule,_that.rating,_that.weight,_that.network,_that.webChannel,_that.dvdCountry,_that.externals,_that.image,_that.summary,_that.updated);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String url,  String name,  String type,  String language,  List<String> genres,  String status,  int? runtime,  int averageRuntime,  String premiered,  String? ended,  String? officialSite,  RemoteShowSchedule schedule,  RemoteShowRating rating,  int weight,  RemoteShowNetwork? network,  dynamic webChannel,  dynamic dvdCountry,  Map<String, dynamic>? externals,  RemoteShowImage image,  String summary,  int updated)  $default,) {final _that = this;
switch (_that) {
case _RemoteShow():
return $default(_that.id,_that.url,_that.name,_that.type,_that.language,_that.genres,_that.status,_that.runtime,_that.averageRuntime,_that.premiered,_that.ended,_that.officialSite,_that.schedule,_that.rating,_that.weight,_that.network,_that.webChannel,_that.dvdCountry,_that.externals,_that.image,_that.summary,_that.updated);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String url,  String name,  String type,  String language,  List<String> genres,  String status,  int? runtime,  int averageRuntime,  String premiered,  String? ended,  String? officialSite,  RemoteShowSchedule schedule,  RemoteShowRating rating,  int weight,  RemoteShowNetwork? network,  dynamic webChannel,  dynamic dvdCountry,  Map<String, dynamic>? externals,  RemoteShowImage image,  String summary,  int updated)?  $default,) {final _that = this;
switch (_that) {
case _RemoteShow() when $default != null:
return $default(_that.id,_that.url,_that.name,_that.type,_that.language,_that.genres,_that.status,_that.runtime,_that.averageRuntime,_that.premiered,_that.ended,_that.officialSite,_that.schedule,_that.rating,_that.weight,_that.network,_that.webChannel,_that.dvdCountry,_that.externals,_that.image,_that.summary,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteShow implements RemoteShow {
  const _RemoteShow({required this.id, required this.url, required this.name, required this.type, required this.language, required final  List<String> genres, required this.status, required this.runtime, required this.averageRuntime, required this.premiered, required this.ended, required this.officialSite, required this.schedule, required this.rating, required this.weight, required this.network, required this.webChannel, required this.dvdCountry, required final  Map<String, dynamic>? externals, required this.image, required this.summary, required this.updated}): _genres = genres,_externals = externals;
  factory _RemoteShow.fromJson(Map<String, dynamic> json) => _$RemoteShowFromJson(json);

@override final  int id;
@override final  String url;
@override final  String name;
@override final  String type;
@override final  String language;
 final  List<String> _genres;
@override List<String> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  String status;
@override final  int? runtime;
@override final  int averageRuntime;
// Convert to datetime
@override final  String premiered;
@override final  String? ended;
@override final  String? officialSite;
@override final  RemoteShowSchedule schedule;
@override final  RemoteShowRating rating;
@override final  int weight;
@override final  RemoteShowNetwork? network;
@override final  dynamic webChannel;
@override final  dynamic dvdCountry;
 final  Map<String, dynamic>? _externals;
@override Map<String, dynamic>? get externals {
  final value = _externals;
  if (value == null) return null;
  if (_externals is EqualUnmodifiableMapView) return _externals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  RemoteShowImage image;
@override final  String summary;
@override final  int updated;

/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteShowCopyWith<_RemoteShow> get copyWith => __$RemoteShowCopyWithImpl<_RemoteShow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteShowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteShow&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.language, language) || other.language == language)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.status, status) || other.status == status)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.averageRuntime, averageRuntime) || other.averageRuntime == averageRuntime)&&(identical(other.premiered, premiered) || other.premiered == premiered)&&(identical(other.ended, ended) || other.ended == ended)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite)&&(identical(other.schedule, schedule) || other.schedule == schedule)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.network, network) || other.network == network)&&const DeepCollectionEquality().equals(other.webChannel, webChannel)&&const DeepCollectionEquality().equals(other.dvdCountry, dvdCountry)&&const DeepCollectionEquality().equals(other._externals, _externals)&&(identical(other.image, image) || other.image == image)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,url,name,type,language,const DeepCollectionEquality().hash(_genres),status,runtime,averageRuntime,premiered,ended,officialSite,schedule,rating,weight,network,const DeepCollectionEquality().hash(webChannel),const DeepCollectionEquality().hash(dvdCountry),const DeepCollectionEquality().hash(_externals),image,summary,updated]);

@override
String toString() {
  return 'RemoteShow(id: $id, url: $url, name: $name, type: $type, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, officialSite: $officialSite, schedule: $schedule, rating: $rating, weight: $weight, network: $network, webChannel: $webChannel, dvdCountry: $dvdCountry, externals: $externals, image: $image, summary: $summary, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$RemoteShowCopyWith<$Res> implements $RemoteShowCopyWith<$Res> {
  factory _$RemoteShowCopyWith(_RemoteShow value, $Res Function(_RemoteShow) _then) = __$RemoteShowCopyWithImpl;
@override @useResult
$Res call({
 int id, String url, String name, String type, String language, List<String> genres, String status, int? runtime, int averageRuntime, String premiered, String? ended, String? officialSite, RemoteShowSchedule schedule, RemoteShowRating rating, int weight, RemoteShowNetwork? network, dynamic webChannel, dynamic dvdCountry, Map<String, dynamic>? externals, RemoteShowImage image, String summary, int updated
});


@override $RemoteShowScheduleCopyWith<$Res> get schedule;@override $RemoteShowRatingCopyWith<$Res> get rating;@override $RemoteShowNetworkCopyWith<$Res>? get network;@override $RemoteShowImageCopyWith<$Res> get image;

}
/// @nodoc
class __$RemoteShowCopyWithImpl<$Res>
    implements _$RemoteShowCopyWith<$Res> {
  __$RemoteShowCopyWithImpl(this._self, this._then);

  final _RemoteShow _self;
  final $Res Function(_RemoteShow) _then;

/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? name = null,Object? type = null,Object? language = null,Object? genres = null,Object? status = null,Object? runtime = freezed,Object? averageRuntime = null,Object? premiered = null,Object? ended = freezed,Object? officialSite = freezed,Object? schedule = null,Object? rating = null,Object? weight = null,Object? network = freezed,Object? webChannel = freezed,Object? dvdCountry = freezed,Object? externals = freezed,Object? image = null,Object? summary = null,Object? updated = null,}) {
  return _then(_RemoteShow(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,averageRuntime: null == averageRuntime ? _self.averageRuntime : averageRuntime // ignore: cast_nullable_to_non_nullable
as int,premiered: null == premiered ? _self.premiered : premiered // ignore: cast_nullable_to_non_nullable
as String,ended: freezed == ended ? _self.ended : ended // ignore: cast_nullable_to_non_nullable
as String?,officialSite: freezed == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String?,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as RemoteShowSchedule,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RemoteShowRating,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as RemoteShowNetwork?,webChannel: freezed == webChannel ? _self.webChannel : webChannel // ignore: cast_nullable_to_non_nullable
as dynamic,dvdCountry: freezed == dvdCountry ? _self.dvdCountry : dvdCountry // ignore: cast_nullable_to_non_nullable
as dynamic,externals: freezed == externals ? _self._externals : externals // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as RemoteShowImage,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowScheduleCopyWith<$Res> get schedule {
  
  return $RemoteShowScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowRatingCopyWith<$Res> get rating {
  
  return $RemoteShowRatingCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowNetworkCopyWith<$Res>? get network {
    if (_self.network == null) {
    return null;
  }

  return $RemoteShowNetworkCopyWith<$Res>(_self.network!, (value) {
    return _then(_self.copyWith(network: value));
  });
}/// Create a copy of RemoteShow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowImageCopyWith<$Res> get image {
  
  return $RemoteShowImageCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$RemoteShowSchedule {

 String get time; List<String> get days;
/// Create a copy of RemoteShowSchedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteShowScheduleCopyWith<RemoteShowSchedule> get copyWith => _$RemoteShowScheduleCopyWithImpl<RemoteShowSchedule>(this as RemoteShowSchedule, _$identity);

  /// Serializes this RemoteShowSchedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteShowSchedule&&(identical(other.time, time) || other.time == time)&&const DeepCollectionEquality().equals(other.days, days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,const DeepCollectionEquality().hash(days));

@override
String toString() {
  return 'RemoteShowSchedule(time: $time, days: $days)';
}


}

/// @nodoc
abstract mixin class $RemoteShowScheduleCopyWith<$Res>  {
  factory $RemoteShowScheduleCopyWith(RemoteShowSchedule value, $Res Function(RemoteShowSchedule) _then) = _$RemoteShowScheduleCopyWithImpl;
@useResult
$Res call({
 String time, List<String> days
});




}
/// @nodoc
class _$RemoteShowScheduleCopyWithImpl<$Res>
    implements $RemoteShowScheduleCopyWith<$Res> {
  _$RemoteShowScheduleCopyWithImpl(this._self, this._then);

  final RemoteShowSchedule _self;
  final $Res Function(RemoteShowSchedule) _then;

/// Create a copy of RemoteShowSchedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? days = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteShowSchedule].
extension RemoteShowSchedulePatterns on RemoteShowSchedule {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteShowSchedule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteShowSchedule() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteShowSchedule value)  $default,){
final _that = this;
switch (_that) {
case _RemoteShowSchedule():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteShowSchedule value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteShowSchedule() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String time,  List<String> days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteShowSchedule() when $default != null:
return $default(_that.time,_that.days);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String time,  List<String> days)  $default,) {final _that = this;
switch (_that) {
case _RemoteShowSchedule():
return $default(_that.time,_that.days);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String time,  List<String> days)?  $default,) {final _that = this;
switch (_that) {
case _RemoteShowSchedule() when $default != null:
return $default(_that.time,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteShowSchedule implements RemoteShowSchedule {
  const _RemoteShowSchedule({required this.time, required final  List<String> days}): _days = days;
  factory _RemoteShowSchedule.fromJson(Map<String, dynamic> json) => _$RemoteShowScheduleFromJson(json);

@override final  String time;
 final  List<String> _days;
@override List<String> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}


/// Create a copy of RemoteShowSchedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteShowScheduleCopyWith<_RemoteShowSchedule> get copyWith => __$RemoteShowScheduleCopyWithImpl<_RemoteShowSchedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteShowScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteShowSchedule&&(identical(other.time, time) || other.time == time)&&const DeepCollectionEquality().equals(other._days, _days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,const DeepCollectionEquality().hash(_days));

@override
String toString() {
  return 'RemoteShowSchedule(time: $time, days: $days)';
}


}

/// @nodoc
abstract mixin class _$RemoteShowScheduleCopyWith<$Res> implements $RemoteShowScheduleCopyWith<$Res> {
  factory _$RemoteShowScheduleCopyWith(_RemoteShowSchedule value, $Res Function(_RemoteShowSchedule) _then) = __$RemoteShowScheduleCopyWithImpl;
@override @useResult
$Res call({
 String time, List<String> days
});




}
/// @nodoc
class __$RemoteShowScheduleCopyWithImpl<$Res>
    implements _$RemoteShowScheduleCopyWith<$Res> {
  __$RemoteShowScheduleCopyWithImpl(this._self, this._then);

  final _RemoteShowSchedule _self;
  final $Res Function(_RemoteShowSchedule) _then;

/// Create a copy of RemoteShowSchedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? days = null,}) {
  return _then(_RemoteShowSchedule(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$RemoteShowRating {

 double? get average;
/// Create a copy of RemoteShowRating
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteShowRatingCopyWith<RemoteShowRating> get copyWith => _$RemoteShowRatingCopyWithImpl<RemoteShowRating>(this as RemoteShowRating, _$identity);

  /// Serializes this RemoteShowRating to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteShowRating&&(identical(other.average, average) || other.average == average));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average);

@override
String toString() {
  return 'RemoteShowRating(average: $average)';
}


}

/// @nodoc
abstract mixin class $RemoteShowRatingCopyWith<$Res>  {
  factory $RemoteShowRatingCopyWith(RemoteShowRating value, $Res Function(RemoteShowRating) _then) = _$RemoteShowRatingCopyWithImpl;
@useResult
$Res call({
 double? average
});




}
/// @nodoc
class _$RemoteShowRatingCopyWithImpl<$Res>
    implements $RemoteShowRatingCopyWith<$Res> {
  _$RemoteShowRatingCopyWithImpl(this._self, this._then);

  final RemoteShowRating _self;
  final $Res Function(RemoteShowRating) _then;

/// Create a copy of RemoteShowRating
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? average = freezed,}) {
  return _then(_self.copyWith(
average: freezed == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteShowRating].
extension RemoteShowRatingPatterns on RemoteShowRating {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteShowRating value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteShowRating() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteShowRating value)  $default,){
final _that = this;
switch (_that) {
case _RemoteShowRating():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteShowRating value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteShowRating() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? average)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteShowRating() when $default != null:
return $default(_that.average);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? average)  $default,) {final _that = this;
switch (_that) {
case _RemoteShowRating():
return $default(_that.average);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? average)?  $default,) {final _that = this;
switch (_that) {
case _RemoteShowRating() when $default != null:
return $default(_that.average);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteShowRating implements RemoteShowRating {
  const _RemoteShowRating({required this.average});
  factory _RemoteShowRating.fromJson(Map<String, dynamic> json) => _$RemoteShowRatingFromJson(json);

@override final  double? average;

/// Create a copy of RemoteShowRating
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteShowRatingCopyWith<_RemoteShowRating> get copyWith => __$RemoteShowRatingCopyWithImpl<_RemoteShowRating>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteShowRatingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteShowRating&&(identical(other.average, average) || other.average == average));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,average);

@override
String toString() {
  return 'RemoteShowRating(average: $average)';
}


}

/// @nodoc
abstract mixin class _$RemoteShowRatingCopyWith<$Res> implements $RemoteShowRatingCopyWith<$Res> {
  factory _$RemoteShowRatingCopyWith(_RemoteShowRating value, $Res Function(_RemoteShowRating) _then) = __$RemoteShowRatingCopyWithImpl;
@override @useResult
$Res call({
 double? average
});




}
/// @nodoc
class __$RemoteShowRatingCopyWithImpl<$Res>
    implements _$RemoteShowRatingCopyWith<$Res> {
  __$RemoteShowRatingCopyWithImpl(this._self, this._then);

  final _RemoteShowRating _self;
  final $Res Function(_RemoteShowRating) _then;

/// Create a copy of RemoteShowRating
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? average = freezed,}) {
  return _then(_RemoteShowRating(
average: freezed == average ? _self.average : average // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$RemoteShowNetwork {

 int get id; String get name; RemoteShowNetworkCountry get country; String? get officialSite;
/// Create a copy of RemoteShowNetwork
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteShowNetworkCopyWith<RemoteShowNetwork> get copyWith => _$RemoteShowNetworkCopyWithImpl<RemoteShowNetwork>(this as RemoteShowNetwork, _$identity);

  /// Serializes this RemoteShowNetwork to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteShowNetwork&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,country,officialSite);

@override
String toString() {
  return 'RemoteShowNetwork(id: $id, name: $name, country: $country, officialSite: $officialSite)';
}


}

/// @nodoc
abstract mixin class $RemoteShowNetworkCopyWith<$Res>  {
  factory $RemoteShowNetworkCopyWith(RemoteShowNetwork value, $Res Function(RemoteShowNetwork) _then) = _$RemoteShowNetworkCopyWithImpl;
@useResult
$Res call({
 int id, String name, RemoteShowNetworkCountry country, String? officialSite
});


$RemoteShowNetworkCountryCopyWith<$Res> get country;

}
/// @nodoc
class _$RemoteShowNetworkCopyWithImpl<$Res>
    implements $RemoteShowNetworkCopyWith<$Res> {
  _$RemoteShowNetworkCopyWithImpl(this._self, this._then);

  final RemoteShowNetwork _self;
  final $Res Function(RemoteShowNetwork) _then;

/// Create a copy of RemoteShowNetwork
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? country = null,Object? officialSite = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as RemoteShowNetworkCountry,officialSite: freezed == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RemoteShowNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowNetworkCountryCopyWith<$Res> get country {
  
  return $RemoteShowNetworkCountryCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// Adds pattern-matching-related methods to [RemoteShowNetwork].
extension RemoteShowNetworkPatterns on RemoteShowNetwork {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteShowNetwork value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteShowNetwork() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteShowNetwork value)  $default,){
final _that = this;
switch (_that) {
case _RemoteShowNetwork():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteShowNetwork value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteShowNetwork() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  RemoteShowNetworkCountry country,  String? officialSite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteShowNetwork() when $default != null:
return $default(_that.id,_that.name,_that.country,_that.officialSite);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  RemoteShowNetworkCountry country,  String? officialSite)  $default,) {final _that = this;
switch (_that) {
case _RemoteShowNetwork():
return $default(_that.id,_that.name,_that.country,_that.officialSite);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  RemoteShowNetworkCountry country,  String? officialSite)?  $default,) {final _that = this;
switch (_that) {
case _RemoteShowNetwork() when $default != null:
return $default(_that.id,_that.name,_that.country,_that.officialSite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteShowNetwork implements RemoteShowNetwork {
  const _RemoteShowNetwork({required this.id, required this.name, required this.country, required this.officialSite});
  factory _RemoteShowNetwork.fromJson(Map<String, dynamic> json) => _$RemoteShowNetworkFromJson(json);

@override final  int id;
@override final  String name;
@override final  RemoteShowNetworkCountry country;
@override final  String? officialSite;

/// Create a copy of RemoteShowNetwork
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteShowNetworkCopyWith<_RemoteShowNetwork> get copyWith => __$RemoteShowNetworkCopyWithImpl<_RemoteShowNetwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteShowNetworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteShowNetwork&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,country,officialSite);

@override
String toString() {
  return 'RemoteShowNetwork(id: $id, name: $name, country: $country, officialSite: $officialSite)';
}


}

/// @nodoc
abstract mixin class _$RemoteShowNetworkCopyWith<$Res> implements $RemoteShowNetworkCopyWith<$Res> {
  factory _$RemoteShowNetworkCopyWith(_RemoteShowNetwork value, $Res Function(_RemoteShowNetwork) _then) = __$RemoteShowNetworkCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, RemoteShowNetworkCountry country, String? officialSite
});


@override $RemoteShowNetworkCountryCopyWith<$Res> get country;

}
/// @nodoc
class __$RemoteShowNetworkCopyWithImpl<$Res>
    implements _$RemoteShowNetworkCopyWith<$Res> {
  __$RemoteShowNetworkCopyWithImpl(this._self, this._then);

  final _RemoteShowNetwork _self;
  final $Res Function(_RemoteShowNetwork) _then;

/// Create a copy of RemoteShowNetwork
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? country = null,Object? officialSite = freezed,}) {
  return _then(_RemoteShowNetwork(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as RemoteShowNetworkCountry,officialSite: freezed == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RemoteShowNetwork
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoteShowNetworkCountryCopyWith<$Res> get country {
  
  return $RemoteShowNetworkCountryCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// @nodoc
mixin _$RemoteShowNetworkCountry {

 String get name; String get code; String get timezone;
/// Create a copy of RemoteShowNetworkCountry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteShowNetworkCountryCopyWith<RemoteShowNetworkCountry> get copyWith => _$RemoteShowNetworkCountryCopyWithImpl<RemoteShowNetworkCountry>(this as RemoteShowNetworkCountry, _$identity);

  /// Serializes this RemoteShowNetworkCountry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteShowNetworkCountry&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,timezone);

@override
String toString() {
  return 'RemoteShowNetworkCountry(name: $name, code: $code, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class $RemoteShowNetworkCountryCopyWith<$Res>  {
  factory $RemoteShowNetworkCountryCopyWith(RemoteShowNetworkCountry value, $Res Function(RemoteShowNetworkCountry) _then) = _$RemoteShowNetworkCountryCopyWithImpl;
@useResult
$Res call({
 String name, String code, String timezone
});




}
/// @nodoc
class _$RemoteShowNetworkCountryCopyWithImpl<$Res>
    implements $RemoteShowNetworkCountryCopyWith<$Res> {
  _$RemoteShowNetworkCountryCopyWithImpl(this._self, this._then);

  final RemoteShowNetworkCountry _self;
  final $Res Function(RemoteShowNetworkCountry) _then;

/// Create a copy of RemoteShowNetworkCountry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,Object? timezone = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteShowNetworkCountry].
extension RemoteShowNetworkCountryPatterns on RemoteShowNetworkCountry {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteShowNetworkCountry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteShowNetworkCountry() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteShowNetworkCountry value)  $default,){
final _that = this;
switch (_that) {
case _RemoteShowNetworkCountry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteShowNetworkCountry value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteShowNetworkCountry() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code,  String timezone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteShowNetworkCountry() when $default != null:
return $default(_that.name,_that.code,_that.timezone);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code,  String timezone)  $default,) {final _that = this;
switch (_that) {
case _RemoteShowNetworkCountry():
return $default(_that.name,_that.code,_that.timezone);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code,  String timezone)?  $default,) {final _that = this;
switch (_that) {
case _RemoteShowNetworkCountry() when $default != null:
return $default(_that.name,_that.code,_that.timezone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteShowNetworkCountry implements RemoteShowNetworkCountry {
  const _RemoteShowNetworkCountry({required this.name, required this.code, required this.timezone});
  factory _RemoteShowNetworkCountry.fromJson(Map<String, dynamic> json) => _$RemoteShowNetworkCountryFromJson(json);

@override final  String name;
@override final  String code;
@override final  String timezone;

/// Create a copy of RemoteShowNetworkCountry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteShowNetworkCountryCopyWith<_RemoteShowNetworkCountry> get copyWith => __$RemoteShowNetworkCountryCopyWithImpl<_RemoteShowNetworkCountry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteShowNetworkCountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteShowNetworkCountry&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.timezone, timezone) || other.timezone == timezone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,timezone);

@override
String toString() {
  return 'RemoteShowNetworkCountry(name: $name, code: $code, timezone: $timezone)';
}


}

/// @nodoc
abstract mixin class _$RemoteShowNetworkCountryCopyWith<$Res> implements $RemoteShowNetworkCountryCopyWith<$Res> {
  factory _$RemoteShowNetworkCountryCopyWith(_RemoteShowNetworkCountry value, $Res Function(_RemoteShowNetworkCountry) _then) = __$RemoteShowNetworkCountryCopyWithImpl;
@override @useResult
$Res call({
 String name, String code, String timezone
});




}
/// @nodoc
class __$RemoteShowNetworkCountryCopyWithImpl<$Res>
    implements _$RemoteShowNetworkCountryCopyWith<$Res> {
  __$RemoteShowNetworkCountryCopyWithImpl(this._self, this._then);

  final _RemoteShowNetworkCountry _self;
  final $Res Function(_RemoteShowNetworkCountry) _then;

/// Create a copy of RemoteShowNetworkCountry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? timezone = null,}) {
  return _then(_RemoteShowNetworkCountry(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RemoteShowImage {

 String get medium; String get original;
/// Create a copy of RemoteShowImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteShowImageCopyWith<RemoteShowImage> get copyWith => _$RemoteShowImageCopyWithImpl<RemoteShowImage>(this as RemoteShowImage, _$identity);

  /// Serializes this RemoteShowImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteShowImage&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.original, original) || other.original == original));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,medium,original);

@override
String toString() {
  return 'RemoteShowImage(medium: $medium, original: $original)';
}


}

/// @nodoc
abstract mixin class $RemoteShowImageCopyWith<$Res>  {
  factory $RemoteShowImageCopyWith(RemoteShowImage value, $Res Function(RemoteShowImage) _then) = _$RemoteShowImageCopyWithImpl;
@useResult
$Res call({
 String medium, String original
});




}
/// @nodoc
class _$RemoteShowImageCopyWithImpl<$Res>
    implements $RemoteShowImageCopyWith<$Res> {
  _$RemoteShowImageCopyWithImpl(this._self, this._then);

  final RemoteShowImage _self;
  final $Res Function(RemoteShowImage) _then;

/// Create a copy of RemoteShowImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? medium = null,Object? original = null,}) {
  return _then(_self.copyWith(
medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String,original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteShowImage].
extension RemoteShowImagePatterns on RemoteShowImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteShowImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteShowImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteShowImage value)  $default,){
final _that = this;
switch (_that) {
case _RemoteShowImage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteShowImage value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteShowImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String medium,  String original)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteShowImage() when $default != null:
return $default(_that.medium,_that.original);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String medium,  String original)  $default,) {final _that = this;
switch (_that) {
case _RemoteShowImage():
return $default(_that.medium,_that.original);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String medium,  String original)?  $default,) {final _that = this;
switch (_that) {
case _RemoteShowImage() when $default != null:
return $default(_that.medium,_that.original);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteShowImage implements RemoteShowImage {
  const _RemoteShowImage({required this.medium, required this.original});
  factory _RemoteShowImage.fromJson(Map<String, dynamic> json) => _$RemoteShowImageFromJson(json);

@override final  String medium;
@override final  String original;

/// Create a copy of RemoteShowImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteShowImageCopyWith<_RemoteShowImage> get copyWith => __$RemoteShowImageCopyWithImpl<_RemoteShowImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteShowImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteShowImage&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.original, original) || other.original == original));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,medium,original);

@override
String toString() {
  return 'RemoteShowImage(medium: $medium, original: $original)';
}


}

/// @nodoc
abstract mixin class _$RemoteShowImageCopyWith<$Res> implements $RemoteShowImageCopyWith<$Res> {
  factory _$RemoteShowImageCopyWith(_RemoteShowImage value, $Res Function(_RemoteShowImage) _then) = __$RemoteShowImageCopyWithImpl;
@override @useResult
$Res call({
 String medium, String original
});




}
/// @nodoc
class __$RemoteShowImageCopyWithImpl<$Res>
    implements _$RemoteShowImageCopyWith<$Res> {
  __$RemoteShowImageCopyWithImpl(this._self, this._then);

  final _RemoteShowImage _self;
  final $Res Function(_RemoteShowImage) _then;

/// Create a copy of RemoteShowImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? medium = null,Object? original = null,}) {
  return _then(_RemoteShowImage(
medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String,original: null == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
