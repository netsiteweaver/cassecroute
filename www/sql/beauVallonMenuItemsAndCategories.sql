DELETE FROM products WHERE 1;
ALTER TABLE products AUTO_INCREMENT = 1;

DELETE FROM product_categories WHERE 1;
ALTER TABLE product_categories AUTO_INCREMENT = 1;

TRUNCATE addons_categories ;

DELETE FROM order_details WHERE 1;
ALTER TABLE order_details AUTO_INCREMENT = 1;

DELETE FROM orders WHERE 1;
ALTER TABLE orders AUTO_INCREMENT = 1;



UPDATE params SET value = '1' WHERE title = 'sales_last_number';

-- SQL INSERT statements for Coin Casse Croute Beverage Menu (ACTUAL MENU)
-- Product Categories and Products tables based on the actual PDF content

INSERT INTO product_categories (uuid, name, created_by, created_date, status, display_order) VALUES (UUID(), 'Sparkling Wines', 1, NOW(), 1, 1);
INSERT INTO product_categories (uuid, name, created_by, created_date, status, display_order) VALUES (UUID(), 'Rosé Wines', 1, NOW(), 1, 2);
INSERT INTO product_categories (uuid, name, created_by, created_date, status, display_order) VALUES (UUID(), 'White Wines', 1, NOW(), 1, 3);
INSERT INTO product_categories (uuid, name, created_by, created_date, status, display_order) VALUES (UUID(), 'Red Wines', 1, NOW(), 1, 4);

INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'SW001', 'François Montand Blanc de Blancs Brut', '100% Chardonnay, fresh and delicate with floral aromas. Pairs with raw fish and light starters.', 
    '0', '1500', '', 1, NOW(), 1, 1, 1, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'SW002', 'François Montand Brut Rosé', 'Lively and fruity with red berry notes. Enjoy with charcuterie, grilled prawns, or light salads.', 
    '0', '1500', '', 1, NOW(), 1, 1, 2, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'SW003', 'Prosecco Extra Brut, Signore Guiseppe', 'Dry and refreshing, with pear and citrus flavors. A classic match for fried snacks, or light seafood starters.', 
    '0', '1550', '', 1, NOW(), 1, 1, 3, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RW001', 'M Minuty Rosé (Côtes De Provence, France)', 'Elegant with red berry and peach notes. Pairs beautifully with Mediterranean cuisine and seafood.', 
    '0', '2100', '', 1, NOW(), 1, 2, 4, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RW002', 'Brise Marine Rosé, IGP Méditerranée (France)', 'Fruity and refreshing. Perfect with grilled vegetables and light seafood dishes.', 
    '0', '1150', '', 1, NOW(), 1, 2, 5, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RW003', 'Pays D’Oc, Fontes Symphonie Rosé (France)', 'Light, crisp and aromatic. Excellent with salads, grilled chicken, or aperitifs.', 
    '0', '1150', '', 1, NOW(), 1, 2, 6, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RW004', 'Stellenbosch Vin de Joie Rosé, La Motte (South Africa)', 'Vibrant with watermelon and floral aromas. Pairs with sushi, grilled prawns, or Mediterranean dishes.', 
    '0', '1550', '', 1, NOW(), 1, 2, 7, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW001', 'Coteaux Bourguignons, Albert Bichot (France)', 'Lively and fresh with white peach and citrus. Ideal with grilled fish or goat cheese.', 
    '0', '1750', '', 1, NOW(), 1, 3, 8, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW002', 'Chablis, Albert Bichot (France)', 'Mineral-driven and crisp, with lemon zest and green apple. Perfect with oysters, scallops, or sushi.', 
    '0', '2550', '', 1, NOW(), 1, 3, 9, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW003', 'Pouilly Fumé, Cedrick Bardin (France)', 'Sauvignon Blanc with smoky minerality and tropical notes. Great with shellfish, goat cheese, or asparagus dishes.', 
    '0', '2300', '', 1, NOW(), 1, 3, 10, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW004', 'Pays D’Oc, IGP Fontes Symphonie Blanc (France)', 'Light and fruity with citrus freshness. Perfect with salads, tapas, or grilled fish.', 
    '0', '1150', '', 1, NOW(), 1, 3, 11, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW005', 'Franschhoek, Sauvignon Blanc, La Motte (South Africa)', 'Elegant and expressive, with aromas of green apple, lime, and fresh herbs. Pair with seafoods, fresh salads, or grilled chicken.', 
    '0', '1550', '', 1, NOW(), 1, 3, 12, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW006', 'Franschhoek Chardonnay, Mountain View (South Africa)', 'Creamy texture with tropical fruit and vanilla hints. Pairs with roasted chicken or creamy pasta.', 
    '0', '1200', '', 1, NOW(), 1, 3, 13, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW007', 'Stellenbosch Chenin Blanc, Stellenbosch Vineyard (South Africa)', 'Vibrant and fruity with melon and pear notes. Ideal with spicy Asian dishes or grilled seafood.', 
    '0', '1600', '', 1, NOW(), 1, 3, 14, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'WW008', 'Hans Baer Riesling (Germany)', 'Off-dry with peach, lime, and a refreshing finish. Great with spicy curries or Asian cuisine.', 
    '0', '1450', '', 1, NOW(), 1, 3, 15, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG001', 'Pinot Noir Origine, Albert Bichot (France)', 'Elegant with cherry, raspberry, and subtle spice. Perfect with poultry, mushrooms, or grilled fish.', 
    '0', '2350', '', 1, NOW(), 1, 4, 16, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG002', 'Bordeaux, Roc La Gravière (France)', 'Smooth with dark fruit and soft tannins. Pairs well with grilled meats.', 
    '0', '1150', '', 1, NOW(), 1, 4, 17, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG003', 'Haut-Médoc, Château Cap L’Ousteau (France)', 'Structured with blackberry and earthy notes. Great with lamb, beef, or hearty stews.', 
    '0', '1650', '', 1, NOW(), 1, 4, 18, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG004', 'Côtes du Rhône, Auguste Bessac (France)', 'Juicy red fruit with peppery spice. Perfect with poultry, mushrooms, or grilled fish.', 
    '0', '2350', '', 1, NOW(), 1, 4, 19, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG005', 'Crozes Hermitage, Philippe & Vincent Jaboulet (France)', 'Syrah with dark fruit, pepper, and smoky notes. Pairs with red meats and stews.', 
    '0', '2450', '', 1, NOW(), 1, 4, 20, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG006', 'Franschhoek Merlot-Cabernet Sauvignon, Mountain View (South Africa)', 'Fruity and balanced. Pairs well with BBQ meats, burgers, or cheese platters.', 
    '0', '1200', '', 1, NOW(), 1, 4, 21, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG007', 'Stellenbosch Pinotage (South Africa)', 'Bold with smoky dark fruit. Perfect with braised lamb or rich stews.', 
    '0', '1600', '', 1, NOW(), 1, 4, 22, 'product', '15');
