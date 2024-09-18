import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

// ignore: deprecated_member_use
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.data, dioError.response!.statusCode);

      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled with ApiServer');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');

      case DioExceptionType.unknown:
        return ServerFailure('Unknown error with ApiServer');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , Please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , Please try again later');
    } else {
      return ServerFailure('Something went wrong , Please try again later');
    }
  }
}
