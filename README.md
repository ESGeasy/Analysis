# ESGeasy Analysis
## Table of Contents
<!--ts-->
- [About](#about)
- [The 1 million dollar question](##The-problem)
- [Requirements](#requirements)
- [How to use](#how-to-use)
- [Data Exploration](#data)
- [Technologies](#technologies)
<!--te-->

## About

It is the first analysis of the data available. Here we explore 3 datasets: 
- esg_scores_history_rated.csv
- companies_all.csv
- environmental_data_history_all.csv

## The problem to be solved

We are mainly interested in solving the investor/company matching problem. To do so, we considered 2 approches,
which will be clear later.

## Requirements

First of all, clone the repository
```bash
$ git clone <https://github.com/Hackganization/
```
In order to run the notebook, you must install jupyter notebook, which can be done in this link:
<a href="https://www.anaconda.com/products/individual">https://www.anaconda.com/products/individual</a>

Once the software is downloaded, be sure that you have matplotlib, numpy, pandas, sklearn and statsmodels installed. 

To do so, simply write 
```bash
$conda install package
```
for each of the above libraries.

## How to use

Now that you're have the dependencies, open the notebook writing the command 
```bash
$jupyter notebook 
```
and click above the desired notebook. Now you can click at cell button at the top of the notebook and run
all cells

## Data Exploration

Let's start looking at the companies_all.csv. It contains data related to each company, such as Id, country, region, industry segment and more:
![alt text](https://github.com/Hackganization/Analysis/blob/main/companies.png?raw=true)

Next, let's see the frequencies of each industry segment:
![alt text](https://github.com/Hackganization/Analysis/blob/main/frequencias_bolsa.png?raw=true)

We found that the frequencies of companies at the financial markets are very imbalanced, which could possibly generate a bias if some prediction model were used. The first idea we had was to make a cluster of companies, but we changed to time series forecasting, which reason will become clear later.

Now, we will look at ESG data at esg_scores_history_rated.csv:
![alt text](https://github.com/Hackganization/Analysis/blob/main/esg_dataset.png?raw=true)

It contains data like the company_id, industry_segment, assessment_year, parent_aspect, score_weight and score_value. We will use the parent_aspect in order to aggregate the data to obtain the score for each ESG dimension, but first let's look how these scores are distributed:
![alt text](https://github.com/Hackganization/Analysis/blob/main/boxplot.png?raw=true)

It seems like the distributions are similar, but for environmental dimension the median is significantly lower than the others. It could be an indicative that companies still are not very worried
about environmental issues.

Finally, we are going to build a model to predict the next ESG given the historical data. It can be useful if an investor is looking for a prediction of the ESG performance in the next years. To do so, we used SimpleExpSmoothing model, from the <a href=https://www.statsmodels.org/stable/tsa.html>statsmodel library</a>. It is a quite simple and fast model, so it is easy scalable for huge datasets. For more about the theory, see: <a href=https://otexts.com/fpp2>Time series forecasting: principles and practices</a>. Once that these future ESG values are predicted, including the global score, it is used to provide a ranking of the companies to the potential investor, given his(her) preferences. The final step is aggregate both ESG predicted scores and company details to serve for the application, resulting in the following Amostra_das_empresas.csv dataset:
![alt text](https://github.com/Hackganization/Analysis/blob/main/esg_scores.png?raw=true) 

## Technologies

- Python
- Docker
- Pandas
- Flask