#!/usr/bin/env python
# coding: utf-8

# In[1]:


import altair as alt
import altair_saver
import pandas as pd
data = pd.read_csv("neg_anscombes.csv")
for i in range(1, 5):
    c = (alt.Chart(data).mark_point()
    .encode(
        x=alt.X(f"x_{i}", scale=alt.Scale(zero=False)),
        y=alt.Y(f"y_{i}", scale=alt.Scale(zero=False))
    ))
    fit = c.transform_regression(
        f"y_{i}", f"x_{i}"
    ).mark_line()
    o = fit + c
    o.show()
    altair_saver.save(o, f"../images/anscombes_{i}.png")

