import Text.Printf

main :: IO ()
main = do vs <- getLine :: IO String
          let [a, b, c] = map (read :: String -> Double) $ words vs
          printf "TRIANGULO: %.3f\n" $ a * c / 2
          printf "CIRCULO: %.3f\n" $ 3.14159 * c ** 2
          printf "TRAPEZIO: %.3f\n" $ (a + b) * c / 2
          printf "QUADRADO: %.3f\n" $ b ** 2
          printf "RETANGULO: %.3f\n" $ a * b
