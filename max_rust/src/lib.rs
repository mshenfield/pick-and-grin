use std::collections::HashMap;

#[derive(Debug)]
pub struct ProductBin {
    warehouse: String,
    room: String,
    bay: String,
    shelf: String,
    bin_id: String,
    bin_size: BinSize,
    product_id: String,
    qty: u64,
}

#[derive(Debug)]
pub enum BinSize {
    Small,
    Large,
}

type Item = (String, u64);

fn order_path() {
  // global database is a vector of ProductBin
  let database: Vec<ProductBin> = Vec::new();

  // order is a sequenc of product id item pairs
  let order: Vec<Item> = Vec::new();

  // Derive a smaller list of orders from a global database
  let eligible_bins: Vec<&ProductBin> = database.iter().filter(
    |p| order.iter().any(
        |o| o.0 == p.product_id
    )
  ).collect();

  // Create every possible permutation
}

// Accepts a vec and a goal state, a mapping of product to quantities
fn path_cost(path: Vec<&ProductBin>, goal: HashMap<String, u64>) {
    // score = 0
    // For each pair (a,b) in path
    // Skip if HashMap.get(a.0) == 0 (but hold on to b?)
    // score += cost(a, b)
    // HashMap.get(a.0) = min(HashMap.get(a.0) - a.1, 0)
}

fn cost(product_a: ProductBin, product_b: ProductBin) {

}

#[cfg(test)]
mod tests {
    use order_path;

    #[test]
    fn it_works() {
        order_path()
    }
}
