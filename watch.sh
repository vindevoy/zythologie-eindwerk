#!/bin/bash

while true
do
    find ./source | entr -d make clean html
done

