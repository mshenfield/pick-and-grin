defmodule DataGen do

    def make_products do
        products = 
            for p <- 20000..21000,
                do: "P#{p}\n"
        File.write("products.tsv", products)
    end

    def make_bins do
        bins = 
            for w <- [1,2],
                r <- [1,2,3],
                b <- 1..5,
                s <- 1..4,
                do: get_bin(w,r,b,s)

        File.write("bins.tsv", bins)
    end

    defp get_bin(w,r,b,s) when w ==1 and s == 1 do
        positions = 1..25
        for p <- positions, do: "W#{w}-R#{r}-B#{b}-S#{ String.pad_leading("#{s}", 2, "0")}-#{p}-S\n"
    end
    defp get_bin(w,r,b,s) do
        positions = ["A", "B", "C", "D", "E"]
        for p <- positions, do: "W#{w}-R#{r}-B#{b}-S#{ String.pad_leading("#{s}", 2, "0")}-#{p}-L\n"
    end

    def make_product_bins() do
        products = File.read!("products.tsv") |> String.split("\n")
        bins = File.read!("bins.tsv") |> String.split("\n")

        sb = bins 
            |> Stream.filter(&(String.ends_with?(&1, "-S" )))
        p1 = products 
            |> Enum.shuffle() 
            |> Enum.take(900)
        
        smalls =
            Enum.zip(sb, p1)
            |> Enum.map(fn {b, p} -> "#{b}\t#{p}\t#{ :rand.uniform(50) }" end)
        
        lb = bins 
            |> Enum.filter(&(String.ends_with?(&1, "-L" )))
        p2 = products 
            |> Enum.shuffle() 
            |> Enum.take(500)
        p3 = products 
            |> Enum.shuffle() 
            |> Enum.take(500)

        large1 =
            Enum.zip(lb, p2)
            |> Enum.map(fn {b, p} -> "#{b}\t#{p}\t#{ :rand.uniform(500) }" end)
    
        pb = Enum.concat([smalls, large1])
            |> Enum.sort()
            |> Enum.join("\n")

        File.write("product-bins.tsv", pb)
    end
end

# DataGen.make_bins()
# DataGen.make_products()
# DataGen.make_product_bins()
