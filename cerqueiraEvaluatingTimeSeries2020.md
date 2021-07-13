+++
title = "Evaluating time series forecasting models: An empirical study on performance estimation methods"
authors = "Cerqueira et al."
year = 2020
+++

The authors experiment with a variety of machine learning model evaluation
methods on a large gamut of time series datasets.

In particular, the authors are concerned with determining which evaluation
method best predicts the model's error on unseen data.

They achieve this with Absolute Predictive Accuracy Error (APAE) and Predictive
Accuracy Error (PAE) which respectively measure a method's error size and error
bias, i.e. whether the method is overestimating or underestimating the true
error.

The authors find that while standard cross-validation (CV) methods work well
with stationary time series (in particular synthetic ones), out-of-sample (OOS)
methods such as repeated holdout work better for non-stationary (and generally
real world) time-series data.

Because of the complex and ever-evolving nature of real world data, the authors
conclude that is perhaps best and safest to use repeated holdout for evaluating
time series models, as this evaluation method performs decently well even for
stationary time series.
