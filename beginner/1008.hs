import Text.Printf

main :: IO ()
main = do n <- readLn :: IO Int
          h <- readLn :: IO Double
          a <- readLn :: IO Double
          printf "NUMBER = %d\n" n
          printf "SALARY = U$ %.2f\n" $ h * a
