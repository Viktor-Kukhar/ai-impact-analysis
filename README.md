# AI Impact Analysis on Digital Media (2020-2025)

## Project Background

As a data analyst who is studying the digital media landscape, this project analyzes the transformative effects of Artificial Intelligence between 2020 and 2025. Using [Impact of AI on Digital Media (2020-2025)](https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025) dataset, I investigated how AI is reshaping industries through its impact on content creation, workforce dynamics, and economic outcomes. This insights will guide marketing and product teams in resource allocation, assist operations managers in workforce planning, and inform policymakers about regulatory impacts, helping with navigation in the age of the rapid integration of AI.

Insights and recommendations are provided on the following key areas:

 - **AI Adoption and Growth Trends**
 - **Industry and Content Volume Analysis**
 - **Workforce Impact and Economic Outcomes**
 - **Regulatory Effects and Human-AI Collaboration**

The SQL queries used to inspect and analyze the data for this project can be found in the `AI_Impact_Analysis.sql` file.

An interactive Tableau dashboard to report this findings can be found here: [AI Impact Analysis Dashboard](https://public.tableau.com/app/profile/viktor.kukhar/viz/AIImpactAnalysis/Dashboard)

## Data Structure

The analysis is based on a single table, `Global_AI_Content_Impact_Dataset`. A description of the key columns is as follows:

 - **Country, Year, Industry:** Categorical data for grouping.
 - **AI Adoption Rate (%):** The percentage of AI integration.
 - **AI-Generated Content Volume (TBs per year):** The volume of content produced by AI.
 - **Job Loss Due to AI (%):** The workforce impact of automation.
 - **Regulation Status:** The regulatory environment (Strict, Moderate, Lenient).
 - **Human-AI Collaboration Rate (%):** The rate of human and AI interaction in workflows.
 - **Revenue Increase Due to AI (%):** The financial benefit of AI adoption.

<img width="876" alt="Screenshot 2025-05-15 at 15 30 06" src="https://github.com/user-attachments/assets/6ed73c36-1c31-43a1-8e44-64724d65e47e" />
<img width="1083" alt="Screenshot 2025-05-15 at 13 48 54" src="https://github.com/user-attachments/assets/16b67713-609d-4bd2-a4e7-4798cbf2ebee" />

## Executive Summary

### Overview of Findings

This analysis of global AI trends from 2020 to 2025 reveals an average AI adoption rate of 54% and an average job loss of 26%. The total AI-generated content volume has reached 9,215 TB, with the Gaming and Media sectors leading this expansion. A medium level of AI adoption correlates with the highest increase in revenue, while regulatory environments with "Moderate" policies experience the highest job loss.

<img width="1202" height="799" alt="Screenshot 2025-07-29 at 18 51 42" src="https://github.com/user-attachments/assets/78da25c5-f48e-4449-b835-fcd240193cfb" />

## Insights Deep Dive

### AI Adoption and Growth Trends

 - **The global average AI adoption rate is 54%**. This figure serves as a crucial benchmark for evaluating regional and industry-specific performance. SQL queries were used to confirm this average across all records.
 - **AI adoption varies significantly by country**, with UK showing a 65% rate followed by France at 57%. SQL analysis was performed to rank all countries by their average adoption rate over the entire period.
 - **The AI adoption rate peaked in 2023 at 60%** and has since shown a slight decline, indicating a potential market consolidation or maturation phase.

<img width="1313" height="686" alt="Screenshot 2025-07-29 at 18 46 06" src="https://github.com/user-attachments/assets/ed81e9f8-b5cd-41db-89e1-5f0713dda9de" />

### Industry and Content Volume Analysis

 - **The total volume of AI content produced is 9,215 TB**.
 - **The Gaming industry is the largest producer of AI content**, followed by Media, Education, and Retail. This was confirmed by SQL queries summing the content volume for each industry.
 - **Content volume growth shows Gaming sector scaling at the fastest rate.** In 2020 this sector had 16TB of content volume but in 2025 it has 277TB suggesting this industry have found sustainable AI integration model.

<img width="1281" height="456" alt="Screenshot 2025-07-29 at 18 42 30" src="https://github.com/user-attachments/assets/9d02b188-a3c1-46f2-ab12-c6d7ae704e50" />

<img width="1201" height="697" alt="Screenshot 2025-07-29 at 17 40 19" src="https://github.com/user-attachments/assets/324ddb27-6ae9-4b25-9ece-8f9ac0c94521" />

### Workforce Impact and Economic Outcomes

 - **The average job loss due to AI across all sectors is 26%**.
 - **A "Medium" AI adoption rate is linked to the highest average increase in revenue**, suggesting that overly aggressive or low levels of adoption may yield suboptimal financial returns.
 - **The Manufacturing industry experiences the highest average job loss at around 35%**, while paradoxically using creative tools like Midjourney, suggesting AI is probably being adopted for design and prototyping phases rather than traditional production roles

<img width="735" height="730" alt="Screenshot 2025-07-29 at 17 51 27" src="https://github.com/user-attachments/assets/15b6e080-ffe8-44f1-a6b0-14ceb09b1ccb" />

### Regulatory Effects and Human-AI Collaboration

- **Job loss is highest in countries with "Moderate" regulation at 27%**, followed by "Lenient" at 26% and "Strict" at 24%. This counterintuitive finding suggests that moderate regulatory frameworks may create uncertainty that leads to more defensive automation strategies.
 - **Human-AI collaboration rates are notably higher in strict regulatory environments**, averaging around 55% compared to 45% in lenient frameworks. This indicates that stricter regulations may encourage more thoughtful integration approaches that preserve human roles.
 - **The scatter plot shows a varied relationship between AI Adoption and Human-AI Collaboration**, with no simple linear correlation, indicating that higher adoption does not automatically mean higher or lower collaboration, but rather depends on implementation strategy and industry context.

<img width="674" height="622" alt="Screenshot 2025-07-29 at 18 39 45" src="https://github.com/user-attachments/assets/8778cff4-980e-475e-97ba-ad8691e71644" />

<img width="829" height="723" alt="Screenshot 2025-07-29 at 18 40 30" src="https://github.com/user-attachments/assets/5bf3b6ca-af19-4643-beb7-02c2ee62e3d7" />

## Recommendations:

Based on the insights and findings above, we would recommend **Business Leaders and Policymakers** to consider the following:

 - The "Medium" adoption group sees the highest revenue increase. **Businesses should pursue a balanced, phased approach to AI integration to optimize return on investment.**
 - Job loss is highest under "Moderate" regulation. **Policymakers should evaluate and consider frameworks that may mitigate workforce displacement, potentially drawing lessons from "Strict" regulatory environments.**
 - The Gaming and Media industries lead in AI content generation. **Companies in other sectors can study these leaders to identify best practices for scaling AI-driven production.**
 - Job loss from AI is a significant factor at 26%. **Organizations must proactively invest in reskilling programs to prepare the workforce for new roles that involve collaborating with AI systems.**

## Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

 - **Data Representativeness:** Assumes the dataset reflects global digital media trends, though coverage may skew toward certain countries or industries.
 - **Tool Usage Interpretation:** It is highly likely that the Manufacturing category also includes activities like product design and prototyping, as it is unlikely that tools like Midjourney would cause such high job loss in sectors focused on physical goods production.
 - **Data Completeness:** The analysis assumes that the data for the years 2020 and 2025 is complete for the countries and industries included in the trend calculations.
