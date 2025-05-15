# Global Analysis of AI's Influence on Digital Media Industries (2020-2025)

## Project Background and Overview

The rapid evolution of artificial intelligence (AI) is transforming the digital media landscape, affecting content creation, workforce dynamics, and economic outcomes across industries and countries. This project uses the [Impact of AI on Digital Media (2020-2025)](https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025) dataset to deliver actionable insights into AI adoption rates, job losses due to automation, AI-generated content volume, and human-AI collaboration trends. These key performance indicators (KPIs) are investigated to support stakeholders, business leaders, policymakers, and researchers in making informed decisions. Insights will guide marketing and product teams in resource allocation, assist operations managers in workforce planning, and inform policymakers about regulatory impacts, ultimately shaping the future of the digital media ecosystem.

## Project Goals

- **Measure AI Integration**: Calculate global and country-specific AI adoption rates (%) to better understand the extent of AI involvement and identify leaders in digital media innovation.
- **Evaluate Workforce Impact**: Identify industries with the highest job loss due to AI (%) to assess automation’s effect on employment and support workforce retraining strategies.
- **Track Content Creation Trends**: Analyze AI-generated content volume (TBs per year) from 2020 to 2025 to see AI’s role in scaling content production across industries.
- **Assess Regulatory Effects**: Examine how regulation status (Strict, Moderate, Lenient) influences human-AI collaboration rates (%) to inform policy development.
- **Link AI to Economic Outcomes**: Match up AI adoption rates with revenue increases (%) to demonstrate the financial benefits of AI investment for business strategy.

## Dataset

- **Source**: Kaggle
- **Columns**:
  - Country, Year, Industry
  - AI Adoption Rate (%), AI-Generated Content Volume (TBs per year)
  - Job Loss Due to AI (%), Regulation Status
  - Human-AI Collaboration Rate (%), Top AI Tools Used
  - Revenue Increase Due to AI (%)
- **Link**: [Dataset](https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025)

## Data Snapshot

<img width="876" alt="Screenshot 2025-05-15 at 15 30 06" src="https://github.com/user-attachments/assets/6ed73c36-1c31-43a1-8e44-64724d65e47e" />

<img width="1083" alt="Screenshot 2025-05-15 at 13 48 54" src="https://github.com/user-attachments/assets/16b67713-609d-4bd2-a4e7-4798cbf2ebee" />

## Files

- `AI_Impact_Analysis.sql`: Contains 13 SQL queries addressing critical business and policy questions.

## Key Queries

1. **Average AI Adoption Rate**: Computes the global baseline for AI integration.
2. **Highest Adoption in 2025**: Pinpoints the top AI-adopting country in the final year.
3. **Content Volume by Industry**: Aggregates AI-generated content by industry.
4. **Top Adoption per Country**: Identifies each country’s leading AI-adopting industry.
5. **Job Loss by Regulation**: Averages job loss under different regulatory frameworks.
6. **Adoption vs Revenue**: Categorizes adoption levels and links them to revenue gains.
7. **Adoption Trends**: Measures changes in AI adoption between 2020 and 2025.

## Executive Summary

From 2020 to 2025, AI adoption in digital media rose steadily, reaching a global average of 54.26%. Canada led in 2025 with a 94.76% adoption rate, reflecting aggressive AI integration. The gaming industry dominated AI-generated content production, averaging 1200 TBs per year by 2025, while manufacturing suffered the highest job losses (exact percentage varies by query, e.g., tied to Midjourney usage). Countries with lenient regulations showed a 51% human-AI collaboration rate, slightly below the 56% in strictly regulated nations, suggesting regulatory nuance impacts collaboration. Revenue increases averaged higher in the "High" adoption group (66-100%), at approximately 15% (derived from Query 6 trends), underscoring AI’s economic value.

## Insights Deep Dive

- **Global AI Adoption Baseline**: The global average AI adoption rate across all records was 54.26% (Query 1), providing a benchmark for evaluating regional and sectoral performance.
- **Canada’s Leadership in AI Integration**: By 2025, Canada achieved the highest AI adoption rate at 94.76% (Query 2), demonstrating a strong national commitment to AI-driven innovation in digital media.
- **Gaming Industry Surge**: The gaming sector led in AI-generated content, producing an impressive 1200 TBs per year (Query 3). This volume grew significantly, with an increase of approximately 800 TBs per year between 2020 and 2025 (Query 11), reflecting heavy reliance on tools like generative AI for game assets and media production.
- **Manufacturing Job Losses**: Manufacturing experienced the highest job losses due to AI, with an average loss rate potentially exceeding 20% (Query 8 context). This was often linked to automation tools like Midjourney, highlighting a critical area for workforce intervention and reskilling.
- **Regulatory Impact on Collaboration**: Countries with lenient regulations had a human-AI collaboration rate of 51%, compared to 56% in strictly regulated nations (Query 9). This suggests that stricter regulatory frameworks may provide greater human-AI collaboration, a nuance policymakers should consider.
- **Adoption-Revenue Link**: Countries with adoption rates above the 2024 global average of 51.26% (Query 7) consistently showed revenue increases. Specifically, the "High" adoption group (66-100%) averaged a 15% revenue growth (Query 6), reinforcing AI’s economic benefits.

## Recommendations

- **To Business Leaders**: Given gaming’s 800 TBs/year content growth, invest in AI tools and training for creative teams to capitalize on this trend over the next 3-5 years.
- **To Operations Managers**: With manufacturing’s high job loss (e.g., &gt;20%), allocate resources for reskilling programs targeting automation-affected workers in 2026 budgets.
- **To Policymakers**: Since strict regulations correlate with a 56% collaboration rate vs. 51% in lenient settings (Query 9), consider balanced policies that encourage collaboration without hurting innovation.

## Caveats and Assumptions

- **Data Representativeness**: Assumes the dataset reflects global digital media trends, though coverage may skew toward certain countries/industries.
- **Cleaning Assumptions**: Missing adoption rates were concluded with industry averages, potentially smoothing outliers.
- **Tool Usage**: It is highly likely that the Manufacturing category also includes activities like product design and prototyping, as it is unlikely that tools like Midjourney would cause such high job loss in sectors focused on physical goods production.

## How to Run

1. Download the dataset from Kaggle.
2. Import it into a MySQL database.
3. Execute `AI_Impact_Analysis.sql` in a SQL editor.

## Skills Demonstrated

- **SQL**: Used aggregations (AVG, SUM), subqueries, joins, window functions (RANK), and CASE statements for categorization.
- **Analysis**: Performed trend analysis, grouping, filtering, and correlation to uncover actionable insights.
- **Problem-Solving**: Addressed AI’s social, economic, and regulatory implications.

## Contact Me

- **Name**: Viktor Kukhar
- **LinkedIn**: linkedin.com/in/kukhar-viktor/
- **Email**: viktor.kukhar1708@gmail.com

---

**Last Updated**: May 2025

![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Data Analysis](https://img.shields.io/badge/Analysis-Insights-green)
