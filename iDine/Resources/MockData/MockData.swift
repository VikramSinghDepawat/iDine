//
//  MockData.swift
//  iDine
//
//  Created by Vikram Singh Depawat on 30/06/25.
//


struct MockData {
    let sampleMenu: [MenuItem] = [
        
        // Starters
        MenuItem(id: "s1", name: "Bruschetta", description: "Grilled bread topped with fresh tomatoes and basil.", price: 6.99, imageURL: "https://example.com/images/bruschetta.jpg", category: .starters),
        MenuItem(id: "s2", name: "Garlic Bread", description: "Toasted baguette with garlic butter.", price: 4.99, imageURL: "https://example.com/images/garlic_bread.jpg", category: .starters),
        MenuItem(id: "s3", name: "Stuffed Mushrooms", description: "Mushrooms filled with cheese and herbs.", price: 7.50, imageURL: "https://example.com/images/stuffed_mushrooms.jpg", category: .starters),
        MenuItem(id: "s4", name: "Caprese Salad", description: "Fresh mozzarella, tomatoes, and basil.", price: 8.00, imageURL: "https://example.com/images/caprese.jpg", category: .starters),
        MenuItem(id: "s5", name: "Fried Calamari", description: "Lightly breaded and fried squid rings.", price: 9.50, imageURL: "https://example.com/images/calamari.jpg", category: .starters),
        MenuItem(id: "s6", name: "Chicken Wings", description: "Spicy and crispy chicken wings.", price: 7.99, imageURL: "https://example.com/images/wings.jpg", category: .starters),
        MenuItem(id: "s7", name: "Hummus Plate", description: "Served with warm pita bread.", price: 6.00, imageURL: "https://example.com/images/hummus.jpg", category: .starters),
        MenuItem(id: "s8", name: "Spring Rolls", description: "Crispy veggie spring rolls.", price: 5.75, imageURL: "https://example.com/images/spring_rolls.jpg", category: .starters),
        MenuItem(id: "s9", name: "Deviled Eggs", description: "Classic deviled eggs with paprika.", price: 4.50, imageURL: "https://example.com/images/deviled_eggs.jpg", category: .starters),
        
        // Main Courses
        MenuItem(id: "m1", name: "Margherita Pizza", description: "Tomato, mozzarella, and basil.", price: 11.99, imageURL: "https://example.com/images/margherita.jpg", category: .mains),
        MenuItem(id: "m2", name: "Spaghetti Bolognese", description: "Pasta with rich meat sauce.", price: 12.99, imageURL: "https://example.com/images/spaghetti.jpg", category: .mains),
        MenuItem(id: "m3", name: "Grilled Salmon", description: "Served with lemon butter sauce.", price: 17.99, imageURL: "https://example.com/images/salmon.jpg", category: .mains),
        MenuItem(id: "m4", name: "Chicken Alfredo", description: "Creamy pasta with grilled chicken.", price: 13.99, imageURL: "https://example.com/images/alfredo.jpg", category: .mains),
        MenuItem(id: "m5", name: "Beef Burger", description: "Angus beef with cheddar and fries.", price: 10.99, imageURL: "https://example.com/images/burger.jpg", category: .mains),
        MenuItem(id: "m6", name: "Vegetable Stir Fry", description: "Mixed veggies in soy ginger sauce.", price: 11.49, imageURL: "https://example.com/images/stirfry.jpg", category: .mains),
        MenuItem(id: "m7", name: "Lamb Chops", description: "Grilled lamb with rosemary and garlic.", price: 19.99, imageURL: "https://example.com/images/lamb.jpg", category: .mains),
        MenuItem(id: "m8", name: "BBQ Ribs", description: "Tender ribs with smoky sauce.", price: 16.50, imageURL: "https://example.com/images/ribs.jpg", category: .mains),
        MenuItem(id: "m9", name: "Shrimp Tacos", description: "Served with avocado and salsa.", price: 13.50, imageURL: "https://example.com/images/shrimp_tacos.jpg", category: .mains),
        
        // Desserts
        MenuItem(id: "d1", name: "Tiramisu", description: "Coffee-soaked layers with mascarpone.", price: 6.50, imageURL: "https://example.com/images/tiramisu.jpg", category: .desserts),
        MenuItem(id: "d2", name: "Gelato", description: "Choice of vanilla, chocolate, or pistachio.", price: 5.00, imageURL: "https://example.com/images/gelato.jpg", category: .desserts),
        MenuItem(id: "d3", name: "Chocolate Lava Cake", description: "Warm chocolate cake with molten center.", price: 7.00, imageURL: "https://example.com/images/lava_cake.jpg", category: .desserts),
        MenuItem(id: "d4", name: "Cheesecake", description: "Classic New York-style cheesecake.", price: 6.75, imageURL: "https://example.com/images/cheesecake.jpg", category: .desserts),
        MenuItem(id: "d5", name: "Apple Pie", description: "Served warm with ice cream.", price: 5.99, imageURL: "https://example.com/images/apple_pie.jpg", category: .desserts),
        MenuItem(id: "d6", name: "Fruit Tart", description: "Assorted seasonal fruit with custard.", price: 6.25, imageURL: "https://example.com/images/fruit_tart.jpg", category: .desserts),
        MenuItem(id: "d7", name: "Panna Cotta", description: "Vanilla cream with berry coulis.", price: 5.75, imageURL: "https://example.com/images/panna_cotta.jpg", category: .desserts),
        MenuItem(id: "d8", name: "Mousse au Chocolat", description: "Light and airy chocolate mousse.", price: 6.00, imageURL: "https://example.com/images/mousse.jpg", category: .desserts),
        MenuItem(id: "d9", name: "Crème Brûlée", description: "Caramelized sugar topping on vanilla custard.", price: 6.95, imageURL: "https://example.com/images/creme_brulee.jpg", category: .desserts),
        
        // Drinks
        MenuItem(id: "dr1", name: "Coca-Cola", description: "Classic carbonated soft drink.", price: 2.99, imageURL: "https://example.com/images/coke.jpg", category: .drinks),
        MenuItem(id: "dr2", name: "Espresso", description: "Strong Italian-style coffee.", price: 3.50, imageURL: "https://example.com/images/espresso.jpg", category: .drinks),
        MenuItem(id: "dr3", name: "Lemonade", description: "Freshly squeezed with mint.", price: 3.25, imageURL: "https://example.com/images/lemonade.jpg", category: .drinks),
        MenuItem(id: "dr4", name: "Iced Tea", description: "Black tea served chilled.", price: 2.75, imageURL: "https://example.com/images/iced_tea.jpg", category: .drinks),
        MenuItem(id: "dr5", name: "Orange Juice", description: "Freshly squeezed oranges.", price: 3.99, imageURL: "https://example.com/images/orange_juice.jpg", category: .drinks),
        MenuItem(id: "dr6", name: "Sparkling Water", description: "Lightly carbonated water.", price: 2.50, imageURL: "https://example.com/images/sparkling_water.jpg", category: .drinks),
        MenuItem(id: "dr7", name: "Chai Latte", description: "Spiced tea with steamed milk.", price: 4.00, imageURL: "https://example.com/images/chai_latte.jpg", category: .drinks),
        MenuItem(id: "dr8", name: "Matcha Latte", description: "Green tea-based creamy drink.", price: 4.50, imageURL: "https://example.com/images/matcha.jpg", category: .drinks),
        MenuItem(id: "dr9", name: "Hot Chocolate", description: "Rich cocoa with whipped cream.", price: 3.75, imageURL: "https://example.com/images/hot_chocolate.jpg", category: .drinks),
    ]
}
