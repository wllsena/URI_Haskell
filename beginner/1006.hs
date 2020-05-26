import Text.Printf

main :: IO ()
main = do a <- readLn :: IO Double
          b <- readLn :: IO Double
          c <- readLn :: IO Double
          printf "MEDIA = %.1f\n" $ a*0.2 + b*0.3 + c*0.5
