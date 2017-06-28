# pick-and-grin
A NashFP playground for you to contribute your polyglot FP solutions to
warehouse "order picking" and "product putaway".

## The setup

The facts:
* We carry thousands of different products each with it own product-id
* small bins - 50 items
* small bins - homogenous
* small bins - 25 per shelf
* small bin type - labeled with a "S"
* large bins - 1,000 items.
* large bins - heterogenous
* large bins - 5 per shelf
* large bin type - labeled with an "L"
* We have a two warehouses (W1 and W2).
* Wx-Rx-Bx-Sx
* bins are left to right on each shelf
* each shelf contains one type of bin
* Most (but not all) products are in stock.

In our challenges we will all use the warehouse and product data contined in `./data`.
For each customer order we will print a picking ticket for a warehouse worker
to follow. It will list in optimal order the bin numbers

## Difficulties
seconds

```
600 - base cost for picking
1800 - multiple warehouses
60 - move from a room to another room
300 - picking from shelf 3 (tow motor)
600 - picking from shelf 4 (tow motor and closes bay with cones)
30 - moving to each small bin
120 - moving to each large bin
```

## Challenge #1
Given the warehouse data found in `./data` print a picking ticket for this order:

```
P20573, 5
P20741, 25
P20284, 100
P20742, 5
```

```bash
W1-R1-B1-S01-1-S	P20573	16 # 600 + 60 + 30 = 690

# W1-R1-B1-S01-13-S	P20284	25
W1-R3-B4-S02-C-L	P20284	496 # 60 + 120 = 180

# W1-R1-B1-S01-12-S	P20741	19

W2-R1-B4-S02-B-L	P20741	286 # 1800 + 60 + 120 = 1980
W2-R3-B3-S04-A-L	P20742	383 # 60 + 600 + 120 = 780

# 3,630
```

The picking ticket will list the bin, the product, the quantity to pick, product quantity remaing for the bin. At the footer show cummulative picking time.


## Write your own
Contribute your solution by adding a folder name {your twitter handle}+{your language} such as "bryan_hunter+elixir".

Enjoy!
