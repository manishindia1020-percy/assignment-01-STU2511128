// Use database
use ecommerce_db;

// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    _id: "P1001",
    name: "iPhone 15",
    category: "Electronics",
    price: 80000,
    brand: "Apple",
    specifications: {
      warranty_years: 1,
      voltage: "220V",
      battery: "4000mAh"
    },
    features: ["5G", "Face ID", "OLED Display"]
  },
  {
    _id: "P2001",
    name: "Men's Casual Shirt",
    category: "Clothing",
    price: 1500,
    brand: "Zara",
    size_options: ["S", "M", "L", "XL"],
    material: "Cotton",
    colors: ["Blue", "Black"]
  },
  {
    _id: "P3001",
    name: "Amul Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: new Date("2024-12-30"),
    nutrition: {
      calories: 150,
      fat: "8g",
      protein: "6g"
    },
    storage: "Keep Refrigerated"
  }
]);

// OP2: find() — Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { _id: "P1001" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — index on category
db.products.createIndex({ category: 1 });

// Reason:
// This index improves query performance for filtering products by category,
// which is a common operation in e-commerce systems.