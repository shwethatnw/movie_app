
import '../ui.dart';

class SelectSeats extends StatefulWidget {
  const SelectSeats({super.key, required String movieTitle});

  @override
  _SelectSeatsState createState() => _SelectSeatsState();
}

class _SelectSeatsState extends State<SelectSeats> {
  final List<String> seatLabels = [
    'A1', 'A2', 'A3', 'A4', 'A5', 'A6',
    'B1', 'B2', 'B3', 'B4', 'B5', 'B6',
    'C1', 'C2', 'C3', 'C4', 'C5', 'C6',
    'D1', 'D2', 'D3', 'D4', 'D5', 'D6',
    'E1', 'E2', 'E3', 'E4', 'E5', 'E6',
    'F1', 'F2', 'F3', 'F4', 'F5', 'F6',
  ];

  Map<String, bool> selectedSeats = {};
  int ticketPrice = 150;

  @override
  Widget build(BuildContext context) {
    int selectedCount = selectedSeats.values.where((isSelected) => isSelected).length;
    int totalCost = selectedCount * ticketPrice;

    return Scaffold(
      appBar: AppBar(
        title: const Text("The Super Mario Bros. Movie"),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Screen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Seat Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6, // 6 seats per row
                  crossAxisSpacing: 5, // Reduce spacing col
                  mainAxisSpacing: 5, // Reduce spacing row
                  childAspectRatio: 1.4, // Increase ratio to make boxes smaller
                ),
                itemCount: seatLabels.length,
                itemBuilder: (context, index) {
                  String seat = seatLabels[index];
                  bool isSelected = selectedSeats[seat] ?? false;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSeats[seat] = !isSelected;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5), // Reduce padding
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.green : Colors.white,
                        border: Border.all(color: Colors.green),

                      ),
                      child: Text(
                        seat,
                        style: TextStyle(
                          fontSize: 12, // Smaller font size
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 10),

          const Text("A1-E6 : First Class    F1-F6 : Balcony",
              style: TextStyle(fontSize: 14, color: Colors.grey)),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: selectedCount > 0 ? () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Seats booked successfully!")),
              );
            } : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              padding: const EdgeInsets.symmetric(horizontal: 500, vertical: 12),
            ),
            child: const Text("Book", style: TextStyle(fontSize: 18, color: Colors.white)),
          ),

          const SizedBox(height: 10),

          // Total Cost
          Text(
            "Total Cost= Rs.$totalCost",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}