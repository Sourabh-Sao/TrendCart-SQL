-- =============================================================================
-- TABLE: products (100 rows) - UPDATED FOR NEW 2-LEVEL CATEGORY STRUCTURE
-- =============================================================================
DROP TABLE IF EXISTS products CASCADE;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category_id INT NOT NULL REFERENCES categories(category_id),
    price DECIMAL(12,2) NOT NULL,
    launch_date DATE,
    stock INT DEFAULT 100
);

INSERT INTO products (name, category_id, price, launch_date, stock) VALUES
-- Smartphones (category_id: 13)
('Samsung Galaxy S24 Ultra 5G', 13, 124999.00, '2024-01-15', 450),
('Apple iPhone 15 Pro Max', 13, 159900.00, '2023-09-20', 320),
('OnePlus 12R 5G', 13, 42999.00, '2024-02-10', 680),
('Xiaomi Redmi Note 13 Pro', 13, 24999.00, '2024-03-05', 920),
('Realme GT 6 Pro 5G', 13, 38999.00, '2024-04-12', 540),
('Vivo V30 Pro 5G', 13, 41999.00, '2024-02-28', 470),
('POCO X6 Pro 5G', 13, 26999.00, '2024-01-22', 780),
('Motorola Edge 50 Fusion', 13, 22999.00, '2024-05-08', 630),
('Nothing Phone 2a', 13, 23999.00, '2024-03-18', 550),
('Samsung Galaxy M35 5G', 13, 17999.00, '2024-06-01', 890),

-- Laptops & Computers (category_id: 14)
('Dell Inspiron 15 3520', 14, 52990.00, '2023-08-10', 280),
('HP Pavilion 14 AMD Ryzen 5', 14, 54990.00, '2023-10-15', 310),
('Lenovo IdeaPad Slim 3', 14, 42990.00, '2024-01-05', 420),
('ASUS VivoBook 15', 14, 47990.00, '2023-11-20', 360),
('Acer Aspire 5 Gaming', 14, 68990.00, '2024-02-14', 195),
('MSI GF63 Thin Gaming Laptop', 14, 74990.00, '2024-03-10', 145),
('Apple MacBook Air M2', 14, 114900.00, '2023-07-15', 220),

-- Tablets (category_id: 15)
('Samsung Galaxy Tab S9', 15, 45999.00, '2024-01-20', 380),
('Apple iPad 10th Gen', 15, 37900.00, '2023-10-15', 420),
('OnePlus Pad 2', 15, 35999.00, '2024-03-25', 310),

-- Audio & Headphones (category_id: 16)
('boAt Airdopes 131', 16, 1299.00, '2023-09-01', 1450),
('Noise Buds VS104', 16, 999.00, '2024-01-10', 1380),
('Sony WH-1000XM5', 16, 29990.00, '2023-08-20', 280),
('JBL Flip 6 Bluetooth Speaker', 16, 12999.00, '2023-10-05', 520),
('boAt Rockerz 450', 16, 1499.00, '2023-07-12', 980),
('OnePlus Bullets Z2', 16, 1999.00, '2024-02-05', 870),

-- Smartwatches (category_id: 21)
('Noise ColorFit Pro 5 Max', 21, 3499.00, '2024-03-15', 1120),
('Fire-Boltt Phoenix Ultra', 21, 2999.00, '2024-02-20', 1050),
('Apple Watch SE 2nd Gen', 21, 29900.00, '2023-09-10', 180),
('Samsung Galaxy Watch 6', 21, 28999.00, '2024-01-18', 240),

-- Washing Machines (category_id: 18)
('LG 7 Kg Front Load Washing Machine', 18, 32990.00, '2023-10-05', 165),
('Samsung 6.5 Kg Top Load', 18, 18990.00, '2024-02-12', 220),
('Whirlpool 7.5 Kg Semi Automatic', 18, 12990.00, '2023-11-08', 310),

-- Refrigerators (category_id: 19)
('Samsung 253L Double Door Refrigerator', 19, 24990.00, '2023-11-15', 145),
('LG 260L Frost Free', 19, 26990.00, '2024-01-20', 180),
('Whirlpool 265L Convertible', 19, 29990.00, '2024-03-05', 125),

