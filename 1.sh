#! /bin/bash

awk 'length' ./quotes.txt ; 


awk 'NF' quotes.txt | awk '!seen[$0]++'
