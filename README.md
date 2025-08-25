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

***Work through the following deliverables. These are more advanced than the original challenge.***

1. On the products index page, clicking a product name should take you to the product's show view.
2. On the warehouses index page, clicking a warehouse's name should take you to the warehouse's show view.
3. The product show view should list all warehouses where the product is stored and the current stock in each.
4. The warehouse show view should list all products stored in that warehouse and their quantities.
5. Implement a form to record a new inventory transaction (stock in, stock out, transfer) for a product and warehouse.
6. Add a dashboard page showing overall inventory levels and recent transactions.
7. Add validations to ensure stock cannot go negative and that transfers are between different warehouses.
8. Implement a feature to view transaction history for a product or warehouse.
9. Add an admin interface to create/edit/delete products and warehouses.
10. Add a report page showing low-stock products across all warehouses.
11. Add search functionality to find products by name or SKU.
12. Add pagination to the products index page.
13. Add custom scopes to filter products (e.g., by stock level, warehouse).
14. Add API endpoints to list products, warehouses, and inventory transactions (bonus: use serializers).
15. Add notifications for low-stock products (bonus: use ActionMailer).

### Hints / Tips

+ Use nested resources for inventory transactions under products and warehouses.
+ Use custom model methods to calculate current stock and transaction summaries.
+ Use strong params and model validations to ensure data integrity.
+ Consider using partials for repeated view logic (e.g., product cards, warehouse lists).
+ Use Rails' built-in helpers for forms and links.
+ For search and pagination, consider gems like `kaminari` or `will_paginate`.

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
2. `git add` and `git commit` your changes.
3. From your custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
4. Send the patch file to your instructor on Connect before the specified time. You can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
