// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoteMeal {

@JsonKey(name: "idMeal") String get id;@JsonKey(name: "strMeal") String get meal;@JsonKey(name: "strMealThumb") String get mealThumb;@JsonKey(name: "strArea") String? get area;@JsonKey(name: "strCountry") String get country;
/// Create a copy of RemoteMeal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteMealCopyWith<RemoteMeal> get copyWith => _$RemoteMealCopyWithImpl<RemoteMeal>(this as RemoteMeal, _$identity);

  /// Serializes this RemoteMeal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteMeal&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meal,mealThumb,area,country);

@override
String toString() {
  return 'RemoteMeal(id: $id, meal: $meal, mealThumb: $mealThumb, area: $area, country: $country)';
}


}

/// @nodoc
abstract mixin class $RemoteMealCopyWith<$Res>  {
  factory $RemoteMealCopyWith(RemoteMeal value, $Res Function(RemoteMeal) _then) = _$RemoteMealCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "idMeal") String id,@JsonKey(name: "strMeal") String meal,@JsonKey(name: "strMealThumb") String mealThumb,@JsonKey(name: "strArea") String? area,@JsonKey(name: "strCountry") String country
});




}
/// @nodoc
class _$RemoteMealCopyWithImpl<$Res>
    implements $RemoteMealCopyWith<$Res> {
  _$RemoteMealCopyWithImpl(this._self, this._then);

  final RemoteMeal _self;
  final $Res Function(RemoteMeal) _then;

/// Create a copy of RemoteMeal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? meal = null,Object? mealThumb = null,Object? area = freezed,Object? country = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String,mealThumb: null == mealThumb ? _self.mealThumb : mealThumb // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteMeal].
extension RemoteMealPatterns on RemoteMeal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteMeal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteMeal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteMeal value)  $default,){
final _that = this;
switch (_that) {
case _RemoteMeal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteMeal value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteMeal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "idMeal")  String id, @JsonKey(name: "strMeal")  String meal, @JsonKey(name: "strMealThumb")  String mealThumb, @JsonKey(name: "strArea")  String? area, @JsonKey(name: "strCountry")  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteMeal() when $default != null:
return $default(_that.id,_that.meal,_that.mealThumb,_that.area,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "idMeal")  String id, @JsonKey(name: "strMeal")  String meal, @JsonKey(name: "strMealThumb")  String mealThumb, @JsonKey(name: "strArea")  String? area, @JsonKey(name: "strCountry")  String country)  $default,) {final _that = this;
switch (_that) {
case _RemoteMeal():
return $default(_that.id,_that.meal,_that.mealThumb,_that.area,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "idMeal")  String id, @JsonKey(name: "strMeal")  String meal, @JsonKey(name: "strMealThumb")  String mealThumb, @JsonKey(name: "strArea")  String? area, @JsonKey(name: "strCountry")  String country)?  $default,) {final _that = this;
switch (_that) {
case _RemoteMeal() when $default != null:
return $default(_that.id,_that.meal,_that.mealThumb,_that.area,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteMeal implements RemoteMeal {
  const _RemoteMeal({@JsonKey(name: "idMeal") required this.id, @JsonKey(name: "strMeal") required this.meal, @JsonKey(name: "strMealThumb") required this.mealThumb, @JsonKey(name: "strArea") required this.area, @JsonKey(name: "strCountry") required this.country});
  factory _RemoteMeal.fromJson(Map<String, dynamic> json) => _$RemoteMealFromJson(json);

@override@JsonKey(name: "idMeal") final  String id;
@override@JsonKey(name: "strMeal") final  String meal;
@override@JsonKey(name: "strMealThumb") final  String mealThumb;
@override@JsonKey(name: "strArea") final  String? area;
@override@JsonKey(name: "strCountry") final  String country;

/// Create a copy of RemoteMeal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteMealCopyWith<_RemoteMeal> get copyWith => __$RemoteMealCopyWithImpl<_RemoteMeal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteMealToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteMeal&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meal,mealThumb,area,country);

@override
String toString() {
  return 'RemoteMeal(id: $id, meal: $meal, mealThumb: $mealThumb, area: $area, country: $country)';
}


}

/// @nodoc
abstract mixin class _$RemoteMealCopyWith<$Res> implements $RemoteMealCopyWith<$Res> {
  factory _$RemoteMealCopyWith(_RemoteMeal value, $Res Function(_RemoteMeal) _then) = __$RemoteMealCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "idMeal") String id,@JsonKey(name: "strMeal") String meal,@JsonKey(name: "strMealThumb") String mealThumb,@JsonKey(name: "strArea") String? area,@JsonKey(name: "strCountry") String country
});




}
/// @nodoc
class __$RemoteMealCopyWithImpl<$Res>
    implements _$RemoteMealCopyWith<$Res> {
  __$RemoteMealCopyWithImpl(this._self, this._then);

  final _RemoteMeal _self;
  final $Res Function(_RemoteMeal) _then;

/// Create a copy of RemoteMeal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? meal = null,Object? mealThumb = null,Object? area = freezed,Object? country = null,}) {
  return _then(_RemoteMeal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String,mealThumb: null == mealThumb ? _self.mealThumb : mealThumb // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RemoteMealList {

@JsonKey(name: "meals") List<RemoteMeal> get meals;
/// Create a copy of RemoteMealList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteMealListCopyWith<RemoteMealList> get copyWith => _$RemoteMealListCopyWithImpl<RemoteMealList>(this as RemoteMealList, _$identity);

  /// Serializes this RemoteMealList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteMealList&&const DeepCollectionEquality().equals(other.meals, meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'RemoteMealList(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $RemoteMealListCopyWith<$Res>  {
  factory $RemoteMealListCopyWith(RemoteMealList value, $Res Function(RemoteMealList) _then) = _$RemoteMealListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "meals") List<RemoteMeal> meals
});




}
/// @nodoc
class _$RemoteMealListCopyWithImpl<$Res>
    implements $RemoteMealListCopyWith<$Res> {
  _$RemoteMealListCopyWithImpl(this._self, this._then);

  final RemoteMealList _self;
  final $Res Function(RemoteMealList) _then;

/// Create a copy of RemoteMealList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = null,}) {
  return _then(_self.copyWith(
meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<RemoteMeal>,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteMealList].
extension RemoteMealListPatterns on RemoteMealList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteMealList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteMealList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteMealList value)  $default,){
final _that = this;
switch (_that) {
case _RemoteMealList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteMealList value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteMealList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "meals")  List<RemoteMeal> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteMealList() when $default != null:
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "meals")  List<RemoteMeal> meals)  $default,) {final _that = this;
switch (_that) {
case _RemoteMealList():
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "meals")  List<RemoteMeal> meals)?  $default,) {final _that = this;
switch (_that) {
case _RemoteMealList() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteMealList implements RemoteMealList {
  const _RemoteMealList({@JsonKey(name: "meals") required final  List<RemoteMeal> meals}): _meals = meals;
  factory _RemoteMealList.fromJson(Map<String, dynamic> json) => _$RemoteMealListFromJson(json);

 final  List<RemoteMeal> _meals;
@override@JsonKey(name: "meals") List<RemoteMeal> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of RemoteMealList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteMealListCopyWith<_RemoteMealList> get copyWith => __$RemoteMealListCopyWithImpl<_RemoteMealList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteMealListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteMealList&&const DeepCollectionEquality().equals(other._meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'RemoteMealList(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$RemoteMealListCopyWith<$Res> implements $RemoteMealListCopyWith<$Res> {
  factory _$RemoteMealListCopyWith(_RemoteMealList value, $Res Function(_RemoteMealList) _then) = __$RemoteMealListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "meals") List<RemoteMeal> meals
});




}
/// @nodoc
class __$RemoteMealListCopyWithImpl<$Res>
    implements _$RemoteMealListCopyWith<$Res> {
  __$RemoteMealListCopyWithImpl(this._self, this._then);

  final _RemoteMealList _self;
  final $Res Function(_RemoteMealList) _then;

/// Create a copy of RemoteMealList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = null,}) {
  return _then(_RemoteMealList(
meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<RemoteMeal>,
  ));
}


}


