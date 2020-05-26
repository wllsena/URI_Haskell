import Text.Printf

total :: [String] -> Double
total w = let n = read (w !! 1) :: Double
              p = read (w !! 2) :: Double
          in n * p

main :: IO ()
main = do vs1 <- getLine :: IO String
          vs2 <- getLine :: IO String
          let t1 = total $ words vs1
          let t2 = total $ words vs2
          printf "VALOR A PAGAR: R$ %.2f\n" $ t1 + t2
