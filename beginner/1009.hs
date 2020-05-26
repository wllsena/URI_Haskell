import Text.Printf

main :: IO ()
main = do _ <- getLine :: IO String
          s <- readLn :: IO Double
          t <- readLn :: IO Double
          printf "TOTAL = R$ %.2f\n" $ s + 0.15 * t
