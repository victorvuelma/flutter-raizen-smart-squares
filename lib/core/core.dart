import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/data/api/io_client.dart';
import 'package:raizen_smart_squares/data/repositories/activation/activation_repository.dart';
import 'package:raizen_smart_squares/data/repositories/authenticate/authenticate_repository.dart';
import 'package:raizen_smart_squares/data/repositories/customer/customer_repository.dart';
import 'package:raizen_smart_squares/data/repositories/offer/offer_repository.dart';
import 'package:raizen_smart_squares/data/repositories/place/place_repository.dart';
import 'package:raizen_smart_squares/data/repositories/session/session_repository.dart';
import 'package:socket_io_client/socket_io_client.dart';

class CoreInjection {
  CoreInjection._();

  static Future<void> register() async {
    InternalStorage internalStorage = InternalStorage();
    await internalStorage.init();
    Get.put<InternalStorage>(internalStorage, permanent: true);

    SecureStorage secureStorage = SecureStorage();
    Get.put<SecureStorage>(secureStorage, permanent: true);

    Connectivity connectivity = Connectivity();
    NetworkInfo networkInfo = NetworkInfo(connectivity);
    Get.put<NetworkInfo>(networkInfo, permanent: true);

    Get.lazyPut<AuthenticationManager>(
      () => AuthenticationManager(
        internalStorage: Get.find<InternalStorage>(),
        secureStorage: Get.find<SecureStorage>(),
      ),
      fenix: true,
    );

    ApiClient apiClient = ApiClient(
      authenticationManager: Get.find<AuthenticationManager>(),
    );
    apiClient.init();
    Get.put<ApiClient>(apiClient, permanent: true);
    Get.put<Dio>(apiClient.dio, permanent: true);

    IoClient ioClient = IoClient(
      authenticationManager: Get.find<AuthenticationManager>(),
    );
    Get.put<IoClient>(ioClient, permanent: true);
    Get.put<Socket>(ioClient.client, permanent: true);

    Get.lazyPut<AuthenticateRepository>(
      () => AuthenticateRepository(Get.find<Dio>()),
      fenix: true,
    );

    Get.lazyPut<ActivationRepository>(
      () => ActivationRepository(Get.find<Dio>()),
      fenix: true,
    );

    Get.lazyPut<CustomerRepository>(
      () => CustomerRepository(Get.find<Dio>()),
      fenix: true,
    );

    Get.lazyPut<OfferRepository>(
      () => OfferRepository(Get.find<Dio>()),
      fenix: true,
    );

    Get.lazyPut<SessionRepository>(
      () => SessionRepository(Get.find<Dio>()),
      fenix: true,
    );

    Get.lazyPut<PlaceRepository>(
      () => PlaceRepository(Get.find<Dio>()),
      fenix: true,
    );
  }
}
