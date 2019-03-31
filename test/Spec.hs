import Test.Hspec
import DanioDotA

danioTorre = 10
meepo = 100

main :: IO ()
main = hspec $
    context "Cuando una torre le pega a un Meepo" $ do
    describe "items simples" $ do
        it "Sin items, el Meepo recibe todo el daño" $
            danioSinItem danioTorre meepo `shouldBe` 90
        it "Con Vanguard, el item absorbe la mitad del daño" $
            danioConVanguard danioTorre meepo `shouldBe` 95
        it "Con Mask of Madness, se aumenta el daño al doble" $
            danioConMoM danioTorre meepo `shouldBe` 80
    
    describe "items activables" $ do
        it "el Meepo recibe todo el daño cuando el Crimson Guard está inactivo" $
            danioConCrimsonGuard False danioTorre meepo `shouldBe` 90
        it "el Meepo recibe el daño reducido en 1 cuando el Crimson Guard está activo" $
            danioConCrimsonGuard True danioTorre meepo `shouldBe` 91