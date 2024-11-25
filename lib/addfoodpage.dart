import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddFoodScreen extends StatefulWidget {
  @override
  _AddFoodScreenState createState() => _AddFoodScreenState();
}

class _AddFoodScreenState extends State<AddFoodScreen> {
  final Map<String, List<Map<String, String>>> foodCategories = {
    // Your food categories remain the same
    "Breakfast": [
      {"name": "Idly", "calories": "38", "image": "assets/images/idly.jpeg"},
      {
        "name": "Rava Idly",
        "calories": "100",
        "image": "assets/images/rava_idly.jpeg"
      },
      {
        "name": "Medium Dosa",
        "calories": "168",
        "image": "assets/images/medium_dosa.jpeg"
      },
      {
        "name": "Small Dosa",
        "calories": "75",
        "image": "assets/images/small_dosa.jpeg"
      },
      {
        "name": "Masala Dosa",
        "calories": "250",
        "image": "assets/images/masala_dosa.jpeg"
      },
      {
        "name": "Neer Dosa",
        "calories": "100",
        "image": "assets/images/neer_dosa.jpeg"
      },
      {
        "name": "Egg Dosa",
        "calories": "186",
        "image": "assets/images/egg_dosa.jpeg"
      },
      {
        "name": "Ragi Dosa",
        "calories": "137",
        "image": "assets/images/ragi_dosa.jpeg"
      },
      {"name": "Poori", "calories": "141", "image": "assets/images/poori.jpeg"},
      {
        "name": "Parotta",
        "calories": "258",
        "image": "assets/images/parotta.jpeg"
      },
      {
        "name": "Chapati",
        "calories": "120",
        "image": "assets/images/chapati.jpeg"
      },
      {
        "name": "Uttapam",
        "calories": "250",
        "image": "assets/images/uttapam.jpeg"
      },
      {
        "name": "Semiya Upma",
        "calories": "222",
        "image": "assets/images/semiya_upma.jpeg"
      },
      {
        "name": "Rava Upma",
        "calories": "224",
        "image": "assets/images/rava_upma.jpeg"
      },
      {
        "name": "Maggie",
        "calories": "300",
        "image": "assets/images/maggie.jpeg"
      },
      {"name": "Puttu", "calories": "305", "image": "assets/images/puttu.jpeg"},
      {
        "name": "Pongal",
        "calories": "160",
        "image": "assets/images/pongal.jpeg"
      },
      {
        "name": "Boiled Egg",
        "calories": "78",
        "image": "assets/images/boiled_egg.jpeg"
      },
      {
        "name": "Plain Omelette",
        "calories": "80",
        "image": "assets/images/plain_omelette.jpeg"
      },
      {
        "name": "Vegetable Omelette",
        "calories": "330",
        "image": "assets/images/vegetable_omelette.jpeg"
      },
      {
        "name": "Half Boil",
        "calories": "68",
        "image": "assets/images/half_boil.jpeg"
      },
    ],
    "Rice Items": [
      {
        "name": "Biriyani",
        "calories": "484",
        "image": "assets/images/biriyani.jpeg"
      },
      {
        "name": "Sambar Sadham",
        "calories": "216",
        "image": "assets/images/sambar_sadham.jpeg"
      },
      {
        "name": "Thayir Sadham",
        "calories": "50",
        "image": "assets/images/thayir_sadham.jpeg"
      },
      {
        "name": "Bisi Bele Bath",
        "calories": "160",
        "image": "assets/images/bisi_bele_bath.jpeg"
      },
      {"name": "Rasam", "calories": "50", "image": "assets/images/rasam.jpeg"},
      {
        "name": "Pulisadham",
        "calories": "226",
        "image": "assets/images/pulisadham.jpeg"
      },
      {
        "name": "Lemon Sadham",
        "calories": "221",
        "image": "assets/images/lemon_sadham.jpeg"
      },
      {
        "name": "Morkuzhambu",
        "calories": "153",
        "image": "assets/images/morkuzhambu.jpeg"
      },
      {
        "name": "Egg Rice",
        "calories": "240",
        "image": "assets/images/egg_rice.jpeg"
      },
      {
        "name": "Chicken Rice",
        "calories": "266",
        "image": "assets/images/chicken_rice.jpeg"
      },
      {
        "name": "Chicken Noodles",
        "calories": "290",
        "image": "assets/images/chicken_noodles.jpeg"
      },
      {
        "name": "Veg Noodles",
        "calories": "210",
        "image": "assets/images/veg_noodles.jpeg"
      },
      {
        "name": "Egg Noodles",
        "calories": "221",
        "image": "assets/images/egg_noodles.jpeg"
      },
      {
        "name": "Paneer Rice",
        "calories": "210",
        "image": "assets/images/paneer_rice.jpeg"
      },
      {
        "name": "Kaarakuzhambu",
        "calories": "133",
        "image": "assets/images/kaarakuzhambu.jpeg"
      },
      {
        "name": "Aviyal",
        "calories": "662",
        "image": "assets/images/aviyal.jpeg"
      },
    ],
    "Liquids": [
      {"name": "Milk", "calories": "65", "image": "assets/images/milk.jpeg"},
      {"name": "Tea", "calories": "40", "image": "assets/images/tea.jpeg"},
      {
        "name": "Coffee",
        "calories": "80",
        "image": "assets/images/coffee.jpeg"
      },
      {"name": "Boost", "calories": "165", "image": "assets/images/boost.jpeg"},
      {
        "name": "Horlicks",
        "calories": "140",
        "image": "assets/images/horlicks.jpeg"
      },
      {"name": "Soda", "calories": "10", "image": "assets/images/soda.jpeg"},
      {
        "name": "Black Coffee",
        "calories": "10",
        "image": "assets/images/black_coffee.jpeg"
      },
      {
        "name": "Milk Shake",
        "calories": "200",
        "image": "assets/images/milk_shake.jpeg"
      },
    ],
    "Snacks": [
      {"name": "Bread", "calories": "67", "image": "assets/images/bread.jpeg"},
      {
        "name": "Bread with Butter",
        "calories": "281",
        "image": "assets/images/bread_with_butter.jpeg"
      },
      {
        "name": "Maggie",
        "calories": "300",
        "image": "assets/images/maggie.jpeg"
      },
      {"name": "Vada", "calories": "97", "image": "assets/images/vada.jpeg"},
      {"name": "Bonda", "calories": "68", "image": "assets/images/bonda.jpeg"},
      {"name": "Bajji", "calories": "142", "image": "assets/images/bajji.jpeg"},
      {
        "name": "Samosa",
        "calories": "250",
        "image": "assets/images/samosa.jpeg"
      },
      {
        "name": "Payasam",
        "calories": "408",
        "image": "assets/images/payasam.jpeg"
      },
      {
        "name": "Murukku",
        "calories": "170",
        "image": "assets/images/murukku.jpeg"
      },
      {
        "name": "Banana Chips",
        "calories": "200",
        "image": "assets/images/banana_chips.jpeg"
      },
      {
        "name": "Paniyaram",
        "calories": "200",
        "image": "assets/images/paniyaram.jpeg"
      },
      {
        "name": "Jalebi",
        "calories": "250",
        "image": "assets/images/jalebi.jpeg"
      },
      {
        "name": "Gulab Jamun",
        "calories": "175",
        "image": "assets/images/gulab_jamun.jpeg"
      },
      {
        "name": "Pani Puri",
        "calories": "125",
        "image": "assets/images/pani_puri.jpeg"
      },
      {
        "name": "Cutlet",
        "calories": "75",
        "image": "assets/images/cutlet.jpeg"
      },
    ],

  };

  String searchQuery = "";
  File? pickedImage;

  // Image Picker function
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        pickedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text('Add Food', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF4CAF50),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search Food",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value.toLowerCase();
                });
              },
            ),
          ),

          // Pick Image Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton.icon(
              onPressed: pickImage,
              icon: Icon(Icons.image),
              label: Text("Pick an Image"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4CAF50),
                foregroundColor: Colors.white,
              ),
            ),
          ),

          // Display Picked Image
          if (pickedImage != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(
                  pickedImage!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          // Food Categories
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: foodCategories.entries.map((entry) {
                  final category = entry.key;
                  final items = entry.value
                      .where((item) =>
                          item['name']!.toLowerCase().contains(searchQuery))
                      .toList();

                  if (items.isEmpty) return SizedBox(); // Skip if no match

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            category,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              final item = items[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    // Pass the selected food item back to the previous screen
                                    Navigator.pop(context, item);
                                  },
                                  child: Card(
                                    elevation: 4.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(8.0),
                                          ),
                                          child: Image.asset(
                                            item['image']!,
                                            width: 120,
                                            height: 120,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          item['name']!,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        Text(
                                          '${item['calories']} kcal',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
