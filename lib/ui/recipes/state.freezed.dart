// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipesState {

 Option<List<String>> get categories; Option<String> get selectedCategory; Option<List<Recipe>> get recipes; Option<String> get error;
/// Create a copy of RecipesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipesStateCopyWith<RecipesState> get copyWith => _$RecipesStateCopyWithImpl<RecipesState>(this as RecipesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipesState&&(identical(other.categories, categories) || other.categories == categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.recipes, recipes) || other.recipes == recipes)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,categories,selectedCategory,recipes,error);

@override
String toString() {
  return 'RecipesState(categories: $categories, selectedCategory: $selectedCategory, recipes: $recipes, error: $error)';
}


}

/// @nodoc
abstract mixin class $RecipesStateCopyWith<$Res>  {
  factory $RecipesStateCopyWith(RecipesState value, $Res Function(RecipesState) _then) = _$RecipesStateCopyWithImpl;
@useResult
$Res call({
 Option<List<String>> categories, Option<String> selectedCategory, Option<List<Recipe>> recipes, Option<String> error
});




}
/// @nodoc
class _$RecipesStateCopyWithImpl<$Res>
    implements $RecipesStateCopyWith<$Res> {
  _$RecipesStateCopyWithImpl(this._self, this._then);

  final RecipesState _self;
  final $Res Function(RecipesState) _then;

/// Create a copy of RecipesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? selectedCategory = null,Object? recipes = null,Object? error = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as Option<String>,recipes: null == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as Option<List<Recipe>>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipesState].
extension RecipesStatePatterns on RecipesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipesState value)  $default,){
final _that = this;
switch (_that) {
case _RecipesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipesState value)?  $default,){
final _that = this;
switch (_that) {
case _RecipesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Option<List<String>> categories,  Option<String> selectedCategory,  Option<List<Recipe>> recipes,  Option<String> error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipesState() when $default != null:
return $default(_that.categories,_that.selectedCategory,_that.recipes,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Option<List<String>> categories,  Option<String> selectedCategory,  Option<List<Recipe>> recipes,  Option<String> error)  $default,) {final _that = this;
switch (_that) {
case _RecipesState():
return $default(_that.categories,_that.selectedCategory,_that.recipes,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Option<List<String>> categories,  Option<String> selectedCategory,  Option<List<Recipe>> recipes,  Option<String> error)?  $default,) {final _that = this;
switch (_that) {
case _RecipesState() when $default != null:
return $default(_that.categories,_that.selectedCategory,_that.recipes,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RecipesState extends RecipesState {
  const _RecipesState({required this.categories, required this.selectedCategory, required this.recipes, required this.error}): super._();
  

@override final  Option<List<String>> categories;
@override final  Option<String> selectedCategory;
@override final  Option<List<Recipe>> recipes;
@override final  Option<String> error;

/// Create a copy of RecipesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipesStateCopyWith<_RecipesState> get copyWith => __$RecipesStateCopyWithImpl<_RecipesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipesState&&(identical(other.categories, categories) || other.categories == categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.recipes, recipes) || other.recipes == recipes)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,categories,selectedCategory,recipes,error);

@override
String toString() {
  return 'RecipesState(categories: $categories, selectedCategory: $selectedCategory, recipes: $recipes, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RecipesStateCopyWith<$Res> implements $RecipesStateCopyWith<$Res> {
  factory _$RecipesStateCopyWith(_RecipesState value, $Res Function(_RecipesState) _then) = __$RecipesStateCopyWithImpl;
@override @useResult
$Res call({
 Option<List<String>> categories, Option<String> selectedCategory, Option<List<Recipe>> recipes, Option<String> error
});




}
/// @nodoc
class __$RecipesStateCopyWithImpl<$Res>
    implements _$RecipesStateCopyWith<$Res> {
  __$RecipesStateCopyWithImpl(this._self, this._then);

  final _RecipesState _self;
  final $Res Function(_RecipesState) _then;

/// Create a copy of RecipesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? selectedCategory = null,Object? recipes = null,Object? error = null,}) {
  return _then(_RecipesState(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as Option<List<String>>,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as Option<String>,recipes: null == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as Option<List<Recipe>>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}


}

// dart format on
