import           Text.Printf

main :: IO ()
main = do n <- readLn :: IO Int
          let a = n `div` 365
          let m = (n `rem` 365) `div` 30
          let d = n - a * 365 - m * 30
          printf "%d ano(s)\n%d mes(es)\n%d dia(s)\n" a m d
