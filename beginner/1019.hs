import           Text.Printf

main :: IO ()
main = do n <- readLn :: IO Int
          let h = n `div` 3600
          let m = (n `rem` 3600) `div` 60
          let s = n `rem` 60
          printf "%d:%d:%d\n" h m s