/// @nodoc
mixin _$RemoteMealDetail {

@JsonKey(name: "idMeal") String get id;@JsonKey(name: "strMeal") String get meal;@JsonKey(name: "strMealAlternate") String? get mealAlternate;@JsonKey(name: "strCategory") String get category;@JsonKey(name: "strArea") String? get area;@JsonKey(name: "strCountry") String get country;@JsonKey(name: "strInstructions") String get instructions;@JsonKey(name: "strMealThumb") String get mealThumb;@JsonKey(name: "strTags") String? get tags;@JsonKey(name: "strYoutube") String get youtube;@JsonKey(fromJson: _ingredientsFromJson) List<String> get ingredients;@JsonKey(fromJson: _measureFromJson) List<String> get measures;@JsonKey(name: "strSource") String? get source;@JsonKey(name: "strImageSource") String? get imageSource;@JsonKey(name: "strCreativeCommonsConfirmed") String? get creativeCommonsConfirmed;@JsonKey(name: "dateModified") String? get dateModified;
/// Create a copy of RemoteMealDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteMealDetailCopyWith<RemoteMealDetail> get copyWith => _$RemoteMealDetailCopyWithImpl<RemoteMealDetail>(this as RemoteMealDetail, _$identity);

  /// Serializes this RemoteMealDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteMealDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealAlternate, mealAlternate) || other.mealAlternate == mealAlternate)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.measures, measures)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource)&&(identical(other.creativeCommonsConfirmed, creativeCommonsConfirmed) || other.creativeCommonsConfirmed == creativeCommonsConfirmed)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meal,mealAlternate,category,area,country,instructions,mealThumb,tags,youtube,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(measures),source,imageSource,creativeCommonsConfirmed,dateModified);

@override
String toString() {
  return 'RemoteMealDetail(id: $id, meal: $meal, mealAlternate: $mealAlternate, category: $category, area: $area, country: $country, instructions: $instructions, mealThumb: $mealThumb, tags: $tags, youtube: $youtube, ingredients: $ingredients, measures: $measures, source: $source, imageSource: $imageSource, creativeCommonsConfirmed: $creativeCommonsConfirmed, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class $RemoteMealDetailCopyWith<$Res>  {
  factory $RemoteMealDetailCopyWith(RemoteMealDetail value, $Res Function(RemoteMealDetail) _then) = _$RemoteMealDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "idMeal") String id,@JsonKey(name: "strMeal") String meal,@JsonKey(name: "strMealAlternate") String? mealAlternate,@JsonKey(name: "strCategory") String category,@JsonKey(name: "strArea") String? area,@JsonKey(name: "strCountry") String country,@JsonKey(name: "strInstructions") String instructions,@JsonKey(name: "strMealThumb") String mealThumb,@JsonKey(name: "strTags") String? tags,@JsonKey(name: "strYoutube") String youtube,@JsonKey(fromJson: _ingredientsFromJson) List<String> ingredients,@JsonKey(fromJson: _measureFromJson) List<String> measures,@JsonKey(name: "strSource") String? source,@JsonKey(name: "strImageSource") String? imageSource,@JsonKey(name: "strCreativeCommonsConfirmed") String? creativeCommonsConfirmed,@JsonKey(name: "dateModified") String? dateModified
});




}
/// @nodoc
class _$RemoteMealDetailCopyWithImpl<$Res>
    implements $RemoteMealDetailCopyWith<$Res> {
  _$RemoteMealDetailCopyWithImpl(this._self, this._then);

  final RemoteMealDetail _self;
  final $Res Function(RemoteMealDetail) _then;

/// Create a copy of RemoteMealDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? meal = null,Object? mealAlternate = freezed,Object? category = null,Object? area = freezed,Object? country = null,Object? instructions = null,Object? mealThumb = null,Object? tags = freezed,Object? youtube = null,Object? ingredients = null,Object? measures = null,Object? source = freezed,Object? imageSource = freezed,Object? creativeCommonsConfirmed = freezed,Object? dateModified = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String,mealAlternate: freezed == mealAlternate ? _self.mealAlternate : mealAlternate // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,mealThumb: null == mealThumb ? _self.mealThumb : mealThumb // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,youtube: null == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,measures: null == measures ? _self.measures : measures // ignore: cast_nullable_to_non_nullable
as List<String>,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,imageSource: freezed == imageSource ? _self.imageSource : imageSource // ignore: cast_nullable_to_non_nullable
as String?,creativeCommonsConfirmed: freezed == creativeCommonsConfirmed ? _self.creativeCommonsConfirmed : creativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
as String?,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteMealDetail].
extension RemoteMealDetailPatterns on RemoteMealDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteMealDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteMealDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteMealDetail value)  $default,){
final _that = this;
switch (_that) {
case _RemoteMealDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteMealDetail value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteMealDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "idMeal")  String id, @JsonKey(name: "strMeal")  String meal, @JsonKey(name: "strMealAlternate")  String? mealAlternate, @JsonKey(name: "strCategory")  String category, @JsonKey(name: "strArea")  String? area, @JsonKey(name: "strCountry")  String country, @JsonKey(name: "strInstructions")  String instructions, @JsonKey(name: "strMealThumb")  String mealThumb, @JsonKey(name: "strTags")  String? tags, @JsonKey(name: "strYoutube")  String youtube, @JsonKey(fromJson: _ingredientsFromJson)  List<String> ingredients, @JsonKey(fromJson: _measureFromJson)  List<String> measures, @JsonKey(name: "strSource")  String? source, @JsonKey(name: "strImageSource")  String? imageSource, @JsonKey(name: "strCreativeCommonsConfirmed")  String? creativeCommonsConfirmed, @JsonKey(name: "dateModified")  String? dateModified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteMealDetail() when $default != null:
return $default(_that.id,_that.meal,_that.mealAlternate,_that.category,_that.area,_that.country,_that.instructions,_that.mealThumb,_that.tags,_that.youtube,_that.ingredients,_that.measures,_that.source,_that.imageSource,_that.creativeCommonsConfirmed,_that.dateModified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "idMeal")  String id, @JsonKey(name: "strMeal")  String meal, @JsonKey(name: "strMealAlternate")  String? mealAlternate, @JsonKey(name: "strCategory")  String category, @JsonKey(name: "strArea")  String? area, @JsonKey(name: "strCountry")  String country, @JsonKey(name: "strInstructions")  String instructions, @JsonKey(name: "strMealThumb")  String mealThumb, @JsonKey(name: "strTags")  String? tags, @JsonKey(name: "strYoutube")  String youtube, @JsonKey(fromJson: _ingredientsFromJson)  List<String> ingredients, @JsonKey(fromJson: _measureFromJson)  List<String> measures, @JsonKey(name: "strSource")  String? source, @JsonKey(name: "strImageSource")  String? imageSource, @JsonKey(name: "strCreativeCommonsConfirmed")  String? creativeCommonsConfirmed, @JsonKey(name: "dateModified")  String? dateModified)  $default,) {final _that = this;
switch (_that) {
case _RemoteMealDetail():
return $default(_that.id,_that.meal,_that.mealAlternate,_that.category,_that.area,_that.country,_that.instructions,_that.mealThumb,_that.tags,_that.youtube,_that.ingredients,_that.measures,_that.source,_that.imageSource,_that.creativeCommonsConfirmed,_that.dateModified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "idMeal")  String id, @JsonKey(name: "strMeal")  String meal, @JsonKey(name: "strMealAlternate")  String? mealAlternate, @JsonKey(name: "strCategory")  String category, @JsonKey(name: "strArea")  String? area, @JsonKey(name: "strCountry")  String country, @JsonKey(name: "strInstructions")  String instructions, @JsonKey(name: "strMealThumb")  String mealThumb, @JsonKey(name: "strTags")  String? tags, @JsonKey(name: "strYoutube")  String youtube, @JsonKey(fromJson: _ingredientsFromJson)  List<String> ingredients, @JsonKey(fromJson: _measureFromJson)  List<String> measures, @JsonKey(name: "strSource")  String? source, @JsonKey(name: "strImageSource")  String? imageSource, @JsonKey(name: "strCreativeCommonsConfirmed")  String? creativeCommonsConfirmed, @JsonKey(name: "dateModified")  String? dateModified)?  $default,) {final _that = this;
switch (_that) {
case _RemoteMealDetail() when $default != null:
return $default(_that.id,_that.meal,_that.mealAlternate,_that.category,_that.area,_that.country,_that.instructions,_that.mealThumb,_that.tags,_that.youtube,_that.ingredients,_that.measures,_that.source,_that.imageSource,_that.creativeCommonsConfirmed,_that.dateModified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteMealDetail implements RemoteMealDetail {
  const _RemoteMealDetail({@JsonKey(name: "idMeal") required this.id, @JsonKey(name: "strMeal") required this.meal, @JsonKey(name: "strMealAlternate") required this.mealAlternate, @JsonKey(name: "strCategory") required this.category, @JsonKey(name: "strArea") required this.area, @JsonKey(name: "strCountry") required this.country, @JsonKey(name: "strInstructions") required this.instructions, @JsonKey(name: "strMealThumb") required this.mealThumb, @JsonKey(name: "strTags") required this.tags, @JsonKey(name: "strYoutube") required this.youtube, @JsonKey(fromJson: _ingredientsFromJson) required final  List<String> ingredients, @JsonKey(fromJson: _measureFromJson) required final  List<String> measures, @JsonKey(name: "strSource") required this.source, @JsonKey(name: "strImageSource") required this.imageSource, @JsonKey(name: "strCreativeCommonsConfirmed") required this.creativeCommonsConfirmed, @JsonKey(name: "dateModified") required this.dateModified}): _ingredients = ingredients,_measures = measures;
  factory _RemoteMealDetail.fromJson(Map<String, dynamic> json) => _$RemoteMealDetailFromJson(json);

@override@JsonKey(name: "idMeal") final  String id;
@override@JsonKey(name: "strMeal") final  String meal;
@override@JsonKey(name: "strMealAlternate") final  String? mealAlternate;
@override@JsonKey(name: "strCategory") final  String category;
@override@JsonKey(name: "strArea") final  String? area;
@override@JsonKey(name: "strCountry") final  String country;
@override@JsonKey(name: "strInstructions") final  String instructions;
@override@JsonKey(name: "strMealThumb") final  String mealThumb;
@override@JsonKey(name: "strTags") final  String? tags;
@override@JsonKey(name: "strYoutube") final  String youtube;
 final  List<String> _ingredients;
@override@JsonKey(fromJson: _ingredientsFromJson) List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<String> _measures;
@override@JsonKey(fromJson: _measureFromJson) List<String> get measures {
  if (_measures is EqualUnmodifiableListView) return _measures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measures);
}

@override@JsonKey(name: "strSource") final  String? source;
@override@JsonKey(name: "strImageSource") final  String? imageSource;
@override@JsonKey(name: "strCreativeCommonsConfirmed") final  String? creativeCommonsConfirmed;
@override@JsonKey(name: "dateModified") final  String? dateModified;

/// Create a copy of RemoteMealDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteMealDetailCopyWith<_RemoteMealDetail> get copyWith => __$RemoteMealDetailCopyWithImpl<_RemoteMealDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteMealDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteMealDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealAlternate, mealAlternate) || other.mealAlternate == mealAlternate)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._measures, _measures)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource)&&(identical(other.creativeCommonsConfirmed, creativeCommonsConfirmed) || other.creativeCommonsConfirmed == creativeCommonsConfirmed)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,meal,mealAlternate,category,area,country,instructions,mealThumb,tags,youtube,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_measures),source,imageSource,creativeCommonsConfirmed,dateModified);

@override
String toString() {
  return 'RemoteMealDetail(id: $id, meal: $meal, mealAlternate: $mealAlternate, category: $category, area: $area, country: $country, instructions: $instructions, mealThumb: $mealThumb, tags: $tags, youtube: $youtube, ingredients: $ingredients, measures: $measures, source: $source, imageSource: $imageSource, creativeCommonsConfirmed: $creativeCommonsConfirmed, dateModified: $dateModified)';
}


}

/// @nodoc
abstract mixin class _$RemoteMealDetailCopyWith<$Res> implements $RemoteMealDetailCopyWith<$Res> {
  factory _$RemoteMealDetailCopyWith(_RemoteMealDetail value, $Res Function(_RemoteMealDetail) _then) = __$RemoteMealDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "idMeal") String id,@JsonKey(name: "strMeal") String meal,@JsonKey(name: "strMealAlternate") String? mealAlternate,@JsonKey(name: "strCategory") String category,@JsonKey(name: "strArea") String? area,@JsonKey(name: "strCountry") String country,@JsonKey(name: "strInstructions") String instructions,@JsonKey(name: "strMealThumb") String mealThumb,@JsonKey(name: "strTags") String? tags,@JsonKey(name: "strYoutube") String youtube,@JsonKey(fromJson: _ingredientsFromJson) List<String> ingredients,@JsonKey(fromJson: _measureFromJson) List<String> measures,@JsonKey(name: "strSource") String? source,@JsonKey(name: "strImageSource") String? imageSource,@JsonKey(name: "strCreativeCommonsConfirmed") String? creativeCommonsConfirmed,@JsonKey(name: "dateModified") String? dateModified
});




}
/// @nodoc
class __$RemoteMealDetailCopyWithImpl<$Res>
    implements _$RemoteMealDetailCopyWith<$Res> {
  __$RemoteMealDetailCopyWithImpl(this._self, this._then);

  final _RemoteMealDetail _self;
  final $Res Function(_RemoteMealDetail) _then;

/// Create a copy of RemoteMealDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? meal = null,Object? mealAlternate = freezed,Object? category = null,Object? area = freezed,Object? country = null,Object? instructions = null,Object? mealThumb = null,Object? tags = freezed,Object? youtube = null,Object? ingredients = null,Object? measures = null,Object? source = freezed,Object? imageSource = freezed,Object? creativeCommonsConfirmed = freezed,Object? dateModified = freezed,}) {
  return _then(_RemoteMealDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String,mealAlternate: freezed == mealAlternate ? _self.mealAlternate : mealAlternate // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,instructions: null == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String,mealThumb: null == mealThumb ? _self.mealThumb : mealThumb // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,youtube: null == youtube ? _self.youtube : youtube // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,measures: null == measures ? _self._measures : measures // ignore: cast_nullable_to_non_nullable
as List<String>,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,imageSource: freezed == imageSource ? _self.imageSource : imageSource // ignore: cast_nullable_to_non_nullable
as String?,creativeCommonsConfirmed: freezed == creativeCommonsConfirmed ? _self.creativeCommonsConfirmed : creativeCommonsConfirmed // ignore: cast_nullable_to_non_nullable
as String?,dateModified: freezed == dateModified ? _self.dateModified : dateModified // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RemoteMealDetailList {

@JsonKey(name: "meals") List<RemoteMealDetail> get meals;
/// Create a copy of RemoteMealDetailList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteMealDetailListCopyWith<RemoteMealDetailList> get copyWith => _$RemoteMealDetailListCopyWithImpl<RemoteMealDetailList>(this as RemoteMealDetailList, _$identity);

  /// Serializes this RemoteMealDetailList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteMealDetailList&&const DeepCollectionEquality().equals(other.meals, meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'RemoteMealDetailList(meals: $meals)';
}


}

