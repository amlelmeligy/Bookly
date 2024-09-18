// بنستدعي get_it ونعممها هنا ونناديها من اي مكان بقي
import 'package:bookly/home_section/Data/api_service.dart';
import 'package:bookly/home_section/Data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
