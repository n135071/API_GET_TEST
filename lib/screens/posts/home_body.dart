import 'package:api_test/screens/posts/post_bloc.dart';
import 'package:api_test/screens/posts/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBody extends StatelessWidget {
  const PostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
        builder: (BuildContext context, PostState state) {
      if (state is PostFailed) {
        return Center(
          child: Text(state.errorMessage),
        );
      }
      if (state is PostCompleted) {
        if (state.post.isEmpty) {
          return const Center(
            child: Text('no history'),
          );
        }
        return ListView.builder(itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text('${state.post[index].title}'),
            ],
          );
        });
      }
      return const Center(
        child: CircularProgressIndicator(),
      );

    });
  }
}
