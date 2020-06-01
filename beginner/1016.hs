import           Text.Printf

main :: IO ()
main = do n <- readLn :: IO Int
          printf "%d minutos\n" $ n * 2
