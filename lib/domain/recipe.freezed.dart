// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Recipe {

 String get id; String get meal; String get mealThumb; String? get area; String get country; bool get isFavorite;
/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeCopyWith<Recipe> get copyWith => _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,meal,mealThumb,area,country,isFavorite);

@override
String toString() {
  return 'Recipe(id: $id, meal: $meal, mealThumb: $mealThumb, area: $area, country: $country, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res>  {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) = _$RecipeCopyWithImpl;
@useResult
$Res call({
 String id, String meal, String mealThumb, String? area, String country, bool isFavorite
});




}
/// @nodoc
class _$RecipeCopyWithImpl<$Res>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? meal = null,Object? mealThumb = null,Object? area = freezed,Object? country = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String,mealThumb: null == mealThumb ? _self.mealThumb : mealThumb // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Recipe].
extension RecipePatterns on Recipe {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recipe value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recipe value)  $default,){
final _that = this;
switch (_that) {
case _Recipe():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recipe value)?  $default,){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String meal,  String mealThumb,  String? area,  String country,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.meal,_that.mealThumb,_that.area,_that.country,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String meal,  String mealThumb,  String? area,  String country,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Recipe():
return $default(_that.id,_that.meal,_that.mealThumb,_that.area,_that.country,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String meal,  String mealThumb,  String? area,  String country,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.meal,_that.mealThumb,_that.area,_that.country,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _Recipe implements Recipe {
  const _Recipe({required this.id, required this.meal, required this.mealThumb, required this.area, required this.country, required this.isFavorite});
  

@override final  String id;
@override final  String meal;
@override final  String mealThumb;
@override final  String? area;
@override final  String country;
@override final  bool isFavorite;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeCopyWith<_Recipe> get copyWith => __$RecipeCopyWithImpl<_Recipe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipe&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,meal,mealThumb,area,country,isFavorite);

@override
String toString() {
  return 'Recipe(id: $id, meal: $meal, mealThumb: $mealThumb, area: $area, country: $country, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) = __$RecipeCopyWithImpl;
@override @useResult
$Res call({
 String id, String meal, String mealThumb, String? area, String country, bool isFavorite
});




}
/// @nodoc
class __$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? meal = null,Object? mealThumb = null,Object? area = freezed,Object? country = null,Object? isFavorite = null,}) {
  return _then(_Recipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,meal: null == meal ? _self.meal : meal // ignore: cast_nullable_to_non_nullable
as String,mealThumb: null == mealThumb ? _self.mealThumb : mealThumb // ignore: cast_nullable_to_non_nullable
as String,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$RecipeDetail {

 String get id; String get meal; String? get mealAlternate; String get category; String? get area; String get country; String get instructions; String get mealThumb; String? get tags; String get youtube; List<String> get ingredients; List<String> get measures; String? get source; String? get imageSource; String? get creativeCommonsConfirmed; String? get dateModified; bool get isFavorite;
/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeDetailCopyWith<RecipeDetail> get copyWith => _$RecipeDetailCopyWithImpl<RecipeDetail>(this as RecipeDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealAlternate, mealAlternate) || other.mealAlternate == mealAlternate)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.measures, measures)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource)&&(identical(other.creativeCommonsConfirmed, creativeCommonsConfirmed) || other.creativeCommonsConfirmed == creativeCommonsConfirmed)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,meal,mealAlternate,category,area,country,instructions,mealThumb,tags,youtube,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(measures),source,imageSource,creativeCommonsConfirmed,dateModified,isFavorite);

