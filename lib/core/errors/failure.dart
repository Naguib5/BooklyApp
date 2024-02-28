// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request with ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Connection Error');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(errMessage: 'NO Internet Connection');
        }
        return ServerFailure(errMessage: 'Unexpected Error , please try again');
      default:
        return ServerFailure(
            errMessage: 'Opps there was Error , please try again !');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'your request not found , please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'internal server error, please try later!');
    } else {
      return ServerFailure(
          errMessage: 'Opps there was Error , please try again !');
    }
  }
}
