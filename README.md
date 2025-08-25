# Rails Assessment: Inventory Management System

It's time to put your Rails skills to the test with a more advanced domain!

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Nested Resources
+ Advanced Associations
+ Custom Business Logic
+ Stay calm, focus and code

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

You are building an inventory management system for a company to track products, warehouses, and all inventory movements. Each product can be stored in multiple warehouses, and every movement (stock in, stock out, transfer) is tracked as an inventory transaction. The platform should allow for rich interactions between products, warehouses, and inventory transactions, including stock level tracking and reporting.

Visiting `/products` will list all products. Visiting `/warehouses` will list all warehouses. The Models, Views, and Controllers for products, warehouses, and inventory transactions need to be built out to support the following requirements.

## Instructions / Deliverables

***Work through the following deliverables. These are more advanced than the original challenge, and tailored to inventory management!***

1. On the products index page, display a list of all products with their SKU, name, and total stock across all warehouses. Clicking a product name should take you to the product's show view.
2. On the warehouses index page, display all warehouses. Clicking a warehouse's name should take you to its show view.
3. The product show view should list all warehouses where the product is stored and the current stock in each. Show a low-stock warning if any warehouse is below a threshold.
4. The warehouse show view should list all products stored in that warehouse and their quantities, with a summary of total value.
5. Implement a form to record a new inventory transaction (stock in, stock out, transfer) for a product and warehouse. Validate that stock cannot go negative.
6. Add a dashboard page showing overall inventory levels, recent transactions, and a "Top Movers" section for most active products.
7. Add validations to ensure stock cannot go negative and that transfers are between different warehouses. Prevent duplicate SKUs.
8. Implement a feature to view transaction history for a product or warehouse, with filters for date range and transaction type.
9. Add a "Low Stock" page showing all products below a certain threshold across all warehouses.
10. Add a report page for each product showing all transactions, current stock, and warehouse locations.
11. Add search functionality to find products by name, SKU, or warehouse.
12. Add custom scopes to filter products (e.g., by stock level, warehouse, or recent activity).
13. Add a fun "Random Product" button that takes the user to a random product show page.
14. (Bonus) Add notifications for low-stock products (try ActionMailer or just a flash message).
15. (Bonus) Add an API endpoint to list products and inventory transactions (try using serializers).

### Hints / Tips

+ Use nested resources for inventory transactions under products and warehouses.
+ Use custom model methods to calculate current stock and transaction summaries.
+ Use strong params and model validations to ensure data integrity.
+ Consider using partials for repeated view logic (e.g., product cards, warehouse lists).
+ Use Rails' built-in helpers for forms and links.
+ For search and pagination, consider gems like `kaminari` or `will_paginate`.
+ Make it fun! Add some color, icons, or inventory charts to your views if you want.