-- Air Conditioners (category_id: 20)
('Voltas 1.5 Ton 3 Star Split AC', 20, 32990.00, '2024-02-20', 125),
('Daikin 1 Ton 5 Star Inverter AC', 20, 38990.00, '2024-03-10', 95),
('Blue Star 1.5 Ton 4 Star AC', 20, 35990.00, '2024-02-28', 110),

-- Mens Shirts (category_id: 26)
('Allen Solly Men Formal Shirt Blue', 26, 1299.00, '2023-08-15', 580),
('Peter England Casual Shirt White', 26, 899.00, '2023-09-20', 720),
('Van Heusen Slim Fit Shirt', 26, 1499.00, '2024-01-10', 640),
('Louis Philippe Premium Shirt', 26, 1899.00, '2023-11-05', 480),

-- Mens Jeans (category_id: 27)
('Levis 511 Slim Fit Jeans', 27, 2999.00, '2023-10-10', 420),
('Flying Machine Skinny Jeans', 27, 1799.00, '2023-11-05', 510),
('Wrangler Regular Fit Jeans', 27, 2299.00, '2024-02-15', 460),

-- Mens T-Shirts (category_id: 28)
('Roadster Men Graphic T-Shirt', 28, 499.00, '2024-01-15', 890),
('HRX Printed T-Shirt', 28, 699.00, '2024-02-10', 760),
('Nike Dri-FIT T-Shirt', 28, 1499.00, '2024-03-05', 420),

-- Mens Ethnic Wear (category_id: 29)
('Manyavar Silk Kurta Pajama Set', 29, 3499.00, '2023-09-01', 320),
('Fabindia Cotton Kurta', 29, 1999.00, '2023-10-12', 450),

-- Womens Sarees (category_id: 30)
('Soch Banarasi Silk Saree', 30, 4999.00, '2023-10-01', 280),
('FabIndia Cotton Saree', 30, 2499.00, '2023-11-10', 410),
('Kanchipuram Silk Saree', 30, 6999.00, '2023-09-15', 220),

-- Womens Kurtis (category_id: 31)
('BIBA Designer Kurti', 31, 1799.00, '2024-01-20', 650),
('W Casual Kurti', 31, 899.00, '2024-02-15', 780),
('Aurelia Printed Kurti', 31, 1299.00, '2024-03-10', 590),

-- Womens Jeans & Trousers (category_id: 33)
('Zara Women Skinny Jeans', 33, 2499.00, '2024-03-05', 520),
('Levis 721 High Rise Jeans', 33, 3299.00, '2024-01-18', 440),

-- Mens Footwear (category_id: 37)
('Bata Men Formal Shoes', 37, 1899.00, '2023-11-12', 560),
('Red Tape Mens Loafers', 37, 2499.00, '2024-04-15', 390),
('Woodland Leather Shoes', 37, 3499.00, '2023-10-20', 320),

-- Womens Footwear (category_id: 38)
('Liberty Womens Sandals', 38, 799.00, '2024-03-01', 640),
('Bata Womens Heels', 38, 1599.00, '2024-02-10', 480),

-- Sports Shoes (category_id: 39)
('Nike Revolution 7 Running Shoes', 39, 3995.00, '2023-08-20', 450),
('Puma Softride Running Shoes', 39, 2999.00, '2023-09-15', 520),
('Adidas Ultraboost 23', 39, 8999.00, '2024-01-10', 280),
('Campus Men Casual Sneakers', 39, 1299.00, '2024-02-20', 780),
('Sparx Running Shoes', 39, 1499.00, '2023-10-05', 820),

-- Mens Watches (category_id: 40)
('Titan Steel Watch Men', 40, 3995.00, '2023-09-10', 420),
('Fastrack Analog Watch', 40, 1495.00, '2023-10-20', 580),
('Casio G-Shock Digital Watch', 40, 8999.00, '2024-01-15', 280),

-- Womens Watches (category_id: 41)
('Sonata Analog Watch Women', 41, 995.00, '2024-01-05', 720),
('Fossil Women Hybrid Watch', 41, 12999.00, '2023-11-08', 180),

-- Sofas & Seating (category_id: 44)
('Wipro Garnet 3 Seater Sofa', 44, 24999.00, '2023-08-01', 95),
('Urban Ladder Recliner', 44, 18999.00, '2023-09-15', 125),
('Godrej Interio L-Shaped Sofa', 44, 34999.00, '2024-02-10', 75),

