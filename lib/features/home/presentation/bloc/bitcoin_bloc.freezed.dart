// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitcoin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BitcoinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updatedPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updatedPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updatedPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatedPrice value) updatedPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatedPrice value)? updatedPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatedPrice value)? updatedPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinEventCopyWith<$Res> {
  factory $BitcoinEventCopyWith(
          BitcoinEvent value, $Res Function(BitcoinEvent) then) =
      _$BitcoinEventCopyWithImpl<$Res, BitcoinEvent>;
}

/// @nodoc
class _$BitcoinEventCopyWithImpl<$Res, $Val extends BitcoinEvent>
    implements $BitcoinEventCopyWith<$Res> {
  _$BitcoinEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdatedPriceImplCopyWith<$Res> {
  factory _$$UpdatedPriceImplCopyWith(
          _$UpdatedPriceImpl value, $Res Function(_$UpdatedPriceImpl) then) =
      __$$UpdatedPriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedPriceImplCopyWithImpl<$Res>
    extends _$BitcoinEventCopyWithImpl<$Res, _$UpdatedPriceImpl>
    implements _$$UpdatedPriceImplCopyWith<$Res> {
  __$$UpdatedPriceImplCopyWithImpl(
      _$UpdatedPriceImpl _value, $Res Function(_$UpdatedPriceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedPriceImpl implements _UpdatedPrice {
  const _$UpdatedPriceImpl();

  @override
  String toString() {
    return 'BitcoinEvent.updatedPrice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedPriceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updatedPrice,
  }) {
    return updatedPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updatedPrice,
  }) {
    return updatedPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updatedPrice,
    required TResult orElse(),
  }) {
    if (updatedPrice != null) {
      return updatedPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatedPrice value) updatedPrice,
  }) {
    return updatedPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatedPrice value)? updatedPrice,
  }) {
    return updatedPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatedPrice value)? updatedPrice,
    required TResult orElse(),
  }) {
    if (updatedPrice != null) {
      return updatedPrice(this);
    }
    return orElse();
  }
}

abstract class _UpdatedPrice implements BitcoinEvent {
  const factory _UpdatedPrice() = _$UpdatedPriceImpl;
}

/// @nodoc
mixin _$BitcoinState {
  Either<Failure, BitcoinEntity>? get updatePriceResult =>
      throw _privateConstructorUsedError;
  List<BitcoinEntity> get bitcoinList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BitcoinStateCopyWith<BitcoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinStateCopyWith<$Res> {
  factory $BitcoinStateCopyWith(
          BitcoinState value, $Res Function(BitcoinState) then) =
      _$BitcoinStateCopyWithImpl<$Res, BitcoinState>;
  @useResult
  $Res call(
      {Either<Failure, BitcoinEntity>? updatePriceResult,
      List<BitcoinEntity> bitcoinList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$BitcoinStateCopyWithImpl<$Res, $Val extends BitcoinState>
    implements $BitcoinStateCopyWith<$Res> {
  _$BitcoinStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePriceResult = freezed,
    Object? bitcoinList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      updatePriceResult: freezed == updatePriceResult
          ? _value.updatePriceResult
          : updatePriceResult // ignore: cast_nullable_to_non_nullable
              as Either<Failure, BitcoinEntity>?,
      bitcoinList: null == bitcoinList
          ? _value.bitcoinList
          : bitcoinList // ignore: cast_nullable_to_non_nullable
              as List<BitcoinEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BitcoinStateImplCopyWith<$Res>
    implements $BitcoinStateCopyWith<$Res> {
  factory _$$BitcoinStateImplCopyWith(
          _$BitcoinStateImpl value, $Res Function(_$BitcoinStateImpl) then) =
      __$$BitcoinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<Failure, BitcoinEntity>? updatePriceResult,
      List<BitcoinEntity> bitcoinList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$BitcoinStateImplCopyWithImpl<$Res>
    extends _$BitcoinStateCopyWithImpl<$Res, _$BitcoinStateImpl>
    implements _$$BitcoinStateImplCopyWith<$Res> {
  __$$BitcoinStateImplCopyWithImpl(
      _$BitcoinStateImpl _value, $Res Function(_$BitcoinStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatePriceResult = freezed,
    Object? bitcoinList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$BitcoinStateImpl(
      updatePriceResult: freezed == updatePriceResult
          ? _value.updatePriceResult
          : updatePriceResult // ignore: cast_nullable_to_non_nullable
              as Either<Failure, BitcoinEntity>?,
      bitcoinList: null == bitcoinList
          ? _value._bitcoinList
          : bitcoinList // ignore: cast_nullable_to_non_nullable
              as List<BitcoinEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BitcoinStateImpl implements _BitcoinState {
  const _$BitcoinStateImpl(
      {this.updatePriceResult,
      required final List<BitcoinEntity> bitcoinList,
      required this.isLoading,
      required this.isError})
      : _bitcoinList = bitcoinList;

  @override
  final Either<Failure, BitcoinEntity>? updatePriceResult;
  final List<BitcoinEntity> _bitcoinList;
  @override
  List<BitcoinEntity> get bitcoinList {
    if (_bitcoinList is EqualUnmodifiableListView) return _bitcoinList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bitcoinList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'BitcoinState(updatePriceResult: $updatePriceResult, bitcoinList: $bitcoinList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitcoinStateImpl &&
            (identical(other.updatePriceResult, updatePriceResult) ||
                other.updatePriceResult == updatePriceResult) &&
            const DeepCollectionEquality()
                .equals(other._bitcoinList, _bitcoinList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatePriceResult,
      const DeepCollectionEquality().hash(_bitcoinList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BitcoinStateImplCopyWith<_$BitcoinStateImpl> get copyWith =>
      __$$BitcoinStateImplCopyWithImpl<_$BitcoinStateImpl>(this, _$identity);
}

abstract class _BitcoinState implements BitcoinState {
  const factory _BitcoinState(
      {final Either<Failure, BitcoinEntity>? updatePriceResult,
      required final List<BitcoinEntity> bitcoinList,
      required final bool isLoading,
      required final bool isError}) = _$BitcoinStateImpl;

  @override
  Either<Failure, BitcoinEntity>? get updatePriceResult;
  @override
  List<BitcoinEntity> get bitcoinList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$BitcoinStateImplCopyWith<_$BitcoinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
