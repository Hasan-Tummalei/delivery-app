var categories = [

    {
        "title": 'Vegetables',
        "category": "vegetables",
        "image": 'assets/images/vegetables.png',
        "stock": 30,
    }
    ,
    {
        "title": 'Fruits',
        "category": "fruits",
        "image": 'assets/images/fruits.png',
        "stock": 20,
    }
    ,
    {
        "title": 'Bread',
        "category": "bread",
        "image": 'assets/images/bread.png',
        "stock": 15,
    }
    ,
    {
        "title": 'Sweets',
        "category": "sweets",
        "image": 'assets/images/sweets.png',
        "stock": 10,
    }
    ,
    {
        "title": 'Pasta',
        "category": "pasta",
        "image": 'assets/images/pasta.png',
        "stock": 25,
    },

    {
        "title": 'Drinks',
        "category": "drinks",
        "image": 'assets/images/drinks.png',
        "stock": 50,
    }
]

const items = [
    {
        "itemTitle": "Apple",
        "itemPrice": 1.50,
        "itemUnit": "kg",
        "itemImage": "assets/images/apples.jpg",
        "itemCategory": "fruits",
        "description": "Crisp and sweet apples with a delightful texture and a bright red skin. These apples are ideal for snacking, making pies, or adding to fresh salads for extra crunch. A great source of dietary fiber and vitamin C, they provide a refreshing and healthy treat for any time of the day.",
        "weightPerPiece": 200,
        "country": "USA"
    },
    {
        "itemTitle": "Banana",
        "itemPrice": 0.99,
        "itemUnit": "kg",
        "itemImage": "assets/images/bananas.jpg",
        "itemCategory": "fruits",
        "description": "Fresh bananas with a creamy texture and natural sweetness, packed with essential nutrients like potassium and vitamin B6. These bananas are perfect for making smoothies, baking banana bread, or enjoying as a quick energy-boosting snack. They are a versatile and delicious addition to any diet.",
        "weightPerPiece": 120,
        "country": "Ecuador"
    },
    {
        "itemTitle": "Orange",
        "itemPrice": 1.20,
        "itemUnit": "kg",
        "itemImage": "assets/images/oranges.jpg",
        "itemCategory": "fruits",
        "description": "Juicy and tangy oranges, packed with vitamin C and antioxidants, are perfect for making fresh juice or enjoying as a healthy snack. Their vibrant color and citrusy aroma make them a favorite in fruit bowls. These oranges are not only tasty but also help boost immunity and overall health.",
        "weightPerPiece": 250,
        "country": "Spain"
    },
    {
        "itemTitle": "Grapes",
        "itemPrice": 2.99,
        "itemUnit": "kg",
        "itemImage": "assets/images/grapes.jpg",
        "itemCategory": "fruits",
        "description": "Delicious seedless grapes with a natural sweetness and firm texture. Perfect for snacking, making wine, or adding to desserts and salads. These grapes are a great source of vitamins and antioxidants, making them a healthy and refreshing treat for any occasion.",
        "weightPerPiece": 5,
        "country": "Italy"
    },
    {
        "itemTitle": "Watermelon",
        "itemPrice": 3.50,
        "itemUnit": "piece",
        "itemImage": "assets/images/watermelon.jpg",
        "itemCategory": "fruits",
        "description": "Large and refreshing watermelon with a juicy texture and sweet flavor, ideal for quenching thirst on hot summer days. This watermelon is perfect for making fruity drinks, desserts, or enjoying as a hydrating snack. Packed with vitamins A and C, it offers both taste and nutrition.",
        "weightPerPiece": 5000,
        "country": "Mexico"
    },
    {
        "itemTitle": "Boston Lettuce",
        "itemPrice": 0.80,
        "itemUnit": "piece",
        "itemImage": "assets/images/BostonLettuc.jpeg",
        "itemCategory": "vegetables",
        "description": "Tender and crisp Boston lettuce, ideal for making fresh salads, sandwiches, or wraps. With a mild and slightly sweet flavor, this lettuce adds a refreshing crunch to your meals. Its vibrant green leaves are not only tasty but also rich in vitamins and minerals.",
        "weightPerPiece": 300,
        "country": "USA"
    },
    {
        "itemTitle": "Purple Cauliflower",
        "itemPrice": 0.70,
        "itemUnit": "kg",
        "itemImage": "assets/images/PurpleCauliFlower.jpg",
        "itemCategory": "vegetables",
        "description": "Vibrant purple cauliflower, rich in nutrients and antioxidants, perfect for roasting, grilling, or adding color to your dishes. This unique variety of cauliflower is not only visually appealing but also offers a mild and nutty flavor that enhances any recipe.",
        "weightPerPiece": 500,
        "country": "France"
    },
    {
        "itemTitle": "Savoy Cabbage",
        "itemPrice": 0.60,
        "itemUnit": "kg",
        "itemImage": "assets/images/SavoyCabbage.jpeg",
        "itemCategory": "vegetables",
        "description": "Delicate and crinkled Savoy cabbage, perfect for stir-fries, soups, or slaws. Its tender leaves and mild flavor make it a versatile choice for various cuisines. Rich in vitamins K and C, it adds both taste and nutrition to your meals.",
        "weightPerPiece": 700,
        "country": "Germany"
    },
    {
        "itemTitle": "Broccoli",
        "itemPrice": 1.50,
        "itemUnit": "kg",
        "itemImage": "assets/images/Brocolli.jpg",
        "itemCategory": "vegetables",
        "description": "Fresh green broccoli, packed with vitamins and minerals, is perfect for steaming, roasting, or adding to pasta and casseroles. Its firm texture and earthy flavor make it a favorite in many dishes. This superfood is an excellent source of fiber and antioxidants.",
        "weightPerPiece": 400,
        "country": "USA"
    },
    {
        "itemTitle": "Potato",
        "itemPrice": 0.50,
        "itemUnit": "kg",
        "itemImage": "assets/images/potatoes.jpg",
        "itemCategory": "vegetables",
        "description": "Versatile potatoes, ideal for frying, baking, or boiling. These starchy tubers are a staple in countless delicious and hearty recipes. Rich in carbohydrates and a good source of potassium, potatoes provide the perfect base for any meal.",
        "weightPerPiece": 300,
        "country": "India"
    }
]


module.exports = { categories, items };


