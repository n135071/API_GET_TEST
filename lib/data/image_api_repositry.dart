import 'package:dio/dio.dart';

import '../model/image_api.dart';
import '../model/response_model.dart';

class ImageApiRepository{
  Dio dio=Dio();
Future<ResponseModel<List<ImageApi>>> showimage()async{
  var response = await dio.get('https://jsonplaceholder.typicode.com/photos');
  List<ImageApi> image = [];
  try{
    for (var i in response.data) {
      image.add(ImageApi.fromJson(i));
    }
    return ResponseModel.complete(data: image);
  }on DioError catch (e) {
    String message =
    e.response == null ? e.message : 'error';
    if (e.type == DioErrorType.other) {
      return ResponseModel.withError(message: message);
    }
    return ResponseModel.withError(message: message);
  } on Exception catch (e) {
    return ResponseModel.withError(message: e.toString());
  }


}

}