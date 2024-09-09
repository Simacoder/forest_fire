# Forest fire data analysis in R

## Table of Contents
1. Overview
2. Project Structure
3. Installation
4. Usage
5. Dataset
6. Analysis Pipeline
7. Results
8. Contributing 
9. License
10. Acknowledgements

# Overview 
In this beginner-level data analysis project in R, you'll analyze a dataset on forest fires in Portugal to uncover patterns in fire occurrence and severity. Using R and powerful data visualization techniques, you'll explore factors such as temperature, humidity, and wind speed to understand their relationship with fire spread. You'll create engaging visualizations, including bar charts, box plots, and scatter plots, to reveal trends over time and across different variables. By completing this project, you'll gain valuable insights into the ecological impact of forest fires while strengthening your skills in data manipulation, exploratory data analysis, and creating meaningful visualizations using R and ggplot2.

# Project Structure
```bash
Project/
│
├── data/                # Raw and processed datasets
├── R/                   # R scripts for data analysis, modeling, and visualization
├── output/              # Generated reports, figures, or results
├── notebooks/           # Jupyter or RMarkdown notebooks with experiments
├── models/              # Saved machine learning models
├── README.md            # Project documentation
└── requirements.txt     # Dependencies and libraries

```
# Installation
Prerequisites
- R version 4.4. or Higher
- RStudio (optional but recommended)
- Required R packages listed in requirements.txt or install directly

```bash
install.packages(c("ggplot2", "dplyr", "tidyverse", "caret", "randomForest"))


```

# Clone the repository
```bash
git clone https://github.com/Simacoder/forest_fire.git
cd forest_fire
```

# Dataset
If the dataset is not included in the repository, download it from [Data](https://archive.ics.uci.edu/static/public/162/forest+fires.zip) and place it in the /data folder.

# Usage
```bash
Rscript R/main_script.R
```

# Analysis Pipeline
- Data Cleaning: Steps to handle missing data, outliers, and data normalization.
- Exploratory Data Analysis (EDA): Visualizations and summary statistics.
- Feature Engineering: New features or transformations performed.
- Modeling: Algorithms used for predictions, hyperparameter tuning, and cross-validation.
- Evaluation: Metrics used to assess model performance (e.g., accuracy, RMSE).
- Visualization: Graphs, plots, and tables summarizing the results.


 # Results
> [!IMPORTANT] 
> Type of random forest: regression
> Number of trees: 500
> No. of variables tried at each split: 4
> Mean of squared residuals: 2377.655
> % Var explained: -13.88
> RMSE of the Random Forest model:  110.7208


# Contributing
If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes.
4. Commit your changes (git commit -m "Add some feature").
5. Push to the branch (git push origin feature-branch).
6. Create a pull request.

# License
This project is licensed under the [MIT icense](https://opensource.org/license/mit). for more details.

# Acknowledgements
- ggplot2
- ALX for inspiration
- [Data source](https://archive.ics.uci.edu/dataset/162/forest+fires) for providing data

# AUTHORS
- Simanga Mchunu
- Kagiso Leboka
