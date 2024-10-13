import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/AppConstance.dart';
import 'package:retrofit/retrofit.dart';

import '../features/UI/models/login_request_body.dart';
import '../features/UI/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstance.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
    @POST(AppConstance.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  
}