INSERT INTO products 
    (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) 
    VALUES (UUID(), 'RWG008', 'South Eastern Shiraz, Muddy Boots (Australia)', 'Spicy and powerful with black fruit. Best with grilled steak or BBQ ribs.', 
    '0', '1500', '', 1, NOW(), 1, 4, 23, 'product', '15');




-- First, let's insert the product categories (starting from ID 5)
INSERT INTO `product_categories` (`id`, `uuid`, `name`, `created_by`, `created_date`, `status`, `photo`, `display_order`) VALUES
(5, UUID(), 'Local Beer', 1, NOW(), 1, NULL, 1),
(6, UUID(), 'Imported Beer', 1, NOW(), 1, NULL, 2),
(7, UUID(), 'Non Alcoholic', 1, NOW(), 1, NULL, 3),
(8, UUID(), 'Cocktails', 1, NOW(), 1, NULL, 4),
(9, UUID(), 'Aperitifs', 1, NOW(), 1, NULL, 5),
(10, UUID(), 'Liqueurs', 1, NOW(), 1, NULL, 6),
(11, UUID(), 'Gin', 1, NOW(), 1, NULL, 7),
(12, UUID(), 'Whisky & Bourbon', 1, NOW(), 1, NULL, 8),
(13, UUID(), 'Tequila', 1, NOW(), 1, NULL, 9),
(14, UUID(), 'Vodka', 1, NOW(), 1, NULL, 10),
(15, UUID(), 'Rum', 1, NOW(), 1, NULL, 11),
(16, UUID(), 'Digestifs', 1, NOW(), 1, NULL, 12);

-- Now, let's insert the products based on the actual menu
-- Note: Removed 'id' field as requested to allow auto-increment
INSERT INTO `products` (`uuid`, `stockref`, `name`, `description`, `cost_price`, `selling_price`, `photo`, `created_by`, `created_date`, `status`, `category_id`, `display_order`, `type`, `vat`) VALUES

