/*Task 3: Product Bill Rendering System

Scenario

Develop a billing page for a shopping application.

Requirements

Display:

Product ID
Product Name
Quantity
Price per item
GST
Discount
Final Bill Amount

Calculations

Formula
--------
Subtotal:
Subtotal=Quantity×Price

GST:

18% GST on subtotal

Discount:

10% discount if subtotal > 5000

Final Amount:
Final Amount=Subtotal+GST−Discount

Classes Required
1. Product.java

Contains:

productId
productName
quantity
price
2. ProductController.java

Responsibilities:

Calculate bill values
Send billing details to view
3. product.jsp / product.html

Display:

Bill summary
GST details
Final payable amount*/