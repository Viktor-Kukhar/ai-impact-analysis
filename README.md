# AI Impact Analysis

## Overview
This project analyzes the [Impact of AI on Digital Media (2020-2025)](https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025) dataset to explore AI adoption, job loss, content volume, and human-AI collaboration across industries and countries.

## Objectives
- Calculate global and country-specific AI adoption rates.
- Identify industries with the highest job loss due to AI.
- Analyze AI-generated content volume trends from 2020 to 2025.
- Examine the impact of regulation status on human-AI collaboration.
- Correlate AI adoption with revenue increases.

## Dataset
- **Source**: Kaggle
- **Columns**:
  - Country, Year, Industry
  - AI Adoption Rate (%), AI-Generated Content Volume (TBs per year)
  - Job Loss Due to AI (%), Regulation Status
  - Human-AI Collaboration Rate (%), Top AI Tools Used
  - Revenue Increase Due to AI (%)
- **Link**: [Dataset](https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025)

## Files
- `AI_Impact_Analysis.sql`: 13 SQL queries addressing key analytical questions.

## Key Queries
1. **Average AI Adoption Rate**: Calculated the global average AI adoption rate.
2. **Highest Adoption in 2025**: Identified the country with the highest AI adoption rate in 2025.
3. **Content Volume by Industry**: Summed AI-generated content volume by industry.
4. **Job Loss and Tools**: Found the industry with the highest job loss and its top AI tool.
5. **Collaboration by Regulation**: Compared human-AI collaboration rates under strict vs lenient regulations.
6. **Adoption Trends**: Analyzed AI adoption changes from 2020 to 2025.

## Sample Insights
- Global average AI adoption rate: 54.26% (Query 1).
- Canada had the highest AI adoption in 2025: 94.76% (Query 2).
- Gaming produced the most AI content: 1200 TBs/year (Query 3).
- Manufacturing had the highest job loss, using Midjourney (Query 8).
- Lenient regulation countries: 51% collaboration rate vs 56% for strict (Query 9).

## How to Run
1. Download the dataset from [Kaggle](https://www.kaggle.com/datasets/atharvasoundankar/impact-of-ai-on-digital-media-2020-2025).
2. Import it into a SQL database.
3. Run `AI_Impact_Analysis.sql` in a SQL editor.

## Skills Demonstrated
- **SQL**: Aggregations, subqueries, joins, window functions, CASE statements.
- **Analysis**: Trend analysis, grouping, filtering, correlation.
- **Problem-Solving**: Addressing AI’s social and economic impact.

## Contact Me
- **Name**: Viktor Kukhar
- **LinkedIn**: https://www.linkedin.com/in/kukhar-viktor/
- **Email**: viktor.kukhar1708@gmail.com

---
Last Updated: May 2025

![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Data Analysis](https://img.shields.io/badge/Analysis-Insights-green)
