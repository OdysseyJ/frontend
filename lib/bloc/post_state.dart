import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:adhara_socket_io/adhara_socket_io.dart';
import 'package:week_3/utils/utils.dart';
import 'package:week_3/models/post.dart';

@immutable
abstract class PostState extends Equatable {
  PostState([List props = const []]);

  @override
  List<Object> get props => [];
}

class PostUninitialized extends PostState {
  @override
  String toString() => 'PostUninitialized';
}

class PostError extends PostState {
  @override
  String toString() => 'PostError';
}

class PostLoaded extends PostState {
  final List<Post> posts;
  final bool bReachedMax;

  PostLoaded({this.posts, this.bReachedMax = false});

  PostLoaded copyWith({
    List<Post> posts,
    bool bReachedMax,
  }) {
    return PostLoaded(
      posts: posts ?? this.posts,
      bReachedMax: bReachedMax ?? this.bReachedMax,
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [posts, bReachedMax];

  @override
  String toString() => "PostLoaded";
}
