import           Text.Printf

main :: IO ()
main = do t <- readLn :: IO Double
          s <- readLn :: IO Double
          printf "%.3f\n" $ t * s / 12
