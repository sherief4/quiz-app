// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkExceptions {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkExceptions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions()';
}


}

/// @nodoc
class $NetworkExceptionsCopyWith<$Res>  {
$NetworkExceptionsCopyWith(NetworkExceptions _, $Res Function(NetworkExceptions) __);
}


/// @nodoc


class RequestCancelled implements NetworkExceptions {
  const RequestCancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.requestCancelled()';
}


}




/// @nodoc


class UnauthorizedRequest implements NetworkExceptions {
  const UnauthorizedRequest(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedRequestCopyWith<UnauthorizedRequest> get copyWith => _$UnauthorizedRequestCopyWithImpl<UnauthorizedRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedRequest&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.unauthorizedRequest(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedRequestCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnauthorizedRequestCopyWith(UnauthorizedRequest value, $Res Function(UnauthorizedRequest) _then) = _$UnauthorizedRequestCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$UnauthorizedRequestCopyWithImpl<$Res>
    implements $UnauthorizedRequestCopyWith<$Res> {
  _$UnauthorizedRequestCopyWithImpl(this._self, this._then);

  final UnauthorizedRequest _self;
  final $Res Function(UnauthorizedRequest) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(UnauthorizedRequest(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class UnauthenticatedRequest implements NetworkExceptions {
  const UnauthenticatedRequest(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthenticatedRequestCopyWith<UnauthenticatedRequest> get copyWith => _$UnauthenticatedRequestCopyWithImpl<UnauthenticatedRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthenticatedRequest&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.unauthenticatedRequest(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $UnauthenticatedRequestCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnauthenticatedRequestCopyWith(UnauthenticatedRequest value, $Res Function(UnauthenticatedRequest) _then) = _$UnauthenticatedRequestCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$UnauthenticatedRequestCopyWithImpl<$Res>
    implements $UnauthenticatedRequestCopyWith<$Res> {
  _$UnauthenticatedRequestCopyWithImpl(this._self, this._then);

  final UnauthenticatedRequest _self;
  final $Res Function(UnauthenticatedRequest) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(UnauthenticatedRequest(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class BadRequest implements NetworkExceptions {
  const BadRequest(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadRequestCopyWith<BadRequest> get copyWith => _$BadRequestCopyWithImpl<BadRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadRequest&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.badRequest(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $BadRequestCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $BadRequestCopyWith(BadRequest value, $Res Function(BadRequest) _then) = _$BadRequestCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$BadRequestCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(this._self, this._then);

  final BadRequest _self;
  final $Res Function(BadRequest) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(BadRequest(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class NotFound implements NetworkExceptions {
  const NotFound(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundCopyWith<NotFound> get copyWith => _$NotFoundCopyWithImpl<NotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.notFound(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $NotFoundCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) _then) = _$NotFoundCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$NotFoundCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(this._self, this._then);

  final NotFound _self;
  final $Res Function(NotFound) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(NotFound(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class MethodNotAllowed implements NetworkExceptions {
  const MethodNotAllowed(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MethodNotAllowedCopyWith<MethodNotAllowed> get copyWith => _$MethodNotAllowedCopyWithImpl<MethodNotAllowed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MethodNotAllowed&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.methodNotAllowed(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $MethodNotAllowedCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $MethodNotAllowedCopyWith(MethodNotAllowed value, $Res Function(MethodNotAllowed) _then) = _$MethodNotAllowedCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$MethodNotAllowedCopyWithImpl<$Res>
    implements $MethodNotAllowedCopyWith<$Res> {
  _$MethodNotAllowedCopyWithImpl(this._self, this._then);

  final MethodNotAllowed _self;
  final $Res Function(MethodNotAllowed) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(MethodNotAllowed(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class NotAcceptable implements NetworkExceptions {
  const NotAcceptable(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotAcceptableCopyWith<NotAcceptable> get copyWith => _$NotAcceptableCopyWithImpl<NotAcceptable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotAcceptable&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.notAcceptable(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $NotAcceptableCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $NotAcceptableCopyWith(NotAcceptable value, $Res Function(NotAcceptable) _then) = _$NotAcceptableCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$NotAcceptableCopyWithImpl<$Res>
    implements $NotAcceptableCopyWith<$Res> {
  _$NotAcceptableCopyWithImpl(this._self, this._then);

  final NotAcceptable _self;
  final $Res Function(NotAcceptable) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(NotAcceptable(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class RequestTimeout implements NetworkExceptions {
  const RequestTimeout(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestTimeoutCopyWith<RequestTimeout> get copyWith => _$RequestTimeoutCopyWithImpl<RequestTimeout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestTimeout&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.requestTimeout(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $RequestTimeoutCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $RequestTimeoutCopyWith(RequestTimeout value, $Res Function(RequestTimeout) _then) = _$RequestTimeoutCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$RequestTimeoutCopyWithImpl<$Res>
    implements $RequestTimeoutCopyWith<$Res> {
  _$RequestTimeoutCopyWithImpl(this._self, this._then);

  final RequestTimeout _self;
  final $Res Function(RequestTimeout) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(RequestTimeout(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class SendTimeout implements NetworkExceptions {
  const SendTimeout(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTimeoutCopyWith<SendTimeout> get copyWith => _$SendTimeoutCopyWithImpl<SendTimeout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTimeout&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.sendTimeout(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $SendTimeoutCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $SendTimeoutCopyWith(SendTimeout value, $Res Function(SendTimeout) _then) = _$SendTimeoutCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$SendTimeoutCopyWithImpl<$Res>
    implements $SendTimeoutCopyWith<$Res> {
  _$SendTimeoutCopyWithImpl(this._self, this._then);

  final SendTimeout _self;
  final $Res Function(SendTimeout) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(SendTimeout(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class RecieveTimeOut implements NetworkExceptions {
  const RecieveTimeOut(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecieveTimeOutCopyWith<RecieveTimeOut> get copyWith => _$RecieveTimeOutCopyWithImpl<RecieveTimeOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecieveTimeOut&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.receiveTimeout(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $RecieveTimeOutCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $RecieveTimeOutCopyWith(RecieveTimeOut value, $Res Function(RecieveTimeOut) _then) = _$RecieveTimeOutCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$RecieveTimeOutCopyWithImpl<$Res>
    implements $RecieveTimeOutCopyWith<$Res> {
  _$RecieveTimeOutCopyWithImpl(this._self, this._then);

  final RecieveTimeOut _self;
  final $Res Function(RecieveTimeOut) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(RecieveTimeOut(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class Conflict implements NetworkExceptions {
  const Conflict(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConflictCopyWith<Conflict> get copyWith => _$ConflictCopyWithImpl<Conflict>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Conflict&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.conflict(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $ConflictCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $ConflictCopyWith(Conflict value, $Res Function(Conflict) _then) = _$ConflictCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$ConflictCopyWithImpl<$Res>
    implements $ConflictCopyWith<$Res> {
  _$ConflictCopyWithImpl(this._self, this._then);

  final Conflict _self;
  final $Res Function(Conflict) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(Conflict(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class InternalServerError implements NetworkExceptions {
  const InternalServerError(this.reason, this.validation);
  

 final  String reason;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternalServerErrorCopyWith<InternalServerError> get copyWith => _$InternalServerErrorCopyWithImpl<InternalServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalServerError&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,reason,validation);

@override
String toString() {
  return 'NetworkExceptions.internalServerError(reason: $reason, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $InternalServerErrorCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $InternalServerErrorCopyWith(InternalServerError value, $Res Function(InternalServerError) _then) = _$InternalServerErrorCopyWithImpl;
@useResult
$Res call({
 String reason, ValidationModel? validation
});




}
/// @nodoc
class _$InternalServerErrorCopyWithImpl<$Res>
    implements $InternalServerErrorCopyWith<$Res> {
  _$InternalServerErrorCopyWithImpl(this._self, this._then);

  final InternalServerError _self;
  final $Res Function(InternalServerError) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? validation = freezed,}) {
  return _then(InternalServerError(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class NotImplemented implements NetworkExceptions {
  const NotImplemented(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotImplementedCopyWith<NotImplemented> get copyWith => _$NotImplementedCopyWithImpl<NotImplemented>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotImplemented&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.notImplemented(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $NotImplementedCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $NotImplementedCopyWith(NotImplemented value, $Res Function(NotImplemented) _then) = _$NotImplementedCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$NotImplementedCopyWithImpl<$Res>
    implements $NotImplementedCopyWith<$Res> {
  _$NotImplementedCopyWithImpl(this._self, this._then);

  final NotImplemented _self;
  final $Res Function(NotImplemented) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(NotImplemented(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class ServiceUnavailable implements NetworkExceptions {
  const ServiceUnavailable(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceUnavailableCopyWith<ServiceUnavailable> get copyWith => _$ServiceUnavailableCopyWithImpl<ServiceUnavailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceUnavailable&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.serviceUnavailable(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $ServiceUnavailableCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $ServiceUnavailableCopyWith(ServiceUnavailable value, $Res Function(ServiceUnavailable) _then) = _$ServiceUnavailableCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$ServiceUnavailableCopyWithImpl<$Res>
    implements $ServiceUnavailableCopyWith<$Res> {
  _$ServiceUnavailableCopyWithImpl(this._self, this._then);

  final ServiceUnavailable _self;
  final $Res Function(ServiceUnavailable) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(ServiceUnavailable(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class NoInternetConnection implements NetworkExceptions {
  const NoInternetConnection(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoInternetConnectionCopyWith<NoInternetConnection> get copyWith => _$NoInternetConnectionCopyWithImpl<NoInternetConnection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetConnection&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.noInternetConnection(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $NoInternetConnectionCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value, $Res Function(NoInternetConnection) _then) = _$NoInternetConnectionCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(this._self, this._then);

  final NoInternetConnection _self;
  final $Res Function(NoInternetConnection) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(NoInternetConnection(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class FormatException implements NetworkExceptions {
  const FormatException(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatExceptionCopyWith<FormatException> get copyWith => _$FormatExceptionCopyWithImpl<FormatException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatException&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.formatException(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $FormatExceptionCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $FormatExceptionCopyWith(FormatException value, $Res Function(FormatException) _then) = _$FormatExceptionCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$FormatExceptionCopyWithImpl<$Res>
    implements $FormatExceptionCopyWith<$Res> {
  _$FormatExceptionCopyWithImpl(this._self, this._then);

  final FormatException _self;
  final $Res Function(FormatException) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(FormatException(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class UnableToProcess implements NetworkExceptions {
  const UnableToProcess(this.error, this.validation);
  

 final  String error;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnableToProcessCopyWith<UnableToProcess> get copyWith => _$UnableToProcessCopyWithImpl<UnableToProcess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnableToProcess&&(identical(other.error, error) || other.error == error)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,error,validation);

@override
String toString() {
  return 'NetworkExceptions.unableToProcess(error: $error, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $UnableToProcessCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnableToProcessCopyWith(UnableToProcess value, $Res Function(UnableToProcess) _then) = _$UnableToProcessCopyWithImpl;
@useResult
$Res call({
 String error, ValidationModel? validation
});




}
/// @nodoc
class _$UnableToProcessCopyWithImpl<$Res>
    implements $UnableToProcessCopyWith<$Res> {
  _$UnableToProcessCopyWithImpl(this._self, this._then);

  final UnableToProcess _self;
  final $Res Function(UnableToProcess) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? validation = freezed,}) {
  return _then(UnableToProcess(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class DefaultError implements NetworkExceptions {
  const DefaultError(this.error, this.validation);
  

 final  String error;
 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultErrorCopyWith<DefaultError> get copyWith => _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultError&&(identical(other.error, error) || other.error == error)&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,error,validation);

@override
String toString() {
  return 'NetworkExceptions.defaultError(error: $error, validation: $validation)';
}


}

/// @nodoc
abstract mixin class $DefaultErrorCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $DefaultErrorCopyWith(DefaultError value, $Res Function(DefaultError) _then) = _$DefaultErrorCopyWithImpl;
@useResult
$Res call({
 String error, ValidationModel? validation
});




}
/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._self, this._then);

  final DefaultError _self;
  final $Res Function(DefaultError) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? validation = freezed,}) {
  return _then(DefaultError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

/// @nodoc


class UnexpectedError implements NetworkExceptions {
  const UnexpectedError(this.validation);
  

 final  ValidationModel? validation;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedErrorCopyWith<UnexpectedError> get copyWith => _$UnexpectedErrorCopyWithImpl<UnexpectedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedError&&(identical(other.validation, validation) || other.validation == validation));
}


@override
int get hashCode => Object.hash(runtimeType,validation);

@override
String toString() {
  return 'NetworkExceptions.unexpectedError(validation: $validation)';
}


}

/// @nodoc
abstract mixin class $UnexpectedErrorCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(UnexpectedError value, $Res Function(UnexpectedError) _then) = _$UnexpectedErrorCopyWithImpl;
@useResult
$Res call({
 ValidationModel? validation
});




}
/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(this._self, this._then);

  final UnexpectedError _self;
  final $Res Function(UnexpectedError) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? validation = freezed,}) {
  return _then(UnexpectedError(
freezed == validation ? _self.validation : validation // ignore: cast_nullable_to_non_nullable
as ValidationModel?,
  ));
}


}

// dart format on
