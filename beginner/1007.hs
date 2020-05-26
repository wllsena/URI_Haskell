import Text.Printf

main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          c <- readLn :: IO Int
          d <- readLn :: IO Int
          printf "DIFERENCA = %d\n" $ a*b - c*d
