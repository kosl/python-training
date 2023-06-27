## Introduction to numpy,scipy,pandas 

See https://ecaslab.cmcc.it and https://github.com/ECAS-Lab/ for more info 
on ECAS data.

Author: Leon Kos and Gregor Simič, University of Ljubljana


### Preparing conda environment on login.galileo.cineca.it

The following packages has to be installed:

 * numpy
 * scipy
 * basemap
 * matplotlib
 * jupyter


### Numpy

NumPy is the fundamental package for scientific computing with Python. It
contains a powerful N-dimensional array object for performing numerical
calculations and basic linear algebra functions. It also provides tools for
integrating C/C++/fortran code.

The ``numpy_examples.ipynb`` contains an overview of numpy array basics.
The ``numpy_mandelbrot.ipynb`` contains a short view of implementing the
Mandelbrot sequence with numpy arrays.
The ``tasMaxMin.ipynb`` contains an example of reading stored daily temperature
in a netCDF4 file format, performing a calculation and visualization the
results.

### SciPy library

The SciPy library is one of the core packages that make up the SciPy stack.
It provides many user-friendly and efficient numerical routines such as
routines for numerical integration, interpolation, optimization, linear algebra
and statistics.

The ``scipy_find_minimum.ipynb`` contains an example of how to find the extrema
of a function.
The ``scipy_fitting_function.ipynb`` contains an example on how to fit a
function over data.

### Pandas

Pandas is a Python Data Analysis Library that provides high-performance,
easy-to-use data structures and data analysis for Python.

The ``pandas_example.ipynb`` contains an example of reading an excel file.
