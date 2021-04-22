+++
title = "Long Short-Term Memory"
authors = "Hochreiter and Schmidhuber"
year = 1997
+++

The Long Short-Term Memory (LSTM) is a gradient-based method for efficiently
addressing the issue of vanishing and or exploding gradients that can arise when
training models to store information over extended time intervals.

This is achieved by enforcing a constant error flow via the novel architecture
of its recurrent units and particular backpropagation considerations. Because
the units are recurrent, LSTMs fall under the class of Recurrent Neural Networks
(RNNs).

## CEC

Central to LSTMs is the concept of constant error carousels (CEC). The CEC
emerges from asking the question "How can we enforce constant error flow through
an arbitrary recurrent unit?". A solution to this question is necessary since
the authors show that global gradient vanishing/explosion is tied to local
effects at the unit level.

The authors show that this can be enforced by rendering a unit's activation
function $f_j(x)$ linear such that the unit's activation remains constant.

This is achieved by setting/using

- $f_j(x) = x \forall x$
- $w_jj = 1.0$

where $w_jj$ is the weight of the unit's recurrent connection.

These two considerations form what is defined to be a unit's constant error
carousel.

On it's own, the CEC does not work well because of output and input weight
conflicts. These are especially pronounced when dealing with long-time-lags.

## Memory Cells

To deal with the conflicting input/output weights issue, the LSTM extends the
naive CEC mentioned above with additional features, forming what is known as a
_memory cell_. In particular the CEC is augmented with

- a multiplicative input gate to protect the unit's memory contents from
  irrelevant current inputs
- a multiplicative output gate to protect other units from currently irrelevant
  memory stored in the unit.

These gates can open or close access to the CEC. The gates are units of their
own, and as such their functions are learnable. The input unit will have to
learn when to release errors, the output unit will have to learn when to trap
errors.

### Memory Cell Blocks

Memory cells can be 'stacked' into blocks sharing single input and output gates.
These stacks are referred to as Memory Cell Blocks of length $S$, for $S$ memory
cells.

Often these blocks can facilitate information storage due to higher efficiency.

## Internal State Drift

The vanishing gradient is not completely resolved with memory cells. If a memory
cell's input are mostly negative or mostly positive, its internal state will
tend to drift away, causing the derivative of memory cell scaling function to
become increasingly small, finally causing the gradient to vanish.

The simple solutions the authors propose is to initially bias the input gate
toward zero. This requires no fine-tuning given the presence of logistic sigmoid
activation functions.
