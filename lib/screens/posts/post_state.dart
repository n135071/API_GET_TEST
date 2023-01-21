import 'package:equatable/equatable.dart';

import '../../model/post_api.dart';

class PostState extends Equatable{
const PostState();
@override
List<Object?> get props => [];
}
class PostInitialState extends PostState{

  @override
  List<Object?> get props => [];
}
class PostLoading extends PostState {}

class PostCompleted extends PostState {
  final List<Autogenerated> post;

  const PostCompleted({required this.post});
}

class PostFailed extends PostState {
  final String errorMessage;

  const PostFailed({required this.errorMessage});
}