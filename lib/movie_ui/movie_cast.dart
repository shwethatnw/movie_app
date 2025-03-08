
import '../ui.dart';

class CastScreen extends StatelessWidget {
  const CastScreen({
    super.key,
    required this.cast,
    required this.castDetails,
  });

  final Map<String, String> cast;
  final Map<String, String> castDetails;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(cast['name']!),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      cast['image']!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: castDetails.entries.map((entry) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        '${entry.key}: ${entry.value}',
                        style: const TextStyle(fontSize: 14),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const TabBar(
              tabs: [
                Tab(text: "Movies"),
                Tab(text: "TV"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Movies Tab
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      itemCount: 9, // Adjust as needed
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        List<Map<String, String>> movies = [
                          {
                            'image': 'assets/image1.jpg',
                            'title': 'Captain America'
                          },
                          {
                            'image': 'assets/image2.jpg',
                            'title': 'Paddington In Peru'
                          },
                          {'image': 'assets/image3.jpg', 'title': 'Dog Man'},
                          {
                            'image': 'assets/image4.jpg',
                            'title': 'Murder Mystery 2'
                          },
                          {
                            'image': 'assets/image5.jpg',
                            'title': 'Puss In Boots'
                          },
                          {
                            'image': 'assets/image6.jpg',
                            'title': 'Super Mario Bros'
                          },
                          {'image': 'assets/image7.jpg', 'title': 'Creed 3'},
                          {
                            'image': 'assets/image8.jpg',
                            'title': 'Avatar: The Way of Water'
                          },
                          {'image': 'assets/image9.jpg', 'title': 'Mummies'},
                        ];
                        return Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                child: Image.asset(
                                  movies[index]['image']!,
                                  fit: BoxFit.cover,
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
                        );
                      },
                    ),
                  ),
                  // TV Tab with an icon
                  const Center(
                    child: Icon(Icons.tv, size: 50, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}