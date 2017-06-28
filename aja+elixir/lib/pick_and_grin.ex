defmodule PickAndGrin do
  @product_bins_filename "../data/product-bins.tsv"

  def load_data do
    @product_bins_filename
    |> File.stream!
    |> CSV.decode(separator: ?\t)
    |> Enum.to_list
    |> IO.inspect
  end
end
