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
  BitcoinEntity? get signUpResponse => throw _privateConstructorUsedError;
  List<PriceEntity> get uSDPricesList => throw _privateConstructorUsedError;
  List<PriceEntity> get gBPPricesList => throw _privateConstructorUsedError;
  List<PriceEntity> get eURPricesList => throw _privateConstructorUsedError;
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
      {BitcoinEntity? signUpResponse,
      List<PriceEntity> uSDPricesList,
      List<PriceEntity> gBPPricesList,
      List<PriceEntity> eURPricesList,
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
    Object? signUpResponse = freezed,
    Object? uSDPricesList = null,
    Object? gBPPricesList = null,
    Object? eURPricesList = null,
    Object? bitcoinList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as BitcoinEntity?,
      uSDPricesList: null == uSDPricesList
          ? _value.uSDPricesList
          : uSDPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
      gBPPricesList: null == gBPPricesList
          ? _value.gBPPricesList
          : gBPPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
      eURPricesList: null == eURPricesList
          ? _value.eURPricesList
          : eURPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
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
      {BitcoinEntity? signUpResponse,
      List<PriceEntity> uSDPricesList,
      List<PriceEntity> gBPPricesList,
      List<PriceEntity> eURPricesList,
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
    Object? signUpResponse = freezed,
    Object? uSDPricesList = null,
    Object? gBPPricesList = null,
    Object? eURPricesList = null,
    Object? bitcoinList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$BitcoinStateImpl(
      signUpResponse: freezed == signUpResponse
          ? _value.signUpResponse
          : signUpResponse // ignore: cast_nullable_to_non_nullable
              as BitcoinEntity?,
      uSDPricesList: null == uSDPricesList
          ? _value._uSDPricesList
          : uSDPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
      gBPPricesList: null == gBPPricesList
          ? _value._gBPPricesList
          : gBPPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
      eURPricesList: null == eURPricesList
          ? _value._eURPricesList
          : eURPricesList // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
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
      {this.signUpResponse,
      required final List<PriceEntity> uSDPricesList,
      required final List<PriceEntity> gBPPricesList,
      required final List<PriceEntity> eURPricesList,
      required final List<BitcoinEntity> bitcoinList,
      required this.isLoading,
      required this.isError})
      : _uSDPricesList = uSDPricesList,
        _gBPPricesList = gBPPricesList,
        _eURPricesList = eURPricesList,
        _bitcoinList = bitcoinList;

  @override
  final BitcoinEntity? signUpResponse;
  final List<PriceEntity> _uSDPricesList;
  @override
  List<PriceEntity> get uSDPricesList {
    if (_uSDPricesList is EqualUnmodifiableListView) return _uSDPricesList;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uSDPricesList);
  }

  final List<PriceEntity> _gBPPricesList;
  @override
  List<PriceEntity> get gBPPricesList {
    if (_gBPPricesList is EqualUnmodifiableListView) return _gBPPricesList;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gBPPricesList);
  }

  final List<PriceEntity> _eURPricesList;
  @override
  List<PriceEntity> get eURPricesList {
    if (_eURPricesList is EqualUnmodifiableListView) return _eURPricesList;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eURPricesList);
  }

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
    return 'BitcoinState(signUpResponse: $signUpResponse, uSDPricesList: $uSDPricesList, gBPPricesList: $gBPPricesList, eURPricesList: $eURPricesList, bitcoinList: $bitcoinList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitcoinStateImpl &&
            (identical(other.signUpResponse, signUpResponse) ||
                other.signUpResponse == signUpResponse) &&
            const DeepCollectionEquality()
                .equals(other._uSDPricesList, _uSDPricesList) &&
            const DeepCollectionEquality()
                .equals(other._gBPPricesList, _gBPPricesList) &&
            const DeepCollectionEquality()
                .equals(other._eURPricesList, _eURPricesList) &&
            const DeepCollectionEquality()
                .equals(other._bitcoinList, _bitcoinList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      signUpResponse,
      const DeepCollectionEquality().hash(_uSDPricesList),
      const DeepCollectionEquality().hash(_gBPPricesList),
      const DeepCollectionEquality().hash(_eURPricesList),
      const DeepCollectionEquality().hash(_bitcoinList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BitcoinStateImplCopyWith<_$BitcoinStateImpl> get copyWith =>
      __$$BitcoinStateImplCopyWithImpl<_$BitcoinStateImpl>(this, _$identity);
}

abstract class _BitcoinState implements BitcoinState {
  const factory _BitcoinState(
      {final BitcoinEntity? signUpResponse,
      required final List<PriceEntity> uSDPricesList,
      required final List<PriceEntity> gBPPricesList,
      required final List<PriceEntity> eURPricesList,
      required final List<BitcoinEntity> bitcoinList,
      required final bool isLoading,
      required final bool isError}) = _$BitcoinStateImpl;

  @override
  BitcoinEntity? get signUpResponse;
  @override
  List<PriceEntity> get uSDPricesList;
  @override
  List<PriceEntity> get gBPPricesList;
  @override
  List<PriceEntity> get eURPricesList;
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
