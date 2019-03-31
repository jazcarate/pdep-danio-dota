module Solucion.DanioDotA
    (
        danioSinItem, danioConVanguard, danioConMaskOfMadness, danioConCrimsonGuard
    ) where

danioSinItem = danio nada
danioConVanguard = danio vanguard'
danioConMaskOfMadness = danio maskOfMadness

danioConCrimsonGuard = danio . crimsonGuard

danio :: (Int -> Int) -> Int -> Int -> Int
danio item cantidad pj = pj - item cantidad

nada :: Int -> Int
nada = id

vanguard :: Int -> Int
vanguard danio = danio `div` 2
vanguard' = flip div 2

maskOfMadness = (*) 2

crimsonGuard :: Bool -> Int -> Int
crimsonGuard True = crimsonGuardActivo
crimsonGuard False = crimsonGuardInactivo

crimsonGuardActivo danio = danio - 1
crimsonGuardInactivo = nada