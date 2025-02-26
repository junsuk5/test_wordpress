import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
import 'package:test_virtue/data/data_source/remote/simple_post_list_api.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/domain/repository/post_repository.dart';

class SimplePostRepositoryImpl implements PostRepository {
  SimplePostApi simplePostLApi;

  SimplePostRepositoryImpl(this.simplePostLApi);

  @override
  Future<Result<SimplePostModel>> getPost() async {
    return simplePostLApi.fetchData();
  }
}
