# pick-and-grin
A NashFP playground for you to contribute your polyglot FP solutions to 
warehouse "order picking" and "product putaway".

## The setup

The facts:
* We are a product distributor 
* We carry thousands of different products each with it own product-id
* All products weigh the same and are the same size.
* In the warehouses we store the products in named product bins.
* There are small bin that can hold up to 50 items, and large bins that can hold up to 1,000 items.
* Products in a small bin should all be the same (same product-id)
* Products in a large bins can contain multiple products (multiple product-ids)
* We have a two warehouses (W1 and W2). 
* In the warehouse there are multiple rooms (R1, R2, ...)
* In each room there are multiple bays (B01, B02, ...) 
* The bays have one or more shelves (S1, S2, ...)
* Bins are positioned sequentially left-tp-right on shelves.
* A shelf may contain 50 small bins (01 - 50) or 5 large bins (A-E).
* A given shelf will contain either all small bins or all large bins)
* Bin ids are based on their location. For example W1-R1-B4-S1-9 would be in warehouse 1, room 1, bay 04, shelf 1, and position 9. The trailing "9" (a number, not a letter) tells us it's a small bin.
* A given product can exist in multiple small bins and in multiple large bins. 
* Most (but not all) products are in stock.

In our challenges we will all use the warehouse and product data contined in `./data`.
For each customer order we will print a picking ticket for a warehouse worker 
to follow. It will list in optimal order the bin numbers  

## Challenge #1
Given the warehouse data found in `./data` print

## Inputs

## Write your own
Contribute your solution by adding a folder name {your twitter handle}+{your language} such as "bryan_hunter+elixir".

Enjoy!