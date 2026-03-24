# Financial-Fraud-Detection-Anomaly-Detection-in-Credit-Card-Transactions
This project focused on financial fraud detection by analyzing credit card transaction data to identify patterns that differentiate fraudulent and non-fraudulent behavior. 
The objective was to support fraud and risk teams with data-driven insights rather than just building a predictive model.

The key success metrics were:
1.	Clear separation of fraud vs non-fraud behavior: Fraudulent transactions showed higher average amounts and extreme outliers, confirming meaningful behavioral differences.
2.	Identification of high-risk patterns: Ability to isolate high-risk categories, merchants, and time windows where fraud occurs more frequently.
3.	Analytical consistency across tools: Findings from Python EDA were validated using SQL aggregations and Excel summaries, ensuring reliability.
4.	Stakeholder-ready outputs: Creation of interactive Tableau dashboards that allow fraud and risk teams to monitor:
a. Fraud distribution by geography
b. Monthly and time-based transaction trends
c. Spending behavior across genders and categories
5.	Business interpretability: Insights were explainable and usable without advanced technical knowledge, which is critical in fraud operations.

Key Insights: The most important insights from the analysis were:
1.	Transaction amount is the strongest numerical indicator of fraud: Fraudulent transactions have a higher mean amount and a much wider spread, including extreme values. Although the correlation is moderate, amount remains the most informative numeric feature.
2.	Fraud is time-dependent, not random: Normal transactions peak during regular business hours, while fraud tends to occur late at night or during unusual time windows. Monthly trends show fluctuations, indicating behavioral and seasonal effects.
3.	Fraud is unevenly distributed across categories and merchants: Certain categories and merchant types consistently show higher fraud concentration, making them priority areas for monitoring.
4.	Geographic variables alone do not directly explain fraud: While location variables are highly correlated with each other, they do not individually predict fraud. However, they provide strong potential for feature engineering, such as distance between customer and merchant.
5.	Fraud detection is multi-factor and subtle: No single variable explains fraud. Effective fraud detection depends on combining amount, timing, category, and behavioral patterns, which mirrors real-world fraud scenarios.

Tools: Excel, Tableau, MySQL, Python

