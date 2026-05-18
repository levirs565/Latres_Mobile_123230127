// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tvshow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TVShow {

 int get id; String get name; double get rating; String get mediumImage; String get language; bool get isFavorite;
/// Create a copy of TVShow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TVShowCopyWith<TVShow> get copyWith => _$TVShowCopyWithImpl<TVShow>(this as TVShow, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TVShow&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.mediumImage, mediumImage) || other.mediumImage == mediumImage)&&(identical(other.language, language) || other.language == language)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,rating,mediumImage,language,isFavorite);

@override
String toString() {
  return 'TVShow(id: $id, name: $name, rating: $rating, mediumImage: $mediumImage, language: $language, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $TVShowCopyWith<$Res>  {
  factory $TVShowCopyWith(TVShow value, $Res Function(TVShow) _then) = _$TVShowCopyWithImpl;
@useResult
$Res call({
 int id, String name, double rating, String mediumImage, String language, bool isFavorite
});




}
/// @nodoc
class _$TVShowCopyWithImpl<$Res>
    implements $TVShowCopyWith<$Res> {
  _$TVShowCopyWithImpl(this._self, this._then);

  final TVShow _self;
  final $Res Function(TVShow) _then;

/// Create a copy of TVShow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? rating = null,Object? mediumImage = null,Object? language = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,mediumImage: null == mediumImage ? _self.mediumImage : mediumImage // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TVShow].
extension TVShowPatterns on TVShow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TVShow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TVShow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TVShow value)  $default,){
final _that = this;
switch (_that) {
case _TVShow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TVShow value)?  $default,){
final _that = this;
switch (_that) {
case _TVShow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double rating,  String mediumImage,  String language,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TVShow() when $default != null:
return $default(_that.id,_that.name,_that.rating,_that.mediumImage,_that.language,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double rating,  String mediumImage,  String language,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _TVShow():
return $default(_that.id,_that.name,_that.rating,_that.mediumImage,_that.language,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double rating,  String mediumImage,  String language,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _TVShow() when $default != null:
return $default(_that.id,_that.name,_that.rating,_that.mediumImage,_that.language,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _TVShow implements TVShow {
  const _TVShow({required this.id, required this.name, required this.rating, required this.mediumImage, required this.language, required this.isFavorite});
  

@override final  int id;
@override final  String name;
@override final  double rating;
@override final  String mediumImage;
@override final  String language;
@override final  bool isFavorite;

/// Create a copy of TVShow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TVShowCopyWith<_TVShow> get copyWith => __$TVShowCopyWithImpl<_TVShow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TVShow&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.mediumImage, mediumImage) || other.mediumImage == mediumImage)&&(identical(other.language, language) || other.language == language)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,rating,mediumImage,language,isFavorite);

@override
String toString() {
  return 'TVShow(id: $id, name: $name, rating: $rating, mediumImage: $mediumImage, language: $language, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$TVShowCopyWith<$Res> implements $TVShowCopyWith<$Res> {
  factory _$TVShowCopyWith(_TVShow value, $Res Function(_TVShow) _then) = __$TVShowCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double rating, String mediumImage, String language, bool isFavorite
});




}
/// @nodoc
class __$TVShowCopyWithImpl<$Res>
    implements _$TVShowCopyWith<$Res> {
  __$TVShowCopyWithImpl(this._self, this._then);

  final _TVShow _self;
  final $Res Function(_TVShow) _then;

/// Create a copy of TVShow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? rating = null,Object? mediumImage = null,Object? language = null,Object? isFavorite = null,}) {
  return _then(_TVShow(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,mediumImage: null == mediumImage ? _self.mediumImage : mediumImage // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
