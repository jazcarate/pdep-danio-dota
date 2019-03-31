module DanioDotA
    (
        danioSinItem, danioConVanguard, danioConMaskOfMadness, danioConCrimsonGuard
    ) where

danioSinItem ::
    Int -> Int -> Int
danioSinItem cantidad pj =
    pj - cantidad

danioConVanguard ::
     Int -> Int -> Int
danioConVanguard cantidad pj =
    pj - (cantidad `div` 2)

danioConMaskOfMadness ::
    Int -> Int -> Int
danioConMaskOfMadness cantidad pj =
    pj - (cantidad * 2)

-- https://dota2.gamepedia.com/Crimson_Guard
danioConCrimsonGuard :: 
    Bool -> Int -> Int -> Int
danioConCrimsonGuard = undefined