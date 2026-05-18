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
mixin _$RecipeDetailState {

 String get id; Option<RecipeDetail> get recipe; bool get isFavoriteLoading; bool get isLoading; Option<String> get error;
/// Create a copy of RecipeDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeDetailStateCopyWith<RecipeDetailState> get copyWith => _$RecipeDetailStateCopyWithImpl<RecipeDetailState>(this as RecipeDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.isFavoriteLoading, isFavoriteLoading) || other.isFavoriteLoading == isFavoriteLoading)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,id,recipe,isFavoriteLoading,isLoading,error);

@override
String toString() {
  return 'RecipeDetailState(id: $id, recipe: $recipe, isFavoriteLoading: $isFavoriteLoading, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $RecipeDetailStateCopyWith<$Res>  {
  factory $RecipeDetailStateCopyWith(RecipeDetailState value, $Res Function(RecipeDetailState) _then) = _$RecipeDetailStateCopyWithImpl;
@useResult
$Res call({
 String id, Option<RecipeDetail> recipe, bool isFavoriteLoading, bool isLoading, Option<String> error
});




}
/// @nodoc
class _$RecipeDetailStateCopyWithImpl<$Res>
    implements $RecipeDetailStateCopyWith<$Res> {
  _$RecipeDetailStateCopyWithImpl(this._self, this._then);

  final RecipeDetailState _self;
  final $Res Function(RecipeDetailState) _then;

/// Create a copy of RecipeDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? recipe = null,Object? isFavoriteLoading = null,Object? isLoading = null,Object? error = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipe: null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as Option<RecipeDetail>,isFavoriteLoading: null == isFavoriteLoading ? _self.isFavoriteLoading : isFavoriteLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeDetailState].
extension RecipeDetailStatePatterns on RecipeDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeDetailState value)  $default,){
final _that = this;
switch (_that) {
case _RecipeDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Option<RecipeDetail> recipe,  bool isFavoriteLoading,  bool isLoading,  Option<String> error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeDetailState() when $default != null:
return $default(_that.id,_that.recipe,_that.isFavoriteLoading,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Option<RecipeDetail> recipe,  bool isFavoriteLoading,  bool isLoading,  Option<String> error)  $default,) {final _that = this;
switch (_that) {
case _RecipeDetailState():
return $default(_that.id,_that.recipe,_that.isFavoriteLoading,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Option<RecipeDetail> recipe,  bool isFavoriteLoading,  bool isLoading,  Option<String> error)?  $default,) {final _that = this;
switch (_that) {
case _RecipeDetailState() when $default != null:
return $default(_that.id,_that.recipe,_that.isFavoriteLoading,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RecipeDetailState implements RecipeDetailState {
  const _RecipeDetailState({required this.id, required this.recipe, required this.isFavoriteLoading, required this.isLoading, required this.error});
  

@override final  String id;
@override final  Option<RecipeDetail> recipe;
@override final  bool isFavoriteLoading;
@override final  bool isLoading;
@override final  Option<String> error;

/// Create a copy of RecipeDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeDetailStateCopyWith<_RecipeDetailState> get copyWith => __$RecipeDetailStateCopyWithImpl<_RecipeDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.recipe, recipe) || other.recipe == recipe)&&(identical(other.isFavoriteLoading, isFavoriteLoading) || other.isFavoriteLoading == isFavoriteLoading)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,id,recipe,isFavoriteLoading,isLoading,error);

@override
String toString() {
  return 'RecipeDetailState(id: $id, recipe: $recipe, isFavoriteLoading: $isFavoriteLoading, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RecipeDetailStateCopyWith<$Res> implements $RecipeDetailStateCopyWith<$Res> {
  factory _$RecipeDetailStateCopyWith(_RecipeDetailState value, $Res Function(_RecipeDetailState) _then) = __$RecipeDetailStateCopyWithImpl;
@override @useResult
$Res call({
 String id, Option<RecipeDetail> recipe, bool isFavoriteLoading, bool isLoading, Option<String> error
});




}
/// @nodoc
class __$RecipeDetailStateCopyWithImpl<$Res>
    implements _$RecipeDetailStateCopyWith<$Res> {
  __$RecipeDetailStateCopyWithImpl(this._self, this._then);

  final _RecipeDetailState _self;
  final $Res Function(_RecipeDetailState) _then;

/// Create a copy of RecipeDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? recipe = null,Object? isFavoriteLoading = null,Object? isLoading = null,Object? error = null,}) {
  return _then(_RecipeDetailState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,recipe: null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as Option<RecipeDetail>,isFavoriteLoading: null == isFavoriteLoading ? _self.isFavoriteLoading : isFavoriteLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}


}

// dart format on
