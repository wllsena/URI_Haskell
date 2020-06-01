import           Text.Printf

main :: IO ()
main = do x <- readLn :: IO Double
          y <- readLn :: IO Double
          printf "%.3f km/l\n" $ x / y
