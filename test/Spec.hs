import Test.Hspec
import DanioDotA

-- Fuentes de daño
creep = 19
torre = 150

-- Personajes (pj)
bane = 660
batrider = 760

-- Traducciones
deberiaSer = shouldBe

main :: IO ()
main = hspec $ do
    context "Cuando un creep le pega a un Bane" $ do
        describe "items simples" $ do
            it "Sin items, Bane recibe todo el daño" $
                danioSinItem creep bane `deberiaSer` 641
            it "Con Vanguard, el item absorbe la mitad del daño" $
                danioConVanguard creep bane `deberiaSer` 651
            it "Con Mask of Madness, se aumenta el daño al doble" $
                danioConMaskOfMadness creep bane `deberiaSer` 622
        
        describe "items activable" $ do
            it "Bane recibe todo el daño cuando el Crimson Guard está inactivo" $
                danioConCrimsonGuard False creep bane `deberiaSer` 641
            it "Bane recibe el daño reducido en 1 cuando el Crimson Guard está activo" $
                danioConCrimsonGuard True creep bane `deberiaSer` 642

    context "Cuando una torre le pega a un Batrider" $ do
        describe "items simples" $ do
            it "Sin items, Batrider recibe todo el daño" $
                danioSinItem torre batrider `deberiaSer` 610
            it "Con Vanguard, el item absorbe la mitad del daño" $
                danioConVanguard torre batrider `deberiaSer` 685
            it "Con Mask of Madness, se aumenta el daño al doble" $
                danioConMaskOfMadness torre batrider `deberiaSer` 460
        
        describe "items activable" $ do
            it "Batrider recibe todo el daño cuando el Crimson Guard está inactivo" $
                danioConCrimsonGuard False torre batrider `deberiaSer` 610
            it "Batrider recibe el daño reducido en 1 cuando el Crimson Guard está activo" $
                danioConCrimsonGuard True torre batrider `deberiaSer` 611