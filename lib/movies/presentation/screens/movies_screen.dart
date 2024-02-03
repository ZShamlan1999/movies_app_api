import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/services_locator.dart';
import '../components/build_popular_header.dart';
import '../components/build_top_rated_header.dart';
import '../components/now_playing_component.dart';
import '../components/popular_component.dart';
import '../components/top_rated_component.dart';
import '../controller/movies_bloc.dart';
import '../controller/movies_event.dart';
import '../controller/movies_state.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl<MoviesBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return const Scaffold(
            body: SingleChildScrollView(
              key: Key('movieScrollView'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NowPlayingComponent(),
                  BuildPopularHeader(),
                  PopularComponent(),
                  BuildTopRatedHeader(),
                  TopRatedComponent(),
                  SizedBox(height: 50.0),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