-- Beds & Mattresses (category_id: 45)
('Wakefit Orthopedic Mattress Queen', 45, 14999.00, '2023-10-01', 180),
('Durian King Size Bed', 45, 32999.00, '2023-11-10', 85),
('Sleepyhead Memory Foam Mattress', 45, 18999.00, '2024-01-15', 140),

-- Cookware & Bakeware (category_id: 52)
('Prestige Omega Deluxe Granite Cookware', 52, 3499.00, '2024-01-15', 420),
('Hawkins Stainless Steel Pressure Cooker', 52, 2199.00, '2023-12-05', 580),
('Wonderchef Non-Stick Cookware Set', 52, 4999.00, '2024-03-01', 320),

-- Kitchen Appliances (category_id: 53)
('Philips Air Fryer HD9252', 53, 8995.00, '2024-02-10', 310),
('Bajaj Majesty RX11 Mixer Grinder', 53, 3499.00, '2023-11-20', 460),
('Pigeon Electric Kettle', 53, 899.00, '2024-01-08', 680),

-- Skincare (category_id: 56)
('Nivea Soft Light Moisturizer', 56, 299.00, '2023-10-15', 1050),
('Himalaya Purifying Neem Face Wash', 56, 175.00, '2023-11-01', 1280),
('Lakme Sun Expert SPF 50 Sunscreen', 56, 399.00, '2024-02-12', 920),

-- Haircare (category_id: 57)
('Pantene Hair Fall Control Shampoo', 57, 349.00, '2023-12-10', 920),
('Parachute Advansed Hair Oil', 57, 249.00, '2024-01-20', 1100),
('Dove Intense Repair Conditioner', 57, 399.00, '2024-03-05', 840),

-- Makeup (category_id: 58)
('Lakme 9to5 Primer Matte Lipstick', 58, 499.00, '2024-01-10', 820),
('Maybelline Fit Me Foundation', 58, 699.00, '2024-02-05', 680),
('Sugar Kohl Kajal', 58, 299.00, '2024-03-15', 750),

-- Fragrances (category_id: 59)
('Fogg Black Deodorant', 59, 199.00, '2023-09-15', 980),
('Engage M1 Perfume', 59, 299.00, '2023-10-20', 860),
('Wild Stone Body Perfume', 59, 249.00, '2024-01-12', 920),

-- Fiction Books (category_id: 62)
('The Palace of Illusions by Chitra Banerjee', 62, 350.00, '2023-08-01', 420),
('The White Tiger by Aravind Adiga', 62, 299.00, '2023-09-10', 380),

-- Non-Fiction Books (category_id: 63)
('Atomic Habits by James Clear', 63, 599.00, '2023-10-15', 680),
('Elon Musk by Walter Isaacson', 63, 799.00, '2023-11-05', 520),

-- Academic & Professional (category_id: 64)
('HC Verma Concepts of Physics', 64, 899.00, '2023-08-20', 450),
('Grays Anatomy 42nd Edition', 64, 3999.00, '2023-09-25', 180),

-- Gym Equipment (category_id: 68)
('Boldfit Gym Dumbbells 5kg Set', 68, 999.00, '2024-01-10', 680),
('Lifelong Treadmill for Home', 68, 18999.00, '2024-02-15', 95),

-- Sportswear (category_id: 70)
('Boldfit Gym Trackpants', 70, 599.00, '2024-01-20', 720),
('Nike Dri-FIT Sports T-Shirt', 70, 1299.00, '2024-03-05', 540),

-- Yoga Equipment (category_id: 69)
('Strauss Yoga Mat Anti Skid', 69, 499.00, '2023-10-10', 640),
('Boldfit Yoga Blocks Set', 69, 399.00, '2024-02-08', 580),

-- Snacks & Namkeen (category_id: 76)
('Haldiram Aloo Bhujia 1kg', 76, 199.00, '2024-01-05', 1350),
('Britannia Good Day Cookies', 76, 50.00, '2023-12-15', 1480),
('Lays Classic Salted Chips', 76, 20.00, '2024-02-20', 1620),

-- Beverages (category_id: 77)
('Nescafe Classic Coffee', 77, 399.00, '2024-02-01', 980),
('Red Label Tea 1kg', 77, 449.00, '2023-11-20', 1120),
('Tropicana Orange Juice 1L', 77, 150.00, '2024-03-10', 1250);

-- Verification
-- SELECT COUNT(*) FROM products; -- Should return 100