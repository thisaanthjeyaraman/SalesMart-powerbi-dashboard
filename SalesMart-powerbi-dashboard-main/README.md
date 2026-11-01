SalesMart — Retail Sales & Profitability Dashboard

About the Project

I developed **SalesMart** as a hands-on data analytics project to learn and apply Power BI in a practical business scenario. I used retail sales data to build an interactive dashboard that helps analyze sales performance, profitability, regional trends, and customer purchasing patterns.

Through this project, I explored how raw data can be cleaned, transformed, analyzed, and converted into meaningful visual insights that support business decision-making.

Project Objectives

- Analyze overall sales and profit performance.
- Compare sales across different regions and product categories.
- Identify top-performing customers based on sales.
- Understand sales distribution across different shipping modes.
- Build an interactive dashboard to explore data using filters.

Dashboard Features

- KPI Cards: Display Total Sales, Total Orders, and Total Profit.
- Sales by Region: Compare sales performance across regions using a horizontal bar chart.
- Sales by Category: Visualize sales distribution across Technology, Furniture, and Office Supplies.
- Sales by Shipping Mode: Analyze sales across different shipping methods.
- Top 10 Customers: View the highest-ranking customers by sales, along with their order counts and profit.
- Interactive Filters: Filter dashboard results by Category, Region, Segment, and Order Date.

Tools & Technologies

- **Power BI Desktop** — Dashboard development and data visualization.
- **Power Query** — Data cleaning and transformation.
- **DAX** — Calculated measures and customer ranking.
- **Retail Sales Dataset** — Data source for sales and profitability analysis.

Data Cleaning & Analysis

While working on this project, I used Power Query to prepare the dataset for analysis. This included standardizing date formats, handling duplicate records, and correcting column naming inconsistencies.

I also created DAX measures to calculate sales, profit, order counts, and profit margin. These calculations helped me present important business metrics through interactive dashboard visuals.

Key DAX Measures

```dax
Total Sales = SUM(Superstore[Sales])

Total Profit = SUM(Superstore[Profit])

Total Orders = DISTINCTCOUNT(Superstore[Order ID])

Profit Margin = DIVIDE([Total Profit], [Total Sales], 0)

Customer Sales Rank =
RANKX(
    ALL(Superstore[Customer Name]),
    CALCULATE(SUM(Superstore[Sales])),
    ,
    DESC
)
```

## Dataset

I used the dataset from kaggle for this project. The dataset contains approximately 10,000 orders from 2014 to 2017.

I used this data to explore sales trends, product category performance, regional sales, profitability, and customer behavior.

## How to Run the Project

1. Download `SalesMart.pbix` from this repository.
2. Install [Power BI Desktop](https://powerbi.microsoft.com/desktop/).
3. Open the `.pbix` file in Power BI Desktop.
4. Explore the dashboard using the available filters and visualizations.


Conclusion

Building SalesMart helped me understand how Power BI can be used to turn raw retail data into useful business insights. This project strengthened my foundational skills in data analytics, data visualization, and business intelligence while giving me practical experience in developing an end-to-end dashboard.


**Project:** SalesMart  
**Domain:** Retail Analytics & Business Intelligence  
**Tools:** Power BI, DAX, Power Query