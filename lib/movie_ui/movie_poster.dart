import '../ui.dart';
import 'movie_details.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({super.key});

  final List<Map<String, String>> movies = const [
    {
      'image': 'assets/image1.jpg',
      'title': 'Captain America: Brave New World',
      'synopsis':
      'A new adventure begins for Captain America as he faces his greatest challenge yet.'
    },
    {
      'image': 'assets/image2.jpg',
      'title': 'Paddington In Peru',
      'synopsis':
      'Paddington embarks on an adventurous journey to Peru in search of his lost aunt.'
    },
    {
      'image': 'assets/image3.jpg',
      'title': 'Dog Man',
      'synopsis':
      'A half-dog, half-man hero fights crime with his extraordinary abilities.'
    },
    {
      'image': 'assets/image4.jpg',
      'title': 'Murder Mystery 2',
      'synopsis':
      'A couple finds themselves in another deadly mystery filled with twists and turns.'
    },
    {
      'image': 'assets/image5.jpg',
      'title': 'Puss In Boots',
      'synopsis':
      'Puss in Boots embarks on an epic adventure to reclaim his lost honor.'
    },
    {
      'image': 'assets/image6.jpg',
      'title': 'The Super Mario Bros Movie',
      'synopsis':
      'Mario and Luigi enter a magical world to save Princess Peach from Bowser.'
    },
    {
      'image': 'assets/image7.jpg',
      'title': 'Creed 3',
      'synopsis':
      'Adonis Creed faces his past and his toughest opponent yet in this intense boxing drama.'
    },
    {
      'image': 'assets/image8.jpg',
      'title': 'Avatar: The Way of Water',
      'synopsis':
      'The Na’vi must defend Pandora against a new human threat, exploring the depths of the oceans.'
    },
    {
      'image': 'assets/image9.jpg',
      'title': 'Mummies',
      'synopsis':
      'An animated adventure following ancient mummies on a thrilling quest in modern-day London.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(
                    movieTitle: movies[index]['title']!,
                    movieImage: movies[index]['image']!,
                    movieSynopsis: movies[index]['synopsis']!,
                    cast: [
                      {
                        'name': 'Chris Pratt',
                        'image': 'assets/cast1.jpeg',
                      },
                      {
                        'name': 'Anya Taylor Joy',
                        'image': 'assets/cast2.jpeg',
                      },
                      {
                        'name': 'Charlie Day',
                        'image': 'assets/cast3.jpeg',
                      },
                      {
                        'name': 'Jack Black',
                        'image': 'assets/cast4.jpeg',
                      },
                    ],
                    about: {
                      'Original title': '  The Super Mario Bros. movie',
                      'Status': '            Released',
                      'Runtime': '        92',
                      'Premiere': '       2003-04-05',
                      'Budget': '          1000000000',
                      'Revenue': '        377628865',
                      'Imdb': '              tt6718170',
                      'Vote Rating': '  7.543'
                    },
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    child: Image.asset(
                      movies[index]['image']!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey,
                          child: const Icon(Icons.image,
                              size: 50, color: Colors.white),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  movies[index]['title']!,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