-- Local Beer (Category 5)
(UUID(), 'LB001', 'PHOENIX DRAUGHT BEER 330ML', 'Local draught beer 330ml', '80.00', '160.00', NULL, 1, NOW(), 1, 5, 1, 'product', '15'),
(UUID(), 'LB002', 'PHOENIX DRAUGHT BEER 600ML', 'Local draught beer 600ml', '160.00', '320.00', NULL, 1, NOW(), 1, 5, 2, 'product', '15'),
(UUID(), 'LB003', 'PHOENIX BEER CHOPINE 330ML', 'Local beer chopine 330ml', '70.00', '140.00', NULL, 1, NOW(), 1, 5, 3, 'product', '15'),

-- Imported Beer (Category 6)
(UUID(), 'IB001', 'ASAHI SUPER DRY BEER CHOPINE 330ML', 'Imported Japanese beer 330ml', '100.00', '200.00', NULL, 1, NOW(), 1, 6, 1, 'product', '15'),

-- Non Alcoholic (Category 7)
(UUID(), 'NA001', 'STILL WATER (100CL)', 'Still water 100cl', '45.00', '90.00', NULL, 1, NOW(), 1, 7, 1, 'product', '15'),
(UUID(), 'NA002', 'S.PELLEGRINO SPARKLING WATER (75CL)', 'Premium sparkling water 75cl', '62.50', '125.00', NULL, 1, NOW(), 1, 7, 2, 'product', '15'),
(UUID(), 'NA003', 'COCA COLA / SPRITE / TONIC WATER', 'Soft drinks selection', '37.50', '75.00', NULL, 1, NOW(), 1, 7, 3, 'product', '15'),
(UUID(), 'NA004', 'SAN PELLEGRINO SPAKRLING JUICE/JUS PETILLANT', 'Sparkling juice', '50.00', '100.00', NULL, 1, NOW(), 1, 7, 4, 'product', '15'),
(UUID(), 'NA005', 'HEINEKEN 0.0 330ML', 'Non-alcoholic beer 330ml', '80.00', '160.00', NULL, 1, NOW(), 1, 7, 5, 'product', '15'),
(UUID(), 'NA006', 'VIRGIN MOJITO', 'Non-alcoholic mojito', '87.50', '175.00', NULL, 1, NOW(), 1, 7, 6, 'product', '15'),
(UUID(), 'NA007', 'FRESHLY SQUEEZED JUICE / JUS FRAIS', 'Fresh juice - Orange, Apple, Pineapple & Pear', '100.00', '200.00', NULL, 1, NOW(), 1, 7, 7, 'product', '15'),

-- Cocktails (Category 8)
(UUID(), 'CT001', 'APERITIVO TONIC', 'A refreshingly bitter and citrusy classic. Perfect for starting the evening.', '100.00', '200.00', NULL, 1, NOW(), 1, 8, 1, 'product', '15'),
(UUID(), 'CT002', 'GIN & TONICS', 'CHOOSE YOUR GIN: Finsbury London Dry Gin | A classic, crisp, and juniper-led profile. Finsbury Pink Strawberry Gin | A fruity and refreshing modern twist.', '125.00', '250.00', NULL, 1, NOW(), 1, 8, 2, 'product', '15'),
(UUID(), 'CT003', 'GIN MARE & TONICS', 'A premium Mediterranean G&T, elevated with botanicals like rosemary, thyme, and olives.', '225.00', '450.00', NULL, 1, NOW(), 1, 8, 3, 'product', '15'),
(UUID(), 'CT004', 'MARGARITA CLASICA', 'The timeless trio of tequila, Triple Sec and fresh lime. Sharp, strong, and authentic.', '175.00', '350.00', NULL, 1, NOW(), 1, 8, 4, 'product', '15'),
(UUID(), 'CT005', 'WHISKY SOUR', 'A perfectly balanced blend of bourbon, fresh lemon, and a touch of sweetness. Smooth and satisfying.', '175.00', '350.00', NULL, 1, NOW(), 1, 8, 5, 'product', '15'),
(UUID(), 'CT006', 'COIN CASSE CROUTE SEX ON THE BEACH', 'A fun, fruity cocktail with the sweet flavors of peach and fresh pineapple & orange juice.', '175.00', '350.00', NULL, 1, NOW(), 1, 8, 6, 'product', '15'),
(UUID(), 'CT007', 'CLASSIC MOJITO', 'The essential refreshment. White rum, mint, lime, and soda for a crisp, clean finish.', '137.50', '275.00', NULL, 1, NOW(), 1, 8, 7, 'product', '15'),
(UUID(), 'CT008', 'TI PUNCH', 'Simply strong rhum agricole, lime, and sugarcane. Cest bon!', '100.00', '200.00', NULL, 1, NOW(), 1, 8, 8, 'product', '15'),

