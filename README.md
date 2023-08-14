# Cyclistic Bike Share Analysis with Weather Integration
![Cyclistic-logo](https://github.com/ridwansukri/cyclistic-bike-share-with-weather/blob/main/cyclistic-logo.png)

## Introduction
This project is a fictional case study conducted as a capstone project for the Tetris Program Batch 3. The main goal is to showcase my technical skills in AWS, SQL, Python, and Tableau, as well as a data analyst approach to a case.

## Table of Contents
- [Background](#background)
- [Business Tasks](#business-tasks)
- [Business Objectives](#business-objectives)
- [Deliverables](#deliverables)
- [Tools](#tools)
- [Diagram of Data Analysis](#diagram-of-data-analysis)
- [Save Best Model](#save-best-model)
- [Conclusion](#conclusion)
- [Usage Instructions](#usage-instructions)
- [License & Acknowledgements](#license--acknowledgements)
- [Contact](#contact)

## Background
As a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago, this analysis seeks to understand how casual riders and annual members use Cyclistic bikes differently. The insights from this analysis will guide the marketing strategy to convert casual riders into annual members.

## Business Tasks
- Analyze Cyclistic historical bike trip data.
- Segment customers based on their usage and analyze how different weather conditions affect their trips.
- Dive deep into trip duration analysis.
- Provide recommendations for marketing analyst team.

## Business Objectives
- Improve Customer Engagement: By understanding how customers use the service under different weather conditions, we can provide more personalized recommendations and services.
- Optimize Operational Efficiency: By predicting demand and understanding station usage patterns, we can better allocate our resources and manage bike stocks.
- Increase Revenue: By understanding and predicting usage patterns, we can create pricing strategies and promotional offers to increase usage and revenue.

## Deliverables
- [Cyclistic Annual Report](https://www.canva.com/design/DAFq4CjjTCw/yOjn2j3S4m5_Y7k0pJb0Ng/edit)
- [Cyclistic Daily Dashboard](https://public.tableau.com/app/profile/ridwan.sukri/viz/CyclisticDailyDashboard/Dashboard1)
- [Documentation of Data Processing](https://github.com/ridwansukri/cyclistic-bike-share-with-weather/blob/main/cyclistic_bike_share_analysis_with_weather.ipynb), from ELT, data cleansing, data transformation, getting insight from visualization, and create machine learning model

## Tools
- AWS S3
- AWS Lambda
- AWS Redshift
- Google Colab with GPU
- Tableau

## Diagram of Data Analysis
![Diagram of Data Analysis](https://github.com/ridwansukri/cyclistic-bike-share-with-weather/blob/main/Diagram%20Data%20Analysis.jpg)

## Save Best Model
The trained model is stored as "best_model.cbm", facilitating future predictions without retraining, thus saving computational resources and time.

## Conclusion

1. Focus on increasing bike availability at stations located on the outskirts of the city near the beach, as these stations are highly popular with both Casual and Member users. This will improve user experience.
2. Increase the availability of electric bikes for Casual users, as the analysis shows Casuals prefer electric bikes over classic bikes. This could attract more Casual users.
3. Do targeted promotions to Casual users to encourage use of the service during sunny and warm weather (24-28°C), as the analysis indicates increased usage by Casuals under such conditions.
4. Enhance service and bike availability during busy morning and evening rush hours to serve Members who tend to use bikes for commuting. This is key to retaining Members.
5. Provide special incentives or promotions to loyal Members who use the service year-round, even in poor weather or winter. This can retain devoted Members.
6. Consider expansion to locations similar to current popular stations, such as city outskirts near beaches. This could attract new Casual and Member users.
7. Increase bike availability on weekends as the analysis shows increased Casual usage on Saturdays and Sundays.
8. Implement different marketing strategies for Casual and Member users based on their distinct usage patterns.


## Usage Instructions
1. Clone this repository.
2. Ensure you have the necessary libraries installed.
3. Setup aws credentials and make all AWS resources have IAM role that allow services that you want
4. Run the Notebook.
(Add more detailed steps if necessary)

## License & Acknowledgements
This project is licensed under the MIT License. 
Special thanks to Divvy and VisualCrossing for providing the data

## Contact
For any questions or feedback, feel free to reach out at ridwansukri@icloud.com or connect on [LinkedIn](https://www.linkedin.com/in/muh-ridwan-sukri)