/// @nodoc
abstract mixin class $RemoteMealDetailListCopyWith<$Res>  {
  factory $RemoteMealDetailListCopyWith(RemoteMealDetailList value, $Res Function(RemoteMealDetailList) _then) = _$RemoteMealDetailListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "meals") List<RemoteMealDetail> meals
});




}
/// @nodoc
class _$RemoteMealDetailListCopyWithImpl<$Res>
    implements $RemoteMealDetailListCopyWith<$Res> {
  _$RemoteMealDetailListCopyWithImpl(this._self, this._then);

  final RemoteMealDetailList _self;
  final $Res Function(RemoteMealDetailList) _then;

/// Create a copy of RemoteMealDetailList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meals = null,}) {
  return _then(_self.copyWith(
meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<RemoteMealDetail>,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteMealDetailList].
extension RemoteMealDetailListPatterns on RemoteMealDetailList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteMealDetailList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteMealDetailList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteMealDetailList value)  $default,){
final _that = this;
switch (_that) {
case _RemoteMealDetailList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteMealDetailList value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteMealDetailList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "meals")  List<RemoteMealDetail> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteMealDetailList() when $default != null:
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "meals")  List<RemoteMealDetail> meals)  $default,) {final _that = this;
switch (_that) {
case _RemoteMealDetailList():
return $default(_that.meals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "meals")  List<RemoteMealDetail> meals)?  $default,) {final _that = this;
switch (_that) {
case _RemoteMealDetailList() when $default != null:
return $default(_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteMealDetailList implements RemoteMealDetailList {
  const _RemoteMealDetailList({@JsonKey(name: "meals") required final  List<RemoteMealDetail> meals}): _meals = meals;
  factory _RemoteMealDetailList.fromJson(Map<String, dynamic> json) => _$RemoteMealDetailListFromJson(json);

 final  List<RemoteMealDetail> _meals;
@override@JsonKey(name: "meals") List<RemoteMealDetail> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of RemoteMealDetailList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteMealDetailListCopyWith<_RemoteMealDetailList> get copyWith => __$RemoteMealDetailListCopyWithImpl<_RemoteMealDetailList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteMealDetailListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteMealDetailList&&const DeepCollectionEquality().equals(other._meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'RemoteMealDetailList(meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$RemoteMealDetailListCopyWith<$Res> implements $RemoteMealDetailListCopyWith<$Res> {
  factory _$RemoteMealDetailListCopyWith(_RemoteMealDetailList value, $Res Function(_RemoteMealDetailList) _then) = __$RemoteMealDetailListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "meals") List<RemoteMealDetail> meals
});




}
/// @nodoc
class __$RemoteMealDetailListCopyWithImpl<$Res>
    implements _$RemoteMealDetailListCopyWith<$Res> {
  __$RemoteMealDetailListCopyWithImpl(this._self, this._then);

  final _RemoteMealDetailList _self;
  final $Res Function(_RemoteMealDetailList) _then;

/// Create a copy of RemoteMealDetailList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meals = null,}) {
  return _then(_RemoteMealDetailList(
meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<RemoteMealDetail>,
  ));
}


}


