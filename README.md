# Sales Management with PowerBI
This project showcases a business request for an executive sales report from a sales manager. Based on the request made from the client, we define their story to fulfill delivery and ensure that acceptance criteria's were maintained through the project.

## Business Request
The inital request from our client. We highlight what the requests are to create a plan of what they need.
![RequestLetter](https://user-images.githubusercontent.com/70506634/139752448-b6743d6b-fc69-4084-b772-82cf8a54001c.png)

We create breakdown overview of what the requestees wants and needs to fulfill the acceptance criteria.

| No# | As a (role) | I want (request/demand) | So that I (user value) | Acceptance Criteria |
--- | --- | --- | --- | --- 
| 1 | Sales Mananger | To get a dashboard overview of internet sales | Can follow better which customers and products sells the best | A Power BI dashboard which updates data once a day |
| 2 | Sales Mananger | To get a dashboard overview of internet sales | Follow sales over time against budget | A power BI dashboard with graphs and KPIs comparing against budget |
| 3 | Sales Representative | A detailed overview of Internet Sales per customers | Can follow up my customers that buys the most and who we can sell more to | A Power BI dashboard which allows me to filter data for each customer |
| 4 | Sales Representative | A detailed overview of internet sales per product | Can follow up my products that sells the most | Power BI dashboard which allows me to filter data for each product |

## Data Cleansing & Transformation (SQL)
To create the necessary data model for analysis and fulfilling business needs, the following tables were extracted using SQL.

Below are the SQL statements for cleansing and transforming necessary data.

<details>
  <summary>DIM_Calendar:</summary>
  
![carbon](https://user-images.githubusercontent.com/70506634/139749481-a5847a01-4178-485c-8323-9410d4581e13.png)
  </details>
  
<details>
  <summary>DIM_Customers:</summary>
  
![carbon](https://user-images.githubusercontent.com/70506634/139749758-a5af367b-1e35-447f-b53b-369fd665e85a.png)
</details>
  
<details>
  <summary>DIM_Products:</summary>
  
![DIM_Products](https://user-images.githubusercontent.com/70506634/139749856-9105f915-81e8-4fc7-9ac4-34ca449e561b.png)
  </details>
  
<details>
  <summary>FACT_InternetSales:</summary>
  
  ![FACT_InternetSales](https://user-images.githubusercontent.com/70506634/139750247-e35baed5-1526-45d0-bfed-6cf9d3660d4f.png)
</details>

## Data Model
Below is a screenshot of the data model after cleansed and prepared tables were read into Power BI.

This is an Entity Relational Diagram showing the connection of the dimensions and fact tables with one another.
<details>
  <summary>ERD</summary>
  
  ![ERD](https://user-images.githubusercontent.com/70506634/139750485-ab8e3f71-2067-421f-88d3-0b807edb51c7.png)
</details>

## Sales Management Dashboard (PowerBI)
An image of the finished sales management dashboard and overview showing necessary details and visualizations to show sales over time, per customer, and per products.
<details>
  <summary>Sales Overview</summary>
  
  ![Sales_Report_Dashboards-1](https://user-images.githubusercontent.com/70506634/139751477-2ab04d3c-4c55-400e-8e2c-4374a56a535e.png)
  </details>
  
<details>
  <summary>Customer Details</summary>
  
  ![Sales_Report_Dashboards-2](https://user-images.githubusercontent.com/70506634/139751887-46e80f9c-6ea4-4362-80dd-58d5ebd9f744.png)
  </details>
  
<details>
  <summary>Product Details</summary>
  
  ![Sales_Report_Dashboards-3](https://user-images.githubusercontent.com/70506634/139751908-ddd89096-0ed6-4fd9-961b-c602cf5d7e6d.png)
  </details>




