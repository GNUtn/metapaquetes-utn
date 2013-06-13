#!/bin/bash
for i in $(ls *); do equivs-build $i; done