/// @nodoc
mixin _$RemoteCategory {

@JsonKey(name: "idCategory") String get id;@JsonKey(name: "strCategory") String get name;@JsonKey(name: "strCategoryThumb") String get thumb;@JsonKey(name: "strCategoryDescription") String get description;
/// Create a copy of RemoteCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteCategoryCopyWith<RemoteCategory> get copyWith => _$RemoteCategoryCopyWithImpl<RemoteCategory>(this as RemoteCategory, _$identity);

  /// Serializes this RemoteCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumb, thumb) || other.thumb == thumb)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,thumb,description);

@override
String toString() {
  return 'RemoteCategory(id: $id, name: $name, thumb: $thumb, description: $description)';
}


}

/// @nodoc
abstract mixin class $RemoteCategoryCopyWith<$Res>  {
  factory $RemoteCategoryCopyWith(RemoteCategory value, $Res Function(RemoteCategory) _then) = _$RemoteCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "idCategory") String id,@JsonKey(name: "strCategory") String name,@JsonKey(name: "strCategoryThumb") String thumb,@JsonKey(name: "strCategoryDescription") String description
});




}
/// @nodoc
class _$RemoteCategoryCopyWithImpl<$Res>
    implements $RemoteCategoryCopyWith<$Res> {
  _$RemoteCategoryCopyWithImpl(this._self, this._then);

  final RemoteCategory _self;
  final $Res Function(RemoteCategory) _then;

/// Create a copy of RemoteCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? thumb = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumb: null == thumb ? _self.thumb : thumb // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteCategory].
extension RemoteCategoryPatterns on RemoteCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteCategory value)  $default,){
final _that = this;
switch (_that) {
case _RemoteCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteCategory value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "idCategory")  String id, @JsonKey(name: "strCategory")  String name, @JsonKey(name: "strCategoryThumb")  String thumb, @JsonKey(name: "strCategoryDescription")  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteCategory() when $default != null:
return $default(_that.id,_that.name,_that.thumb,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "idCategory")  String id, @JsonKey(name: "strCategory")  String name, @JsonKey(name: "strCategoryThumb")  String thumb, @JsonKey(name: "strCategoryDescription")  String description)  $default,) {final _that = this;
switch (_that) {
case _RemoteCategory():
return $default(_that.id,_that.name,_that.thumb,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "idCategory")  String id, @JsonKey(name: "strCategory")  String name, @JsonKey(name: "strCategoryThumb")  String thumb, @JsonKey(name: "strCategoryDescription")  String description)?  $default,) {final _that = this;
switch (_that) {
case _RemoteCategory() when $default != null:
return $default(_that.id,_that.name,_that.thumb,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteCategory implements RemoteCategory {
  const _RemoteCategory({@JsonKey(name: "idCategory") required this.id, @JsonKey(name: "strCategory") required this.name, @JsonKey(name: "strCategoryThumb") required this.thumb, @JsonKey(name: "strCategoryDescription") required this.description});
  factory _RemoteCategory.fromJson(Map<String, dynamic> json) => _$RemoteCategoryFromJson(json);

@override@JsonKey(name: "idCategory") final  String id;
@override@JsonKey(name: "strCategory") final  String name;
@override@JsonKey(name: "strCategoryThumb") final  String thumb;
@override@JsonKey(name: "strCategoryDescription") final  String description;

/// Create a copy of RemoteCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteCategoryCopyWith<_RemoteCategory> get copyWith => __$RemoteCategoryCopyWithImpl<_RemoteCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.thumb, thumb) || other.thumb == thumb)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,thumb,description);

@override
String toString() {
  return 'RemoteCategory(id: $id, name: $name, thumb: $thumb, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RemoteCategoryCopyWith<$Res> implements $RemoteCategoryCopyWith<$Res> {
  factory _$RemoteCategoryCopyWith(_RemoteCategory value, $Res Function(_RemoteCategory) _then) = __$RemoteCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "idCategory") String id,@JsonKey(name: "strCategory") String name,@JsonKey(name: "strCategoryThumb") String thumb,@JsonKey(name: "strCategoryDescription") String description
});




}
/// @nodoc
class __$RemoteCategoryCopyWithImpl<$Res>
    implements _$RemoteCategoryCopyWith<$Res> {
  __$RemoteCategoryCopyWithImpl(this._self, this._then);

  final _RemoteCategory _self;
  final $Res Function(_RemoteCategory) _then;

/// Create a copy of RemoteCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? thumb = null,Object? description = null,}) {
  return _then(_RemoteCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,thumb: null == thumb ? _self.thumb : thumb // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RemoteCategoryList {

@JsonKey(name: "categories") List<RemoteCategory> get categories;
/// Create a copy of RemoteCategoryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteCategoryListCopyWith<RemoteCategoryList> get copyWith => _$RemoteCategoryListCopyWithImpl<RemoteCategoryList>(this as RemoteCategoryList, _$identity);

  /// Serializes this RemoteCategoryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteCategoryList&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'RemoteCategoryList(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $RemoteCategoryListCopyWith<$Res>  {
  factory $RemoteCategoryListCopyWith(RemoteCategoryList value, $Res Function(RemoteCategoryList) _then) = _$RemoteCategoryListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "categories") List<RemoteCategory> categories
});




}
/// @nodoc
class _$RemoteCategoryListCopyWithImpl<$Res>
    implements $RemoteCategoryListCopyWith<$Res> {
  _$RemoteCategoryListCopyWithImpl(this._self, this._then);

  final RemoteCategoryList _self;
  final $Res Function(RemoteCategoryList) _then;

/// Create a copy of RemoteCategoryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<RemoteCategory>,
  ));
}

}


