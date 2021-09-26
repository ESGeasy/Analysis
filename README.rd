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
$conda install <em>package</em>
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

Let's start looking at the companies_all.csv. It contains data related to each company, such as Id, country,
region, industry segment and more.
![alt text](https://github.com/Hackganization/Analysis/blob/main/companies.png?raw=true)
Next, let's see the frequencies of each industry segment:
![alt text](https://github.com/Hackganization/Analysis/blob/main/frequencias_bolsa.png?raw=true)

We found that the frequencies of companies at the financial markets are very imbalanced, which could possibly
generate a bias if some prediction model were used. The first idea we had was to make a cluster of companies, but
we changed to time series forecasting, which reason will become clear later.

![alt text](https://github.com/Hackganization/Analysis/blob/main/esg_dataset.png?raw=true)



## Technologies

- Python
- Docker
- Pandas
- Flask