#!/bin/bash
pdftk Morris_Resume_and_Cover_Letter.pdf cat 1-2 output Morris_Resume.pdf
pdftk Morris_Resume_and_Cover_Letter.pdf cat 3 output Morris_Cover_Letter.pdf
