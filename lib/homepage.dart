import 'package:flutter/material.dart';
import 'addfoodpage.dart';
import 'splashpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> foodLog = [];
  int totalCalories = 0;

  void _addFood(Map<String, String> food) {
    setState(() {
      foodLog.add(food);
      totalCalories += int.parse(food['calories']!);
    });
  }

  void _navigateToAddFoodPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddFoodScreen(),
      ),
    );

    if (result != null) {
      _addFood(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
            );
          },
        ),
        title: Text('Calorie Tracker'),
        backgroundColor: Colors.green,
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Profile Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.color_lens),
              title: Text('Change Theme'),
              onTap: () {
                // Handle theme change
              },
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Modify Weight Goals'),
              onTap: () {
                // Handle weight goal modification
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Update Personal Details'),
              onTap: () {
                // Handle personal details update
              },
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text('Analytics'),
              onTap: () {
                // Handle navigation to analytics
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Recipes'),
              onTap: () {
                // Handle navigation to recipes
              },
            ),
            ListTile(
              leading: Icon(Icons.restaurant_menu),
              title: Text('Food Recommendations'),
              onTap: () {
                // Handle navigation to food recommendations
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Calories Consumed Today",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CircularProgressIndicator(
                  value: totalCalories / 2000,
                  strokeWidth: 10,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
                SizedBox(height: 20),
                Text(
                  "$totalCalories/2000 kcal",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: foodLog.length,
              itemBuilder: (context, index) {
                final food = foodLog[index];
                return ListTile(
                  leading: food['image'] != null
                      ? Image.asset(
                          food['image']!,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : Icon(Icons.fastfood, size: 50),
                  title: Text(food['name']!),
                  subtitle: Text("${food['calories']} kcal"),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddFoodPage(context),
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
