# README for Data Used in "Analyzing Developer Collaboration on GitHub Before and During COVID-19: Activities, Networks, and Sentiment"

## Overview 
This folder contains the processed and filtered datasets used for analyzing developer collaboration activities on GitHub during the pre-COVID (Feb–Apr 2019) and early-COVID (Feb–Apr 2020) periods. The data was extracted from the GitHub Archive dataset using BigQuery.

***

## Purpose of the Study 
To understand how developer collaboration activity, network structure, and sentiment changed before and during the COVID-19 pandemic using large-scale GitHub data.

***

## Sample Dataset Included
### sample_data.csv
This file contains a small sample of filtered GitHub event data used for testing and prototyping the analysis pipeline.

**Columns include:**
- `id`: Unique event ID
- `type`: Type of GitHub event (e.g., PushEvent, IssuesEvent)
- `created_at`: Timestamp of the event
- `actor`: GitHub username of the actor performing the event
- `repo`: Repository name (`owner/repo`)
- `payload`: JSON payload containing event-specific details

***

## Notes
- All datasets in this folder are in CSV format.
- Full datasets were exported from BigQuery and saved in Parquet format in Google Cloud Storage during the project pipeline.
- This sample is for demonstration and does not represent the full volume of data used in the final analysis.