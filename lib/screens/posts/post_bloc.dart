import 'package:api_test/model/response_model.dart';
import 'package:api_test/screens/posts/post_event.dart';
import 'package:api_test/screens/posts/post_state.dart';
import 'package:bloc/bloc.dart';

import '../../data/post_repositry.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(super.initialState) {
    on<PostLoad>(getPosts);
  }

  void getPosts(PostEvent event, Emitter<PostState> emit) async {
    emit(PostLoading());
    PostRepository postRepository = PostRepository();
    ResponseModel response = await (postRepository.getPost()) as ResponseModel;
    if (response.hasError) {
      emit(PostFailed(errorMessage: response.message));
    } else {
      emit(PostCompleted(post: response.data));
    }
  }
}
