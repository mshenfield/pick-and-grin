module Main where

import Lib

main :: IO ()
main = do
    contents <- readFile "../data/product-bins.tsv"
    let m = parseFile contents
    putStrLn $ show m
