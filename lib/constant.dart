// Logo

import 'package:flutter/material.dart';

const String logoImage =
    "https://logoeps.com/wp-content/uploads/2012/04/calvin-klein-logo-vector-01.png";

// Splash

const String splashImage =
    "https://media.theeverygirl.com/wp-content/uploads/2022/08/pinterest-fall-fashion-the-everygirl-8.png";

// LoginPage

const String logInImage =
    "https://img.freepik.com/premium-photo/cool-fashionable-stylish-girl-fashion-black-outfit-with-leather-jacket-dress-poses-studio-dark-background_338491-24303.jpg";

// Fashion Quotes

const List<String> fashionQuotes = [
  "Fashion is the armor to survive the reality of everyday life. – Bill Cunningham",
  "Style is a way to say who you are without having to speak. – Rachel Zoe",
  "In order to be irreplaceable one must always be different. – Coco Chanel",
  "Clothes mean nothing until someone lives in them. – Marc Jacobs",
];

//App Bar

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.network(
        logoImage, // The logo image
        width: 50,
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.shopping_bag,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }
}

// Fashion Home Images

const List<String> homeImages = [
  "https://styledbymckenz.com/wp-content/uploads/2023/08/OUTFITS-OF-THE-WEEK-5-1.jpg",
  "https://fashionhistory.fitnyc.edu/wp-content/uploads/2017/09/2000-2009-1280x640.jpg",
  "https://staticg.sportskeeda.com/editor/2023/12/20ece-17023018103649-1920.jpg?w=640",
  "https://styledbymckenz.com/wp-content/uploads/2023/08/OUTFITS-OF-THE-WEEK-5-1.jpg",
];

//Categories

final List<String> clothingCategories = [
  "Tops",
  "Bottoms",
  "Dresses",
  "Outerwear",
  "Activewear",
  "Intimates",
  "Footwear",
  "Accessories",
  "Swimwear",
  "Traditional/Seasonal Wear"
];

// shop items
final List<Map<String, String>> items = [
  {
    'name': 'Pink Glamour',
    'price': '\$189',
    'imageUrl':
        'https://i.pinimg.com/736x/ca/05/83/ca05832159cf08fc869ba3e38443d6cc.jpg',
    'description':
        'Stunning pink maxi dress with intricate golden embellishments perfect for special occasions.',
  },
  {
    'name': 'Azure Dream',
    'price': '\$275',
    'imageUrl':
        'https://i.pinimg.com/736x/50/76/09/50760941c7334e3a698b998e66bbff52.jpg',
    'description':
        'Modern white abaya with delicate blue patterns, combining comfort and elegance.',
  },
  {
    'name': 'Desert Rose',
    'price': '\$159',
    'imageUrl':
        'https://fashionhistory.fitnyc.edu/wp-content/uploads/2017/09/2000-2009-1280x640.jpg',
    'description':
        'Chic beige ensemble with handcrafted embroidery, perfect for day-to-night wear.',
  },
  {
    'name': 'Pure Elegance',
    'price': '\$199',
    'imageUrl':
        'https://i.pinimg.com/736x/b2/17/d1/b217d11f314eb5c50f6ce224a075521f.jpg',
    'description':
        'Sleek white dress with clean lines and modern sophistication.',
  },
  {
    'name': 'Boho Charm',
    'price': '\$145',
    'imageUrl':
        'https://i.pinimg.com/736x/27/8f/f1/278ff1d4d49cb7e22a67f5cccbeaa810.jpg',
    'description':
        'Bohemian-inspired dress with artistic details and flowing silhouette.',
  },
  {
    'name': 'Urban Grace',
    'price': '\$225',
    'imageUrl':
        'https://i.pinimg.com/736x/b1/ae/da/b1aeda2952281768099373e314dc6302.jpg',
    'description':
        'Contemporary dress design perfect for the modern city woman.',
  },
  {
    'name': 'Royal Touch',
    'price': '\$299',
    'imageUrl':
        'https://i.pinimg.com/736x/ca/05/83/ca05832159cf08fc869ba3e38443d6cc.jpg',
    'description':
        'Luxurious dress with regal embroidery and premium fabric quality.',
  },
  {
    'name': 'Classic Noir',
    'price': '\$179',
    'imageUrl':
        'https://fashionhistory.fitnyc.edu/wp-content/uploads/2017/09/2000-2009-1280x640.jpg',
    'description':
        'Timeless black dress with a modern twist, suitable for any occasion.',
  },
];
