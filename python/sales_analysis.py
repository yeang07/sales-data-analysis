import pandas as pd

# Load the sales dataset
df = pd.read_csv("../data/sales_data.csv")

# Show the first few rows
print("First 5 rows:")
print(df.head())

# Basic dataset information
print("\nDataset information:")
print(df.info())

# Total sales
total_sales = df["TotalSales"].sum()
print("\nTotal sales:")
print(total_sales)

# Sales by region
sales_by_region = df.groupby("Region")["TotalSales"].sum().sort_values(ascending=False)
print("\nSales by region:")
print(sales_by_region)

# Sales by product
sales_by_product = df.groupby("Product")["TotalSales"].sum().sort_values(ascending=False)
print("\nSales by product:")
print(sales_by_product)

# Sales by category
sales_by_category = df.groupby("Category")["TotalSales"].sum().sort_values(ascending=False)
print("\nSales by category:")
print(sales_by_category)

# Best-selling products by quantity
quantity_by_product = df.groupby("Product")["Quantity"].sum().sort_values(ascending=False)
print("\nQuantity sold by product:")
print(quantity_by_product)
