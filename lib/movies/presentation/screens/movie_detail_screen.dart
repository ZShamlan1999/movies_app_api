import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/services_locator.dart';
import '../components/movie_detail_content.dart';
import '../controller/movie_details_bloc.dart';

class MovieDetailScreen extends StatelessWidget {
  final int id;

  const MovieDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieDetailsBloc>()
        ..add(GetMovieDetailsEvent(id))
        ..add(GetMovieRecommendationEvent(id)),
      lazy: false,
      child: const Scaffold(
        body: MovieDetailContent(),
      ),
    );
  }
}
