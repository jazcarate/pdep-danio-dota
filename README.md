# Daños en DotA

danioSinItem :: Int -> Int -> Int
danioSinItem cantidad pj = pj - cantidad

-- https://dota2.gamepedia.com/Vanguard
danioConVanguard :: Int -> Int -> Int
danioConVanguard cantidad pj = pj - (cantidad `div` 2)

-- https://dota2.gamepedia.com/Mask_of_Madness
danioConMoM :: Int -> Int -> Int
danioConMoM cantidad pj = pj - (cantidad * 2)

-- https://dota2.gamepedia.com/Crimson_Guard
danioConCrimsonGuard :: Bool -> Int -> Int -> Int
danioConCrimsonGuard True cantidad pj = pj - (cantidad - 1)
danioConCrimsonGuard False cantidad pj = danioSinItem cantidad pj