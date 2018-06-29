module WordNumber where


import Data.List (intersperse, intercalate)
import Data.Char (ord, chr)


wordNumber :: Int -> String
wordNumber n = intercalate "--" $ map digitToWord $ digits n

digits :: Int -> [Int]
digits n = map charToInt $ show n

charToInt :: Char -> Int
charToInt n = case n of '0' -> 0
                        '1' -> 1
                        '2' -> 2
                        '3' -> 3
                        '4' -> 4
                        '5' -> 5
                        '6' -> 6
                        '7' -> 7
                        '8' -> 8
                        '9' -> 9
                        _   -> 99999
  
digitToWord :: Int -> String
digitToWord n = case n of 0 -> "zero"
                          1 -> "one"
                          2 -> "two"
                          3 -> "three"
                          4 -> "four"
                          5 -> "five"
                          6 -> "six"
                          7 -> "seven"
                          8 -> "eight"
                          9 -> "nine"
                          _ -> "error"
                            

 
