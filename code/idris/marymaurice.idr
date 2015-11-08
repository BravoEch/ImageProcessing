module loveswho

--Data Function/Type
data pair a b = mkPair a b
data a = Maurice
data b = Mary

MaryLoves: pair a b -> a
MaryLoves (mkPair Maurice Mary) = Maurice

MauriceLoves: pair a b -> a
MauriceLoves (mkPair Maurice Mary) = Maurice
