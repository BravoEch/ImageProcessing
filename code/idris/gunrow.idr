--Heather Landes
--Partner: Michael Lichtenberger

module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homicides, suicides, unintentional, and other
data gunrow = mkGunrow country Nat Nat Nat Nat

||| The country name and four atributes are collectively called a tuple
argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austral: gunrow
austral = mkGunrow Australia 11 62 5 8

aust: gunrow
aust = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 6480 0 0 0

us: gunrow
us = mkGunrow USA 355 670 16 9

countries: list gunrow
countries = cons argen (cons austral (cons aust (cons hond (cons us nil))))

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

--Below are some test cases for length applied to gunrow

la: gunrow -> Nat
la = length us
