defmodule Bin do
  defstruct warehouse: nil,
            room: nil,
            bin: nil,
            shelf: nil,
            position: nil,
            size: nil

  def from_data(bin_str) do
    ~r/W(\w+)-R(\w+)-B(\w+)-S(\w+)-(\w+)-(\w+)/
    |> Regex.scan(bin_str)
    |> List.first
    |> (fn ([_ | tail]) -> tail end).()
    |> (fn ([w, r, b, s, p, size]) -> %__MODULE__{
      warehouse: w,
      room: r,
      bin: b,
      shelf: s,
      position: p,
      size: size,
    } end).()
  end
end

defmodule Product do
  defstruct id: nil
end
