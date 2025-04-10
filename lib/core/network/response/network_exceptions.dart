import 'dart:io';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'general_response_model.dart';
import 'validation_model.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(
    String reason,
    ValidationModel? validation,
  ) = UnauthorizedRequest;

  const factory NetworkExceptions.unauthenticatedRequest(
    String reason,
    ValidationModel? validation,
  ) = UnauthenticatedRequest;

  const factory NetworkExceptions.badRequest(
    String reason,
    ValidationModel? validation,
  ) = BadRequest;

  const factory NetworkExceptions.notFound(
    String reason,
    ValidationModel? validation,
  ) = NotFound;

  const factory NetworkExceptions.methodNotAllowed(
    String reason,
    ValidationModel? validation,
  ) = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable(ValidationModel? validation) =
      NotAcceptable;

  const factory NetworkExceptions.requestTimeout(ValidationModel? validation) =
      RequestTimeout;

  const factory NetworkExceptions.sendTimeout(ValidationModel? validation) =
      SendTimeout;

  const factory NetworkExceptions.receiveTimeout(ValidationModel? validation) =
      RecieveTimeOut;

  const factory NetworkExceptions.conflict(
    String reason,
    ValidationModel? validation,
  ) = Conflict;

  const factory NetworkExceptions.internalServerError(
    String reason,
    ValidationModel? validation,
  ) = InternalServerError;

  const factory NetworkExceptions.notImplemented(ValidationModel? validation) =
      NotImplemented;

  const factory NetworkExceptions.serviceUnavailable(
    ValidationModel? validation,
  ) = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection(
    ValidationModel? validation,
  ) = NoInternetConnection;

  const factory NetworkExceptions.formatException(ValidationModel? validation) =
      FormatException;

  const factory NetworkExceptions.unableToProcess(
    String error,
    ValidationModel? validation,
  ) = UnableToProcess;

  const factory NetworkExceptions.defaultError(
    String error,
    ValidationModel? validation,
  ) = DefaultError;

  const factory NetworkExceptions.unexpectedError(ValidationModel? validation) =
      UnexpectedError;

  static NetworkExceptions handleResponse(Response? response) {
    GeneralResponseModel? errorModel;
    errorModel = GeneralResponseModel.fromJson(response?.data);
    int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      case 302:
        return NetworkExceptions.notFound(
          errorModel.message,
          errorModel.validation,
        );
      case 400:
        return NetworkExceptions.badRequest(
          errorModel.message,
          errorModel.validation,
        );
      case 401:
        return NetworkExceptions.unauthorizedRequest(
          errorModel.message,
          errorModel.validation,
        );
      case 402:
      case 403:
        return NetworkExceptions.methodNotAllowed(
          errorModel.message,
          errorModel.validation,
        );
      case 404:
        return NetworkExceptions.conflict(
          errorModel.message,
          errorModel.validation,
        );
      case 409:
        return NetworkExceptions.conflict(
          errorModel.message,
          errorModel.validation,
        );
      case 408:
        return NetworkExceptions.requestTimeout(errorModel.validation);
      case 422:
        return NetworkExceptions.unableToProcess(
          errorModel.message,
          errorModel.validation,
        );
      case 500:
        return NetworkExceptions.internalServerError(
          errorModel.message,
          errorModel.validation,
        );
      case 503:
        return NetworkExceptions.serviceUnavailable(errorModel.validation);
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
          errorModel.validation,
        );
    }
  }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
            case DioExceptionType.unknown:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
            case DioExceptionType.badResponse:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
            case DioExceptionType.badCertificate:
            case DioExceptionType.connectionError:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;

            case DioExceptionType.receiveTimeout:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection(
            null,
          );
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError(null);
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException(null);
      } catch (_) {
        return const NetworkExceptions.unexpectedError(null);
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return NetworkExceptions.unableToProcess(error.toString(), null);
      } else {
        return const NetworkExceptions.unexpectedError(null);
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkException) {
    String errorMessage = "";

    if (networkException is Conflict) {
      errorMessage = networkException.reason;
    } else if (networkException is NotImplemented) {
      errorMessage = "Not implemented";
    } else if (networkException is UnauthenticatedRequest) {
      errorMessage = networkException.reason;
    } else if (networkException is RequestCancelled) {
      errorMessage = "Request was cancelled";
    } else if (networkException is InternalServerError) {
      errorMessage = networkException.reason;
    } else if (networkException is NotFound) {
      errorMessage = networkException.reason;
    } else if (networkException is ServiceUnavailable) {
      errorMessage = "Service unavailable";
    } else if (networkException is MethodNotAllowed) {
      errorMessage = networkException.reason;
    } else if (networkException is BadRequest) {
      errorMessage = networkException.reason;
    } else if (networkException is UnauthorizedRequest) {
      errorMessage = networkException.reason;
    } else if (networkException is UnexpectedError) {
      errorMessage = "Unexpected error occurred";
    } else if (networkException is RequestTimeout) {
      errorMessage = "Request timeout";
    } else if (NetworkExceptions is RecieveTimeOut) {
      errorMessage = "Receive timeout";
    } else if (networkException is NoInternetConnection) {
      errorMessage = "No internet connection";
    } else if (networkException is SendTimeout) {
      errorMessage = "Send timeout";
    } else if (networkException is UnableToProcess) {
      errorMessage = networkException.error;
    } else if (networkException is DefaultError) {
      errorMessage = networkException.error;
    } else if (networkException is FormatException) {
      errorMessage = "Unexpected error occurred";
    } else if (networkException is ServiceUnavailable) {
      errorMessage = "Service unavailable";
    } else if (networkException is SocketException) {
      errorMessage = "No internet connection";
    } else if (networkException is UnableToProcess) {
      errorMessage = networkException.error;
    }

    return errorMessage;
  }

  static ValidationModel? getValidation(NetworkExceptions networkException) {
    ValidationModel? validationModel;
    if (networkException is Conflict) {
      validationModel = networkException.validation;
    } else if (networkException is NotImplemented) {
      validationModel = networkException.validation;
    } else if (networkException is UnauthenticatedRequest) {
      validationModel = networkException.validation;
    } else if (networkException is InternalServerError) {
      validationModel = networkException.validation;
    } else if (networkException is NotFound) {
      validationModel = networkException.validation;
    } else if (networkException is ServiceUnavailable) {
      validationModel = networkException.validation;
    } else if (networkException is MethodNotAllowed) {
      validationModel = networkException.validation;
    } else if (networkException is BadRequest) {
      validationModel = networkException.validation;
    } else if (networkException is UnexpectedError) {
      validationModel = networkException.validation;
    } else if (networkException is RequestTimeout) {
      validationModel = networkException.validation;
    } else if (networkException is RequestTimeout) {
      validationModel = networkException.validation;
    } else if (networkException is NoInternetConnection) {
      validationModel = networkException.validation;
    } else if (networkException is SendTimeout) {
      validationModel = networkException.validation;
    } else if (networkException is UnableToProcess) {
      validationModel = networkException.validation;
    } else if (networkException is DefaultError) {
      validationModel = networkException.validation;
    } else if (networkException is FormatException) {
      validationModel = networkException.validation;
    } else if (networkException is NotAcceptable) {
      validationModel = networkException.validation;
    }

    return validationModel;
  }
}
