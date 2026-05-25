#!/bin/sh

echo "prediction run time: $(date +"%Y-%m-%d %H:%M")"
echo "----------------------------------------"
echo "month: $(cat predictor-output.txt | grep Separate | sed -E 's/.*\([0-9]+ ([A-Za-z]+)\).*/\1/' | sed \
  -e 's/Jan/jan/g' \
  -e 's/Feb/febr/g' \
  -e 's/Mar/márc/g' \
  -e 's/Apr/ápr/g' \
  -e 's/May/máj/g' \
  -e 's/Jun/jún/g' \
  -e 's/Jul/júl/g' \
  -e 's/Aug/aug/g' \
  -e 's/Sep/szept/g' \
  -e 's/Oct/okt/g' \
  -e 's/Nov/nov/g' \
  -e 's/Dec/dec/g')"
echo "day: $(cat predictor-output.txt | grep Separate | sed -E 's/.*\(([0-9]+) .*/\1/')"
echo "error: $(cat predictor-output.txt | grep Separate | sed -E 's/.*\+- ([0-9.]+) days.*/\1/')"
