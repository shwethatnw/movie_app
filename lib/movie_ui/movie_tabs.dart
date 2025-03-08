import '../ui.dart';
import 'movie_poster.dart';

class MovieDisplayScreen extends StatelessWidget {
  const MovieDisplayScreen({super.key, required this.toggleTheme});

  final VoidCallback toggleTheme;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Book Movie'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.dark_mode),
              onPressed: toggleTheme,
            ),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: 'Popular'),
              Tab(text: 'Top Rated'),
              Tab(text: 'Upcoming'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            MoviePoster(),
            Icon(Icons.star, size: 50),
            Icon(Icons.upcoming, size: 50),
          ],
        ),
      ),
    );
  }
}
