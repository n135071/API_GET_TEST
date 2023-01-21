import 'package:equatable/equatable.dart';

import '../../model/image_api.dart';

class ImageState extends Equatable {
  const ImageState();

  @override
  List<Object?> get props => [];
}

class ImageInitialState extends ImageState {
  @override
  List<Object?> get props => [];
}

class ImageLoading extends ImageState {}

class ImageCompleted extends ImageState {
  final List<ImageApi> image;

  const ImageCompleted({required this.image});
}

class ImageFailed extends ImageState {
  final String errorMessage;

  const ImageFailed({required this.errorMessage});
}
