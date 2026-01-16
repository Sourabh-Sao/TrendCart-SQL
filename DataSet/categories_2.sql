-- =============================================================================
-- TABLE: categories (120 rows) - UP TO 2 LEVELS ONLY
-- =============================================================================
DROP TABLE IF EXISTS categories CASCADE;

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    parent_category_id INT REFERENCES categories(category_id),
    level INT NOT NULL
);

-- Level 1: Top categories (12 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Electronics', NULL, 1),
('Fashion', NULL, 1),
('Home & Kitchen', NULL, 1),
('Beauty & Personal Care', NULL, 1),
('Books & Media', NULL, 1),
('Sports & Fitness', NULL, 1),
('Grocery & Gourmet', NULL, 1),
('Baby & Kids', NULL, 1),
('Automotive', NULL, 1),
('Health & Wellness', NULL, 1),
('Toys & Games', NULL, 1),
('Office & Stationery', NULL, 1);

-- Level 2: Electronics subcategories (15 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Smartphones', 1, 2),
('Laptops & Computers', 1, 2),
('Tablets', 1, 2),
('Audio & Headphones', 1, 2),
('Cameras & Photography', 1, 2),
('Washing Machines', 1, 2),
('Refrigerators', 1, 2),
('Air Conditioners', 1, 2),
('Smartwatches', 1, 2),
('Televisions', 1, 2),
('Gaming Consoles', 1, 2),
('Speakers & Soundbars', 1, 2),
('Printers & Scanners', 1, 2);

-- Level 2: Fashion subcategories (18 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Mens Shirts', 2, 2),
('Mens Jeans', 2, 2),
('Mens T-Shirts', 2, 2),
('Mens Ethnic Wear', 2, 2),
('Womens Sarees', 2, 2),
('Womens Kurtis', 2, 2),
('Womens Tops & Tunics', 2, 2),
('Womens Jeans & Trousers', 2, 2),
('Womens Ethnic Wear', 2, 2),
('Boys Clothing', 2, 2),
('Girls Clothing', 2, 2),
('Mens Footwear', 2, 2),
('Womens Footwear', 2, 2),
('Sports Shoes', 2, 2),
('Mens Watches', 2, 2),
('Womens Watches', 2, 2),
('Sunglasses', 2, 2),
('Bags & Luggage', 2, 2);

-- Level 2: Home & Kitchen subcategories (15 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Sofas & Seating', 3, 2),
('Beds & Mattresses', 3, 2),
('Dining Tables & Chairs', 3, 2),
('Wardrobes & Storage', 3, 2),
('Home Decor', 3, 2),
('Lighting', 3, 2),
('Bedsheets & Covers', 3, 2),
('Curtains & Blinds', 3, 2),
('Cookware & Bakeware', 3, 2),
('Kitchen Appliances', 3, 2),
('Dinner Sets & Crockery', 3, 2),
('Kitchen Storage', 3, 2);

-- Level 2: Beauty & Personal Care subcategories (12 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Skincare', 4, 2),
('Haircare', 4, 2),
('Makeup', 4, 2),
('Fragrances', 4, 2),
('Bath & Body', 4, 2),
('Mens Grooming', 4, 2),
('Nail Care', 4, 2),
('Beauty Tools', 4, 2);

-- Level 2: Books & Media subcategories (8 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Fiction Books', 5, 2),
('Non-Fiction Books', 5, 2),
('Academic & Professional', 5, 2),
('Childrens Books', 5, 2),
('Comics & Manga', 5, 2),
('Magazines', 5, 2);

-- Level 2: Sports & Fitness subcategories (10 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Gym Equipment', 6, 2),
('Yoga Equipment', 6, 2),
('Sportswear', 6, 2),
('Cricket Equipment', 6, 2),
('Badminton Equipment', 6, 2),
('Football Equipment', 6, 2),
('Cycling Accessories', 6, 2),
('Swimming Accessories', 6, 2);

-- Level 2: Grocery & Gourmet subcategories (8 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Snacks & Namkeen', 7, 2),
('Beverages', 7, 2),
('Breakfast & Cereals', 7, 2),
('Cooking Essentials', 7, 2),
('Sweets & Chocolates', 7, 2),
('Organic & Health Foods', 7, 2);

-- Level 2: Baby & Kids subcategories (6 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Baby Care', 8, 2),
('Baby Food', 8, 2),
('Diapers & Wipes', 8, 2),
('Baby Toys', 8, 2),
('Kids Fashion', 8, 2);

-- Level 2: Automotive subcategories (6 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Car Accessories', 9, 2),
('Bike Accessories', 9, 2),
('Car Care & Cleaning', 9, 2),
('Helmets & Riding Gear', 9, 2);

-- Level 2: Health & Wellness subcategories (6 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Vitamins & Supplements', 10, 2),
('Health Devices', 10, 2),
('Ayurvedic Products', 10, 2),
('Sexual Wellness', 10, 2);

-- Level 2: Toys & Games subcategories (6 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Action Figures', 11, 2),
('Board Games', 11, 2),
('Educational Toys', 11, 2),
('Outdoor Play', 11, 2);

-- Level 2: Office & Stationery subcategories (6 categories)
INSERT INTO categories (name, parent_category_id, level) VALUES
('Office Supplies', 12, 2),
('School Supplies', 12, 2),
('Art & Craft', 12, 2),
('Diaries & Notebooks', 12, 2);

-- Verification query
-- SELECT level, COUNT(*) FROM categories GROUP BY level ORDER BY level;
-- Level 1: 12 categories
-- Level 2: 108 categories
-- Total: 120 categories