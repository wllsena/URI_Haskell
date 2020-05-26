import Text.Printf

maiorAB :: Int -> Int -> Int
maiorAB a b = (a + b + abs (a - b)) `div` 2

main :: IO ()
main = do vs <- getLine :: IO String
          let [a, b, c] = map (read :: String -> Int) $ words vs
          printf "%d eh o maior\n" $ maiorAB a $ maiorAB b c
