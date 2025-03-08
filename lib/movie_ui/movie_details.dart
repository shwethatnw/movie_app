
import '../ui.dart';

import 'movie_cast.dart';
import 'movie_seats.dart';

class MovieDetailScreen extends StatefulWidget {
  final String movieTitle;
  final String movieImage;
  final String movieSynopsis;
  final List<Map<String, String>> cast;
  final Map<String, String> about;

  const MovieDetailScreen({
    super.key,
    required this.movieTitle,
    required this.movieImage,
    required this.movieSynopsis,
    required this.cast,
    required this.about,
  });

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}
class _MovieDetailScreenState extends State<MovieDetailScreen> {
  List<int> list = <int>[1, 2, 3, 4];
  int selectedValue = 1;
  final Map<String, String> movies = {
    '1': 'Captain America: Brave New World',
    '2': 'Paddington In Peru',
    '3': 'Dog Man',
    '4': 'Murder Mystery 2',
    '5': 'Puss In Boots',
    '6': 'The Super Mario Bros Movie',
    '7': 'Creed 3',
    '8': 'Avatar: The Way of Water',
    '9': 'Mummies'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.movieImage,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: Text('Select Number of Seats'),
                              centerTitle: true,
                              backgroundColor: Colors.grey,
                              leading: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new)),
                              actions: [
                                DropdownButton<int>(
                                  value: selectedValue,
                                  icon: Icon(Icons.arrow_drop_down),
                                  elevation: 10,
                                  items: list
                                      .map<DropdownMenuItem<int>>((int value) {
                                    return DropdownMenuItem<int>(
                                      value: value,
                                      child: Text(value.toString()),
                                    );
                                  }).toList(),
                                  onChanged: (int? value) {
                                    if (value != null) {
                                      setState(
                                            () {
                                          selectedValue = value;
                                        },
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                            body: Center(
                              child: Text('Balcony    First Class\n'
                                  'Rs.180.0   Rs.150.0\n'
                                  'Available  Available'),
                            ),
                            bottomSheet: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SelectSeats(
                                            movieTitle: widget.movieTitle)));
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                WidgetStatePropertyAll<Color>(Colors.grey),
                              ),
                              child: Text(
                                'Select Seat',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                    ),
                    child: const Text(
                      'Book Ticket',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 20,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                    ),
                    child: const Text(
                      '2023-04-05',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      '7.5',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    widget.movieTitle,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Synopsis
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                'Synopsis',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                widget.movieSynopsis,
                style: const TextStyle(fontSize: 14),
              ),
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                'Cast',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.cast.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CastScreen(
                              cast: widget.cast[index],
                              castDetails: {
                                'Birthday': '1979-06-21',
                                'Deathday': '-',
                                'Gender': 'Male',
                                'Imdb Id': 'nm0695435',
                                'Place of Birth': 'Virginia, Minnesota, USA'
                              },
                            ),
                          ),
                        );
                      },
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  widget.cast[index]['image']!,
                                ),
                              )),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget.cast[index]['name']!,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                'About',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.about.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      '${entry.key}: ${entry.value}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

