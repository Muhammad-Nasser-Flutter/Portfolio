import '../helpers/network_info.dart';
import '../helpers/service_locator.dart';
import 'my_dio.dart';

abstract class BaseRepository{
  late NetworkInfo networkInfo;
  late MyDio dio;

  BaseRepository(){
    networkInfo=getIt.get<NetworkInfo>();
    dio=getIt.get<MyDio>();
  }
}