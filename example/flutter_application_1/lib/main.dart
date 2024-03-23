import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scholarship App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Add navigation logic here to navigate to the home page
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Scholarships'),
              onTap: () {
                // Add navigation logic here to navigate to the scholarships page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllScholarshipsPage(),
                  ),
                );
              },
            ),
            // Add more list tiles for additional navigation options
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for scholarships...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            // Button to view all scholarships
            ElevatedButton(
              onPressed: () {
                // Add navigation logic here to navigate to the page showing all scholarships
                // For example:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => AllScholarshipsPage()));
              },
              child: const Text('View All Scholarships'),
            ),
          ],
        ),
      ),
    );
  }
}

class AllScholarshipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with the actual logic to fetch and display all scholarships
    // For simplicity, we'll display a simple text here.
    return Scaffold(
      appBar: AppBar(
        title: Text('All Scholarships'),
      ),
      body: Center(
        child: Text('Display All Scholarships Here'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
