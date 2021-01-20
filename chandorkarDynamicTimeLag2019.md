+++
title = "Dynamic Time Lag Regression: Predicting What & When" 
authors = "Chandorkar et al." 
year = 2020 
+++

- _Dynamic Time-Lag Regression (DTLR)_: When a cause signal drives an effect
  signal with an unknown, potentially variable time delay.
  - "cause" in terms of granger-causality
- Some differences from mainstream regression and sequence-to-sequence learning:
  - no ground truth (??)
  - the cause signal contains a lot of information that is not necessarily
    relevant to the effect signal (is this always the case? And why do they say
    this is unique to DTLR?)
- A Bayesian approach is presented to such a problem
- Context of this paper is modelling the dependency between heliospheric
  observations and solar wind speeds.

## Related work

- Many approaches rely on _dynamic time warping (DTW)_ when considering varying
  time lags. These approach rely on simplifying assumptions (how?)
- Sequence-to-sequence learning is also relevant, although central to this
  approach is the segmentation of the source series into disjoint units (e.g.
  sentences, words or other tokens, in the case of NLP)

## Misc Notes

- The authors outline the problem as a pair of _cause_ $x(t)$ and _effect_
  $y(t + \delta t)$ time series where both $y$ and $/delta t$ depend on $x(t)$.
- For the purpose of my research, $\delta t$ does not necessarily depend on
  $x(t)$, but rather some third time series $z(t)$, so I don't know how
  relevant this paper is.
