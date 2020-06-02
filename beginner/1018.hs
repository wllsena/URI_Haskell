getOutput :: [Integer] -> String -> Integer -> String
getOutput []       output _  = output
getOutput (nt:nts) output rs =
  getOutput nts output' (rs `rem` nt)
  where output' = output ++ show (rs `div` nt) ++ " nota(s) de R$ " ++ show nt ++ ",00\n"

main :: IO ()
main = do reais <- readLn :: IO Integer
          putStr $ getOutput [100, 50, 20, 10, 5, 2, 1] "" reais
