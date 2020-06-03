import           Text.Printf

getOutput :: [Integer] -> String -> Integer -> String
getOutput []       text _  = text
getOutput (nt:nts) text rs =
  getOutput nts (text ++ line) (rs `rem` nt)
  where line = printf "%d nota(s) de R$ %d,00\n" (rs `div` nt) nt

main :: IO ()
main = do reais <- readLn :: IO Integer
          putStr $ show reais ++ getOutput [100, 50, 20, 10, 5, 2, 1] "\n" reais
