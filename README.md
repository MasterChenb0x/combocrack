###################
# Master Combo Lock Cracker
# by MasterChen (@chenb0x)
###################

This script takes the last number of the combination in a Master Combination Lock and displays all possible combinations.
With Master Combination Locks, ther are 64,000 possibilities without this algorithm (40x40x40). This script bring the 
possibilities down to 80, reducing the time needed to crack the lock to ~30 minutes.


# 2016-11-05
============
Finally eliminated two more possibilities from the second number array, bringing the possibilities down to 80 instead of 100.

# Things to do (2015-09-13)
===========================
1. ~~Fix output of combinations~~
2. ~~Provide information on finding the last number~~
3. Elimiate two possibilities in the second number of the combination (numbers are selected. Will remove from array later)
4. Add error handling
