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
mixin _$ShowsState {

 Option<List<Option<String>>> get languages; Option<String> get selectedLanguage; Option<List<TVShow>> get shows; Option<String> get error;
/// Create a copy of ShowsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowsStateCopyWith<ShowsState> get copyWith => _$ShowsStateCopyWithImpl<ShowsState>(this as ShowsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowsState&&(identical(other.languages, languages) || other.languages == languages)&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage)&&(identical(other.shows, shows) || other.shows == shows)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,languages,selectedLanguage,shows,error);

@override
String toString() {
  return 'ShowsState(languages: $languages, selectedLanguage: $selectedLanguage, shows: $shows, error: $error)';
}


}

/// @nodoc
abstract mixin class $ShowsStateCopyWith<$Res>  {
  factory $ShowsStateCopyWith(ShowsState value, $Res Function(ShowsState) _then) = _$ShowsStateCopyWithImpl;
@useResult
$Res call({
 Option<List<Option<String>>> languages, Option<String> selectedLanguage, Option<List<TVShow>> shows, Option<String> error
});




}
/// @nodoc
class _$ShowsStateCopyWithImpl<$Res>
    implements $ShowsStateCopyWith<$Res> {
  _$ShowsStateCopyWithImpl(this._self, this._then);

  final ShowsState _self;
  final $Res Function(ShowsState) _then;

/// Create a copy of ShowsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languages = null,Object? selectedLanguage = null,Object? shows = null,Object? error = null,}) {
  return _then(_self.copyWith(
languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as Option<List<Option<String>>>,selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as Option<String>,shows: null == shows ? _self.shows : shows // ignore: cast_nullable_to_non_nullable
as Option<List<TVShow>>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShowsState].
extension ShowsStatePatterns on ShowsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShowsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShowsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShowsState value)  $default,){
final _that = this;
switch (_that) {
case _ShowsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShowsState value)?  $default,){
final _that = this;
switch (_that) {
case _ShowsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Option<List<Option<String>>> languages,  Option<String> selectedLanguage,  Option<List<TVShow>> shows,  Option<String> error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShowsState() when $default != null:
return $default(_that.languages,_that.selectedLanguage,_that.shows,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Option<List<Option<String>>> languages,  Option<String> selectedLanguage,  Option<List<TVShow>> shows,  Option<String> error)  $default,) {final _that = this;
switch (_that) {
case _ShowsState():
return $default(_that.languages,_that.selectedLanguage,_that.shows,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Option<List<Option<String>>> languages,  Option<String> selectedLanguage,  Option<List<TVShow>> shows,  Option<String> error)?  $default,) {final _that = this;
switch (_that) {
case _ShowsState() when $default != null:
return $default(_that.languages,_that.selectedLanguage,_that.shows,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ShowsState extends ShowsState {
  const _ShowsState({required this.languages, required this.selectedLanguage, required this.shows, required this.error}): super._();
  

@override final  Option<List<Option<String>>> languages;
@override final  Option<String> selectedLanguage;
@override final  Option<List<TVShow>> shows;
@override final  Option<String> error;

/// Create a copy of ShowsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowsStateCopyWith<_ShowsState> get copyWith => __$ShowsStateCopyWithImpl<_ShowsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowsState&&(identical(other.languages, languages) || other.languages == languages)&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage)&&(identical(other.shows, shows) || other.shows == shows)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,languages,selectedLanguage,shows,error);

@override
String toString() {
  return 'ShowsState(languages: $languages, selectedLanguage: $selectedLanguage, shows: $shows, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ShowsStateCopyWith<$Res> implements $ShowsStateCopyWith<$Res> {
  factory _$ShowsStateCopyWith(_ShowsState value, $Res Function(_ShowsState) _then) = __$ShowsStateCopyWithImpl;
@override @useResult
$Res call({
 Option<List<Option<String>>> languages, Option<String> selectedLanguage, Option<List<TVShow>> shows, Option<String> error
});




}
/// @nodoc
class __$ShowsStateCopyWithImpl<$Res>
    implements _$ShowsStateCopyWith<$Res> {
  __$ShowsStateCopyWithImpl(this._self, this._then);

  final _ShowsState _self;
  final $Res Function(_ShowsState) _then;

/// Create a copy of ShowsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languages = null,Object? selectedLanguage = null,Object? shows = null,Object? error = null,}) {
  return _then(_ShowsState(
languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as Option<List<Option<String>>>,selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as Option<String>,shows: null == shows ? _self.shows : shows // ignore: cast_nullable_to_non_nullable
as Option<List<TVShow>>,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Option<String>,
  ));
}


}

// dart format on