/// Adds pattern-matching-related methods to [RemoteCategoryList].
extension RemoteCategoryListPatterns on RemoteCategoryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoteCategoryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoteCategoryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoteCategoryList value)  $default,){
final _that = this;
switch (_that) {
case _RemoteCategoryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoteCategoryList value)?  $default,){
final _that = this;
switch (_that) {
case _RemoteCategoryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "categories")  List<RemoteCategory> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoteCategoryList() when $default != null:
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "categories")  List<RemoteCategory> categories)  $default,) {final _that = this;
switch (_that) {
case _RemoteCategoryList():
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "categories")  List<RemoteCategory> categories)?  $default,) {final _that = this;
switch (_that) {
case _RemoteCategoryList() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoteCategoryList implements RemoteCategoryList {
  const _RemoteCategoryList({@JsonKey(name: "categories") required final  List<RemoteCategory> categories}): _categories = categories;
  factory _RemoteCategoryList.fromJson(Map<String, dynamic> json) => _$RemoteCategoryListFromJson(json);

 final  List<RemoteCategory> _categories;
@override@JsonKey(name: "categories") List<RemoteCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of RemoteCategoryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoteCategoryListCopyWith<_RemoteCategoryList> get copyWith => __$RemoteCategoryListCopyWithImpl<_RemoteCategoryList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoteCategoryListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoteCategoryList&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'RemoteCategoryList(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$RemoteCategoryListCopyWith<$Res> implements $RemoteCategoryListCopyWith<$Res> {
  factory _$RemoteCategoryListCopyWith(_RemoteCategoryList value, $Res Function(_RemoteCategoryList) _then) = __$RemoteCategoryListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "categories") List<RemoteCategory> categories
});




}
/// @nodoc
class __$RemoteCategoryListCopyWithImpl<$Res>
    implements _$RemoteCategoryListCopyWith<$Res> {
  __$RemoteCategoryListCopyWithImpl(this._self, this._then);

  final _RemoteCategoryList _self;
  final $Res Function(_RemoteCategoryList) _then;

/// Create a copy of RemoteCategoryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_RemoteCategoryList(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<RemoteCategory>,
  ));
}


}

// dart format on
