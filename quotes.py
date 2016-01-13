#!/usr/bin/env python

import pandas as pd

df = pd.read_csv("quotes.csv")

df['Response'] = df['Quotes'] / df['Views'] * 100

print(df['Quotes'] / df['Views'].max() * 100)