@override
String toString() {
  return 'RecipeDetail(id: $id, meal: $meal, mealAlternate: $mealAlternate, category: $category, area: $area, country: $country, instructions: $instructions, mealThumb: $mealThumb, tags: $tags, youtube: $youtube, ingredients: $ingredients, measures: $measures, source: $source, imageSource: $imageSource, creativeCommonsConfirmed: $creativeCommonsConfirmed, dateModified: $dateModified, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $RecipeDetailCopyWith<$Res>  {
  factory $RecipeDetailCopyWith(RecipeDetail value, $Res Function(RecipeDetail) _then) = _$RecipeDetailCopyWithImpl;
@useResult
$Res call({
 String id, String meal, String? mealAlternate, String category, String? area, String country, String instructions, String mealThumb, String? tags, String youtube, List<String> ingredients, List<String> measures, String? source, String? imageSource, String? creativeCommonsConfirmed, String? dateModified, bool isFavorite
});




}
/// @nodoc
class _$RecipeDetailCopyWithImpl<$Res>
    implements $RecipeDetailCopyWith<$Res> {
  _$RecipeDetailCopyWithImpl(this._self, this._then);

  final RecipeDetail _self;
  final $Res Function(RecipeDetail) _then;

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? meal = null,Object? mealAlternate = freezed,Object? category = null,Object? area = freezed,Object? country = null,Object? instructions = null,Object? mealThumb = null,Object? tags = freezed,Object? youtube = null,Object? ingredients = null,Object? measures = null,Object? source = freezed,Object? imageSource = freezed,Object? creativeCommonsConfirmed = freezed,Object? dateModified = freezed,Object? isFavorite = null,}) {
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
as String?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeDetail].
extension RecipeDetailPatterns on RecipeDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeDetail value)  $default,){
final _that = this;
switch (_that) {
case _RecipeDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeDetail value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String meal,  String? mealAlternate,  String category,  String? area,  String country,  String instructions,  String mealThumb,  String? tags,  String youtube,  List<String> ingredients,  List<String> measures,  String? source,  String? imageSource,  String? creativeCommonsConfirmed,  String? dateModified,  bool isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
return $default(_that.id,_that.meal,_that.mealAlternate,_that.category,_that.area,_that.country,_that.instructions,_that.mealThumb,_that.tags,_that.youtube,_that.ingredients,_that.measures,_that.source,_that.imageSource,_that.creativeCommonsConfirmed,_that.dateModified,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String meal,  String? mealAlternate,  String category,  String? area,  String country,  String instructions,  String mealThumb,  String? tags,  String youtube,  List<String> ingredients,  List<String> measures,  String? source,  String? imageSource,  String? creativeCommonsConfirmed,  String? dateModified,  bool isFavorite)  $default,) {final _that = this;
switch (_that) {
case _RecipeDetail():
return $default(_that.id,_that.meal,_that.mealAlternate,_that.category,_that.area,_that.country,_that.instructions,_that.mealThumb,_that.tags,_that.youtube,_that.ingredients,_that.measures,_that.source,_that.imageSource,_that.creativeCommonsConfirmed,_that.dateModified,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String meal,  String? mealAlternate,  String category,  String? area,  String country,  String instructions,  String mealThumb,  String? tags,  String youtube,  List<String> ingredients,  List<String> measures,  String? source,  String? imageSource,  String? creativeCommonsConfirmed,  String? dateModified,  bool isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _RecipeDetail() when $default != null:
return $default(_that.id,_that.meal,_that.mealAlternate,_that.category,_that.area,_that.country,_that.instructions,_that.mealThumb,_that.tags,_that.youtube,_that.ingredients,_that.measures,_that.source,_that.imageSource,_that.creativeCommonsConfirmed,_that.dateModified,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc


class _RecipeDetail implements RecipeDetail {
  const _RecipeDetail({required this.id, required this.meal, required this.mealAlternate, required this.category, required this.area, required this.country, required this.instructions, required this.mealThumb, required this.tags, required this.youtube, required final  List<String> ingredients, required final  List<String> measures, required this.source, required this.imageSource, required this.creativeCommonsConfirmed, required this.dateModified, required this.isFavorite}): _ingredients = ingredients,_measures = measures;
  

@override final  String id;
@override final  String meal;
@override final  String? mealAlternate;
@override final  String category;
@override final  String? area;
@override final  String country;
@override final  String instructions;
@override final  String mealThumb;
@override final  String? tags;
@override final  String youtube;
 final  List<String> _ingredients;
@override List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<String> _measures;
@override List<String> get measures {
  if (_measures is EqualUnmodifiableListView) return _measures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_measures);
}

@override final  String? source;
@override final  String? imageSource;
@override final  String? creativeCommonsConfirmed;
@override final  String? dateModified;
@override final  bool isFavorite;

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeDetailCopyWith<_RecipeDetail> get copyWith => __$RecipeDetailCopyWithImpl<_RecipeDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.meal, meal) || other.meal == meal)&&(identical(other.mealAlternate, mealAlternate) || other.mealAlternate == mealAlternate)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.country, country) || other.country == country)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.mealThumb, mealThumb) || other.mealThumb == mealThumb)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.youtube, youtube) || other.youtube == youtube)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._measures, _measures)&&(identical(other.source, source) || other.source == source)&&(identical(other.imageSource, imageSource) || other.imageSource == imageSource)&&(identical(other.creativeCommonsConfirmed, creativeCommonsConfirmed) || other.creativeCommonsConfirmed == creativeCommonsConfirmed)&&(identical(other.dateModified, dateModified) || other.dateModified == dateModified)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,id,meal,mealAlternate,category,area,country,instructions,mealThumb,tags,youtube,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_measures),source,imageSource,creativeCommonsConfirmed,dateModified,isFavorite);

@override
String toString() {
  return 'RecipeDetail(id: $id, meal: $meal, mealAlternate: $mealAlternate, category: $category, area: $area, country: $country, instructions: $instructions, mealThumb: $mealThumb, tags: $tags, youtube: $youtube, ingredients: $ingredients, measures: $measures, source: $source, imageSource: $imageSource, creativeCommonsConfirmed: $creativeCommonsConfirmed, dateModified: $dateModified, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$RecipeDetailCopyWith<$Res> implements $RecipeDetailCopyWith<$Res> {
  factory _$RecipeDetailCopyWith(_RecipeDetail value, $Res Function(_RecipeDetail) _then) = __$RecipeDetailCopyWithImpl;
@override @useResult
$Res call({
 String id, String meal, String? mealAlternate, String category, String? area, String country, String instructions, String mealThumb, String? tags, String youtube, List<String> ingredients, List<String> measures, String? source, String? imageSource, String? creativeCommonsConfirmed, String? dateModified, bool isFavorite
});




}
/// @nodoc
class __$RecipeDetailCopyWithImpl<$Res>
    implements _$RecipeDetailCopyWith<$Res> {
  __$RecipeDetailCopyWithImpl(this._self, this._then);

  final _RecipeDetail _self;
  final $Res Function(_RecipeDetail) _then;

/// Create a copy of RecipeDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? meal = null,Object? mealAlternate = freezed,Object? category = null,Object? area = freezed,Object? country = null,Object? instructions = null,Object? mealThumb = null,Object? tags = freezed,Object? youtube = null,Object? ingredients = null,Object? measures = null,Object? source = freezed,Object? imageSource = freezed,Object? creativeCommonsConfirmed = freezed,Object? dateModified = freezed,Object? isFavorite = null,}) {
  return _then(_RecipeDetail(
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
as String?,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
