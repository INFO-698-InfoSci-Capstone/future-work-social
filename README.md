# Analyzing Developer Collaboration on GitHub Before and During COVID-19: Activities, Networks, and Sentiment

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)


## Overview
This project analyzes how developer collaboration behavior evolved on GitHub during the early stages of the COVID-19 pandemic by comparing data from February to April in 2019 (pre-COVID) and 2020 (early-COVID). Using GitHub Archive data accessed via BigQuery and processed in Python with Dask and NetworkX, we examined:

- Trends in collaboration-related GitHub events (e.g., PushEvent, PullRequestEvent)
- Weekly developer network structures and graph metrics (e.g., average degree, density)
- Sentiment shifts in commit messages and comments using VADER sentiment analysis
- Behavioral trends of developers active in both years (common developer subset)

The final report, analysis notebooks, SQL scripts, and derived metrics are included in this repository.

## File Organization

    analysis/
    |
    ├── analysis/
    |    ├── Analysis_Tables/    # event counts, percent changes, network metrics and sentiment scores (2019 vs 2020)
    |
    ├── src/
    |   ├── data_download_and_loading.ipynb     # loading github archive data from GCP
    |   ├── collaboration_trends.ipynb          # weekly event types and active devloper counts analysis and visualizations
    |   ├── network_analysis.ipynb              # network graph construction, metrics calculation, analysis and visualization
    |   ├── sentiment_analysis.ipynb            # github commits and comments text extraction and sentiment score calculation
    |   ├── common_devs.ipynb                   # Identify and analyze developers active in both years (2019 and 2020)
    |   └── sql_scripts/
    |       ├── extract_feb_to_apr_2019.sql     # SQL script to extract February to April 2019 data
    |       ├── extract_feb_to_apr_2020.sql     # SQL script to extract February to April 2020 data
    |       ├── extract_common_devs_data.sql    # SQL script to extract February to April data on developers active in both 2019 and 2020
    |       ├── export_feb_to_apr_2019.sql      # exporting the 2019 data from table to GCP bucket as Parquet files
    |       ├── export_feb_to_apr_2020.sql      # exporting the 2020 data from table to GCP bucket as Parquet files
    |       └── export_common_devs_data.sql     # exporting the common developers data from table to GCP bucket as Parquet files
    |
    ├── Report.pdf  # Final project report 
    |
    └── README.md   # Project summary and structure

## Tools and Technologies Used

- Google BigQuery & SQL (for data extraction from GitHub Archive)
- Python (Dask, Pandas, NetworkX, Matplotlib, NLTK/VADER)
- Google Colab (for notebook execution)
- GitHub Archive Dataset
- Jetstream2 (for computational resources and volumes)

## Key Findings

- Developer activity remained strong in 2020 but showed higher week-to-week volatility.
- Network structure in 2020 was more fragmented, with lower average degree and density, suggesting fewer connections and smaller developer groups. In contrast, 2019 showed broader collaboration and more large scale groupings.
- Sentiment analysis using VADER did not reveal strong emotional changes, suggesting limitations in analyzing technical text.
- Analysis on common developers confirmed the trends observed in the full dataset.

## Author

**Jothish Kumar Polaki**

MS Data Science | University of Arizona 