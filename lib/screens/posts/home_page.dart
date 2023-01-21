import 'package:api_test/screens/posts/home_body.dart';
import 'package:api_test/screens/posts/post_event.dart';
import 'package:api_test/screens/posts/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'post_bloc.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Post'),
    ),
    body: BlocProvider(create: (context)=> PostBloc(PostInitialState())..add(PostLoad()

    ),
child: const PostBody(),
    ),
    );

  }
}
