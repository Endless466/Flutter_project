import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FoodGo"),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list, color: Colors.black),
            onPressed: () {
              // Implement filter action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.network(
          "https://cdn.dribbble.com/users/5725660/screenshots/13977400/media/1746c4536c64970e1439b28bd4156ca8.jpg",
          fit: BoxFit.contain,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Top meal",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBestPartnerCard(
                "Subway",
                "Open • Sandwich • 1.5km • Free shipping",
              ),
              SizedBox(height: 10),
              _buildBestPartnerCard(
                "Taco Bell",
                "Open • Tacos • 2.2km • Free shipping",
              ),
              SizedBox(height: 20),
              Text(
                "Our Restaurant",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildNearbyPartnerCard(
                "assets/burger_king.png",
                "Burger King",
                "Open • 1.5km • Free shipping",
              ),
              SizedBox(height: 10),
              _buildNearbyPartnerCard(
                "assets/kfc.png",
                "KFC",
                "Open • 3.0km • Free shipping",
              ),
              SizedBox(height: 20),
              Text(
                "Our Event",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildNearbyPartnerCard(
                "assets/burger_king.png",
                "Burger King",
                "Open • 1.5km • Free shipping",
              ),
              SizedBox(height: 10),
              _buildNearbyPartnerCard(
                "assets/kfc.png",
                "KFC",
                "Open • 3.0km • Free shipping",
              ),
            ],
          ),
        ),
      ])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // set the current index
        onTap: (index) {
          // handle tab change
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(IconData iconData, String title) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.orange,
          child: Icon(iconData, color: Colors.white),
          radius: 30,
        ),
        SizedBox(height: 8.0),
        Text(title),
      ],
    );
  }

  Widget _buildBestPartnerCard(String name, String details) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        leading: Image.network(
            "https://www.allrecipes.com/thmb/8fe_5pLNz2eHcpknNhL52fdq5hE=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg",
            width: 50),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(details),
        trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
      ),
    );
  }

  Widget _buildNearbyPartnerCard(
      String imagePath, String name, String details) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        leading: Image.network(
            "https://www.allrecipes.com/thmb/8fe_5pLNz2eHcpknNhL52fdq5hE=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg",
            width: 50),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(details),
        trailing: Icon(Icons.arrow_forward_ios, size: 16.0),
      ),
    );
  }
}