-- Aperitifs (Category 9)
(UUID(), 'AP001', 'LE FAVORI APERITIVO ORANGE BITTER', 'Orange bitter aperitif', '75.00', '150.00', NULL, 1, NOW(), 1, 9, 1, 'product', '15'),
(UUID(), 'AP002', 'FLORIDAJUS JUS PINA COLADA', 'Pina colada juice', '75.00', '150.00', NULL, 1, NOW(), 1, 9, 2, 'product', '15'),
(UUID(), 'AP003', 'BVLAND MALT CREAM', 'Malt cream liqueur', '75.00', '150.00', NULL, 1, NOW(), 1, 9, 3, 'product', '15'),

-- Liqueurs (Category 10)
(UUID(), 'LQ001', 'CURACAO BLANC/CRÈME DE MENTHE/PEACH/CURACAO BLEU/WATERMELON/BANANA/GREEN MELON/PASSION FRUIT', 'Selection of liqueurs', '50.00', '100.00', NULL, 1, NOW(), 1, 10, 1, 'product', '15'),

-- Gin (Category 11)
(UUID(), 'GN001', 'FINSBURY LONDON DRY GIN', 'Classic London dry gin', '100.00', '200.00', NULL, 1, NOW(), 1, 11, 1, 'product', '15'),
(UUID(), 'GN002', 'FINSBURY PINK STRAWBERRY GIN', 'Pink strawberry gin', '100.00', '200.00', NULL, 1, NOW(), 1, 11, 2, 'product', '15'),
(UUID(), 'GN003', 'GIN MARE -MEDITERRANEAN GIN', 'Mediterranean gin', '150.00', '300.00', NULL, 1, NOW(), 1, 11, 3, 'product', '15'),

-- Whisky & Bourbon (Category 12)
(UUID(), 'WB001', 'TEACHERS WHISKY HIGHLAND CREAM', 'Highland cream whisky', '125.00', '250.00', NULL, 1, NOW(), 1, 12, 1, 'product', '15'),
(UUID(), 'WB002', 'JIM BEAM WHITE BOURBON', 'White bourbon', '125.00', '250.00', NULL, 1, NOW(), 1, 12, 2, 'product', '15'),
(UUID(), 'WB003', 'JIM BEAM BOUBON PEACH / APPLE/ HONEY', 'Flavored bourbon selection', '125.00', '250.00', NULL, 1, NOW(), 1, 12, 3, 'product', '15'),
(UUID(), 'WB004', 'AUCHENTOSHAN AMERICAN OAK SINGLE MALT', 'Single malt whisky', '200.00', '400.00', NULL, 1, NOW(), 1, 12, 4, 'product', '15'),

-- Tequila (Category 13)
(UUID(), 'TQ001', 'TEQUILA SIERRA BLANCO', 'Blanco tequila', '125.00', '250.00', NULL, 1, NOW(), 1, 13, 1, 'product', '15'),
(UUID(), 'TQ002', 'TEQUILA SIERRA REPOSADO', 'Reposado tequila', '150.00', '300.00', NULL, 1, NOW(), 1, 13, 2, 'product', '15'),

-- Vodka (Category 14)
(UUID(), 'VD001', 'SMIRNOFF VODKA', 'Premium vodka', '100.00', '200.00', NULL, 1, NOW(), 1, 14, 1, 'product', '15'),

-- Rum (Category 15)
(UUID(), 'RM001', 'CHAMAREL TI RUM WHITE', 'White rum', '100.00', '200.00', NULL, 1, NOW(), 1, 15, 1, 'product', '15'),

-- Digestifs (Category 16)
(UUID(), 'DG001', 'AMARETTO', 'Almond liqueur', '100.00', '200.00', NULL, 1, NOW(), 1, 16, 1, 'product', '15'),
(UUID(), 'DG002', 'PEPPERMINT LIQUEUR', 'Peppermint liqueur', '75.00', '150.00', NULL, 1, NOW(), 1, 16, 2, 'product', '15');


INSERT INTO product_categories (id, uuid, name, created_by, created_date, status, photo, display_order) VALUES
(17, UUID(), 'SNACKS', 1, NOW(), 1, NULL, 1),
(18, UUID(), 'Entrées', 1, NOW(), 1, NULL, 2),
(19, UUID(), 'Plat principal', 1, NOW(), 1, NULL, 3),
(20, UUID(), 'Plats typiques', 1, NOW(), 1, NULL, 4),
(21, UUID(), 'Desserts', 1, NOW(), 1, NULL, 5);

