<p align="center"><a href=""><img width="500" height="300" src="libya_commodity_SQL/project_banner.jpg" height="auto"/></a>

<h1 align="center">Libya Commodity Data Analytics Project</h1>

<br/>


## 💬 Project Information:

<br/>

 <h3>

This is a data analytics project based on Libya Commodities Dataset from The [Humanitarian Data Exchange](https://data.humdata.org/dataset/wfp-food-prices-for-libya). We wanted to sample the dataset, which included 46,683 rows, so we imported it into Excel Sheets and sampled the data based on the average of each region. Before we launched the study, we checked the sample size data to ensure that it accurately represented each location. After cleaning and analyzing the data, we imported it into MySQL for additional querying and analysis utilizing SQL's most powerful features. Finally, before completing the project, we exported the clean dataset to [Tableau for Visualizations](https://public.tableau.com/app/profile/rafik.arousi/viz/LibyaCommodityProject/Dashboard).

</h3>

<br/>

## 🌀 [Review Full SQL Code Here ⬅️](https://github.com/Rafik-Alarousi/ProjectPortfolio/blob/main/Libya_Commodity_Project/libya_commodity_SQL/libya_commodity.SQL)

<br/>
<br/>

## 📊 Excel Changelog:

<br/>
<br/>
 
- Deleted the 2nd & 3rd row as a result of duplications
- Renamed date to dates (For SQL Syntax Compatibility)
- Renamed admin1 to cardinal_points
- Renamed admin2 to region
- Renamed market to city
- Renamed priceflag to price_flag
- Renamed pricetype to price_type
- Renamed usdprice to usd_price
- Added ID column for Unique ID Sequencing
- Filtered Each City By AVG (price) For Sampling = 1,377 Rows
- Deleted Unnecessary 45,306 Rows
- Vaildated & Confirmed Data Integrity
- Used TRIM function to check & delete any spaces infront of text
- Changed dates into date format mm/dd/yyyy
- Changed latitude & longitude to Number Format
- Changed price & usd_price to Number Format
- Changed unit to General Format

<br/>
<br/>


## 🚀 Languages & Tools Used In This Project:

<br/>

<p align="left">
    <a href="https://www.mysql.com/" target="_blank"> <img src="https://img.icons8.com/color/48/000000/mysql-logo.png" alt="#" width="50" height="50"/> </a>
    <a href="https://www.microsoft.com/en-us/microsoft-365/excel" target="_blank"> <img src="https://img.icons8.com/color/50/000000/ms-excel.png" alt="#" width="43" height="43"/> </a>
    <a href="https://www.tableau.com/" target="_blank"> <img src="https://img.icons8.com/color/48/000000/tableau-software.png" alt="#" width="43" height="43"/> </a>
</p>
