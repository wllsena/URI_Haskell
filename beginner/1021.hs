import           Text.Printf

mod' :: Double -> Double -> Double
mod' a b = fromIntegral (toInt a `mod` toInt b) / 100
           where toInt n = round (100*n) :: Int

getOutput :: [Double] -> String -> Double -> String
getOutput []       text _  = text
getOutput (nt:nts) text rs =
  getOutput nts (text ++ line) remain
  where line   = printf "%s%.0f %s %.2f\n" title ((rs - remain) / nt) kind nt
        remain = rs `mod'` nt
        title  = case nt of 100 -> "NOTAS:\n"
                            1   -> "MOEDAS:\n"
                            _   -> ""
        kind   = if nt > 1 then "nota(s) de R$" else "moeda(s) de R$"

notes :: [Double]
notes = [100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01]

main :: IO ()
main = do reais <- readLn :: IO Double
          putStr $ getOutput notes "" reais