INSERT INTO products (uuid, stockref, name, description, cost_price, selling_price, photo, created_by, created_date, status, category_id, display_order, type, vat) VALUES
(UUID(), 'SNK-001', 'Croustillant de poulet', NULL, '275', '275', NULL, 1, NOW(), 1, 17, 1, 'product', '15'),
(UUID(), 'SNK-002', 'Croustillant de crevette', NULL, '325', '325', NULL, 1, NOW(), 1, 17, 2, 'product', '15'),
(UUID(), 'SNK-003', 'Croustillant de calamar', NULL, '425', '425', NULL, 1, NOW(), 1, 17, 3, 'product', '15'),
(UUID(), 'SNK-004', 'Croquette poulet', NULL, '275', '275', NULL, 1, NOW(), 1, 17, 4, 'product', '15'),
(UUID(), 'SNK-005', 'Croquette Crevette', NULL, '325', '325', NULL, 1, NOW(), 1, 17, 5, 'product', '15'),
(UUID(), 'SNK-006', 'Hakien Poulet', NULL, '225', '225', NULL, 1, NOW(), 1, 17, 6, 'product', '15'),
(UUID(), 'SNK-007', 'Hakien (légumes)', NULL, '225', '225', NULL, 1, NOW(), 1, 17, 7, 'product', '15'),

(UUID(), 'ENT-001', 'Salade César', NULL, '550', '550', NULL, 1, NOW(), 1, 18, 1, 'product', '15'),
(UUID(), 'ENT-002', 'Salade de palmiste et marlin fumé', NULL, '500', '500', NULL, 1, NOW(), 1, 18, 2, 'product', '15'),
(UUID(), 'ENT-003', 'Salade d’ourite', NULL, '500', '500', NULL, 1, NOW(), 1, 18, 3, 'product', '15'),
(UUID(), 'ENT-004', 'Salade Kono-kono', NULL, '575', '575', NULL, 1, NOW(), 1, 18, 4, 'product', '15'),

(UUID(), 'PLT-001', 'Blanc de poulet grillé, frites et salade', NULL, '475', '475', NULL, 1, NOW(), 1, 19, 1, 'product', '15'),
(UUID(), 'PLT-002', 'Ourite grillée, frites et salade', NULL, '600', '600', NULL, 1, NOW(), 1, 19, 2, 'product', '15'),
(UUID(), 'PLT-003', 'Langouste grillée (500 g) Riz safrané ou frites & salade', NULL, '1300', '1300', NULL, 1, NOW(), 1, 19, 3, 'product', '15'),
(UUID(), 'PLT-004', 'Filet de dorade poêlé', NULL, '600', '600', NULL, 1, NOW(), 1, 19, 4, 'product', '15'),
(UUID(), 'PLT-005', 'Poisson du jour accompagné de riz créole & légumes', NULL, '850', '850', NULL, 1, NOW(), 1, 19, 5, 'product', '15'),
(UUID(), 'PLT-006', 'Plateau de fruits de mer', NULL, '2300', '2300', NULL, 1, NOW(), 1, 19, 6, 'product', '15'),
(UUID(), 'PLT-007', 'Touffé de crabe et riz blanc (500 g)', NULL, '850', '850', NULL, 1, NOW(), 1, 19, 7, 'product', '15'),
(UUID(), 'PLT-008', 'Tagliatelles aux crevettes basilic', NULL, '600', '600', NULL, 1, NOW(), 1, 19, 8, 'product', '15'),

(UUID(), 'TYP-001', 'Curry de cerf accompagné de riz blanc et lentilles', NULL, '600', '600', NULL, 1, NOW(), 1, 20, 1, 'product', '15'),
(UUID(), 'TYP-002', 'Curry de poulet , crevettes accompagné de riz blanc et lentilles', NULL, '500', '500', NULL, 1, NOW(), 1, 20, 2, 'product', '15'),
(UUID(), 'TYP-003', 'Curry d’ourite accompagné de riz blanc et lentilles', NULL, '550', '550', NULL, 1, NOW(), 1, 20, 3, 'product', '15'),
(UUID(), 'TYP-004', 'Salmi fruits de mer du jour accompagné de riz blanc et lentilles', NULL, '600', '600', NULL, 1, NOW(), 1, 20, 4, 'product', '15'),

(UUID(), 'DES-001', 'Flan au coco', NULL, '225', '225', NULL, 1, NOW(), 1, 21, 1, 'product', '15'),
(UUID(), 'DES-002', 'Banane flambée, glace vanille', NULL, '190', '190', NULL, 1, NOW(), 1, 21, 2, 'product', '15');
