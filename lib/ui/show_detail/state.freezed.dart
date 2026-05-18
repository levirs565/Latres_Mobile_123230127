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
mixin _$ShowDetailState {

 int get id; Option<TVShowDetail> get show; bool get isFavoriteLoading; bool get isLoading; Option<String> get error;
/// Create a copy of ShowDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowDetailStateCopyWith<ShowDetailState> get copyWith => _$ShowDetailStateCopyWithImpl<ShowDetailState>(this as ShowDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.show, show) || other.show == show)&&(identical(other.isFavoriteLoading, isFavoriteLoading) || other.isFavoriteLoading == isFavoriteLoading)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,id,show,isFavoriteLoading,isLoading,error);

@override
String toString() {
  return 'ShowDetailState(id: $id, show: $show, isFavoriteLoading: $isFavoriteLoading, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $ShowDetailStateCopyWith<$Res>  {
  factory $ShowDetailStateCopyWith(ShowDetailState value, $Res Function(ShowDetailState) _then) = _$ShowDetailStateCopyWithImpl;
@useResult
$Res call({
 int id, Option<TVShowDetail> show, bool isFavoriteLoading, bool isLoading, Option<String> error
});




}
/// @nodoc
class _$ShowDetailStateCopyWithImpl<$Res>
    implements $ShowDetailStateCopyWith<$Res> {
  _$ShowDetailStateCopyWithImpl(this._self, this._then);

  final ShowDetailState _self;
  final $Res Function(ShowDetailState) _then;

/// Create a copy of ShowDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? show = null,Object? isFavoriteLoading = null,Object? isLoading = null,Object? error = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,show: null == show ? _self.show : show // ignore: cast_nullable_to_non_nullable
as Option<TVShowDetail>,isFavoriteLoading: null == isFavoriteLoading ? _self.isFavoriteLoading : isFavoriteLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShowDetailState].
extension ShowDetailStatePatterns on ShowDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShowDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShowDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShowDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ShowDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShowDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ShowDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Option<TVShowDetail> show,  bool isFavoriteLoading,  bool isLoading,  Option<String> error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShowDetailState() when $default != null:
return $default(_that.id,_that.show,_that.isFavoriteLoading,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Option<TVShowDetail> show,  bool isFavoriteLoading,  bool isLoading,  Option<String> error)  $default,) {final _that = this;
switch (_that) {
case _ShowDetailState():
return $default(_that.id,_that.show,_that.isFavoriteLoading,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  Option<TVShowDetail> show,  bool isFavoriteLoading,  bool isLoading,  Option<String> error)?  $default,) {final _that = this;
switch (_that) {
case _ShowDetailState() when $default != null:
return $default(_that.id,_that.show,_that.isFavoriteLoading,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ShowDetailState implements ShowDetailState {
  const _ShowDetailState({required this.id, required this.show, required this.isFavoriteLoading, required this.isLoading, required this.error});
  

@override final  int id;
@override final  Option<TVShowDetail> show;
@override final  bool isFavoriteLoading;
@override final  bool isLoading;
@override final  Option<String> error;

/// Create a copy of ShowDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowDetailStateCopyWith<_ShowDetailState> get copyWith => __$ShowDetailStateCopyWithImpl<_ShowDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowDetailState&&(identical(other.id, id) || other.id == id)&&(identical(other.show, show) || other.show == show)&&(identical(other.isFavoriteLoading, isFavoriteLoading) || other.isFavoriteLoading == isFavoriteLoading)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,id,show,isFavoriteLoading,isLoading,error);

@override
String toString() {
  return 'ShowDetailState(id: $id, show: $show, isFavoriteLoading: $isFavoriteLoading, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ShowDetailStateCopyWith<$Res> implements $ShowDetailStateCopyWith<$Res> {
  factory _$ShowDetailStateCopyWith(_ShowDetailState value, $Res Function(_ShowDetailState) _then) = __$ShowDetailStateCopyWithImpl;
@override @useResult
$Res call({
 int id, Option<TVShowDetail> show, bool isFavoriteLoading, bool isLoading, Option<String> error
});




}
/// @nodoc
class __$ShowDetailStateCopyWithImpl<$Res>
    implements _$ShowDetailStateCopyWith<$Res> {
  __$ShowDetailStateCopyWithImpl(this._self, this._then);

  final _ShowDetailState _self;
  final $Res Function(_ShowDetailState) _then;

/// Create a copy of ShowDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? show = null,Object? isFavoriteLoading = null,Object? isLoading = null,Object? error = null,}) {
  return _then(_ShowDetailState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,show: null == show ? _self.show : show // ignore: cast_nullable_to_non_nullable
as Option<TVShowDetail>,isFavoriteLoading: null == isFavoriteLoading ? _self.isFavoriteLoading : isFavoriteLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}


}

// dart format on
