#!/usr/bin/ruby

# Trouve un mot en calculant le produit de ses lettres

def rangLettre(lettre)
	if lettre="a" || lettre="A" || lettre="à" then
		resultat=1
	elsif lettre="b" || lettre="B" then
		resultat=2
	elsif lettre="c" || lettre="C" then
		resultat=3
	elsif lettre="d" || lettre="D" then
		resultat=4
	elsif lettre="e" || lettre="E" || lettre="é" || lettre="è" || lettre="ê" || lettre="ë" then
		resultat=5
	elsif lettre="f" || lettre="F" then
		resultat=6
	elsif lettre="g" || lettre="G" then
		resultat=7
	elsif lettre="h" || lettre="H" then
		resultat=8
	elsif lettre="i" || lettre="I" || lettre="î" || lettre="ï" then
		resultat=9
	elsif lettre="j" || lettre="J" then
		resultat=10
	elsif lettre="k" || lettre="K" then
		resultat=11
	elsif lettre="l" || lettre="L" then
		resultat=12
	elsif lettre="m" || lettre="M" then
		resultat=13
	elsif lettre="n" || lettre="N" then
		resultat=14
	elsif lettre="o" || lettre="O" || lettre="ô" || lettre="ö" then
		resultat=15
	elsif lettre="p" || lettre="P" then
		resultat=16
	elsif lettre="q" || lettre="Q" then
		resultat=17
	elsif lettre="r" || lettre="R" then
		resultat=18
	elsif lettre="s" || lettre="S" then
		resultat=19
	elsif lettre="t" || lettre="T" then
		resultat=20
	elsif lettre="u" || lettre="U" || lettre="ù" || lettre="û" || lettre="ü" then
		resultat=21
	elsif lettre="v" || lettre="V" then
		resultat=22
	elsif lettre="w" || lettre="W" then
		resultat=23
	elsif lettre="x" || lettre="X" then
		resultat=24
	elsif lettre="y" || lettre="Y" then
		resultat=25
	elsif lettre="z" || lettre="Z" then
		resultat=26
	end
	return resultat
end

def calculMot(mot)
	1.upto(mot.length) {
		|lettreDuMot| resultat = resultat * rangLettre(mot[lettreDuMot])
	}
	return resultat
end
