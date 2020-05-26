import Text.Printf

main :: IO ()
main = do a <- readLn :: IO Double
          b <- readLn :: IO Double
          printf "MEDIA = %.5f\n" $ (a*3.5 + b*7.5) / 11
