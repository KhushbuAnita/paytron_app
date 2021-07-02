import 'package:dio/dio.dart';

class ApiProvider {
  late Dio _dio;
  String aToken = '';

  final BaseOptions options = new BaseOptions(
    baseUrl: 'https://alpha1.mobikwik.com',
    connectTimeout: 15000,
    receiveTimeout: 13000,
  );
  static final ApiProvider _instance = ApiProvider._internal();

  factory ApiProvider() => _instance;

  ApiProvider._internal() {
    _dio = Dio(options);
    // _dio.interceptors.add(InterceptorsWrapper(
    //     onRequest:(RequestOptions options, RequestInterceptorHandler handler) async {
    //       print(options);
    //       // to prevent other request enter this interceptor.
    //       // We use a new Dio(to avoid dead lock) instance to request token.
    //       //Set the cookie to headers
    //       options.headers["Cookie"] = aToken;
    //       options.headers["checksSum"] = "ZGc/Ew62t0fQV/dsfbrDecTEO99SOJry/Jntq4F8WYs=";
    //       print(options);
    //       return options.data; //continue
    //     }
    // ));
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      options.headers["Cookie"] = aToken;
      options.headers["checksSum"] =
          "ZGc/Ew62t0fQV/dsfbrDecTEO99SOJry/Jntq4F8WYs=";
      print("${options.data}");
      print("${options.uri}");
      return handler.next(options); //continue
    }, onResponse: (response, handler) {
      print("${options.headers}");
      return handler.next(response); // continue
    }, onError: (DioError e, handler) {
      print("${e.response}");
      print("${e.error}");
      return handler.next(e); //continue
    }));
  }

  Future login() async {
    final request = {
      'uid': 'testalpha1@gmail.com',
      'pwd': 'testalpha1@123',
      'cn': '9812312345',
      'op': '29',
      'cir': '5',
      'amt': '50',
      'reqid': '12544172981003'
    };
    final response = await _dio.get(
      '/recharge.do?',
      queryParameters: request,
    );
    print(response);
    //get cooking from response
    final cookies = response.headers.map['set-cookie'];
    if (cookies!.isNotEmpty && cookies.length == 2) {
      final authToken = cookies[1]
          .split(';')[0]; //it depends on how your server sending cookie
      //save this authToken in local storage, and pass in further api calls.

      aToken =
          authToken; //saving this to global variable to refresh current api calls to add cookie.
      print(authToken);
    }

    print(cookies);
    print(response.headers.toString());
    print(response.data);
    print(response);
  }

  /// If we call this function without cookie then it will throw 500 err.
  Future getRestaurants() async {
    final response = await _dio.post('/restaurant/all');

    print(response.data.toString());
  }
}
