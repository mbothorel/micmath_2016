#!/usr/bin/ruby

# Trouve un mot en calculant le produit de ses lettres
# "aspell -d fr dump master" donne la liste des mots français

def rang_lettre(lettre)
	if lettre=="a" || lettre=="A" || lettre=="à" then
		resultat_rang_lettre=1
	elsif lettre=="b" || lettre=="B" then
		resultat_rang_lettre=2
	elsif lettre=="c" || lettre=="C" || lettre=="ç" then
		resultat_rang_lettre=3
	elsif lettre=="d" || lettre=="D" then
		resultat_rang_lettre=4
	elsif lettre=="e" || lettre=="E" || lettre=="é" || lettre=="è" || lettre=="ê" || lettre=="ë" then
		resultat_rang_lettre=5
	elsif lettre=="f" || lettre=="F" then
		resultat_rang_lettre=6
	elsif lettre=="g" || lettre=="G" then
		resultat_rang_lettre=7
	elsif lettre=="h" || lettre=="H" then
		resultat_rang_lettre=8
	elsif lettre=="i" || lettre=="I" || lettre=="î" || lettre=="ï" then
		resultat_rang_lettre=9
	elsif lettre=="j" || lettre=="J" then
		resultat_rang_lettre=10
	elsif lettre=="k" || lettre=="K" then
		resultat_rang_lettre=11
	elsif lettre=="l" || lettre=="L" then
		resultat_rang_lettre=12
	elsif lettre=="m" || lettre=="M" then
		resultat_rang_lettre=13
	elsif lettre=="n" || lettre=="N" then
		resultat_rang_lettre=14
	elsif lettre=="o" || lettre=="O" || lettre=="ô" || lettre=="ö" then
		resultat_rang_lettre=15
	elsif lettre=="p" || lettre=="P" then
		resultat_rang_lettre=16
	elsif lettre=="q" || lettre=="Q" then
		resultat_rang_lettre=17
	elsif lettre=="r" || lettre=="R" then
		resultat_rang_lettre=18
	elsif lettre=="s" || lettre=="S" then
		resultat_rang_lettre=19
	elsif lettre=="t" || lettre=="T" then
		resultat_rang_lettre=20
	elsif lettre=="u" || lettre=="U" || lettre=="ù" || lettre=="û" || lettre=="ü" then
		resultat_rang_lettre=21
	elsif lettre=="v" || lettre=="V" then
		resultat_rang_lettre=22
	elsif lettre=="w" || lettre=="W" then
		resultat_rang_lettre=23
	elsif lettre=="x" || lettre=="X" then
		resultat_rang_lettre=24
	elsif lettre=="y" || lettre=="Y" then
		resultat_rang_lettre=25
	elsif lettre=="z" || lettre=="Z" then
		resultat_rang_lettre=26
	else
		resultat_rang_lettre=1
	end
	return resultat_rang_lettre.to_i
end

def calcul_mot (mot)
	resultat = 1
	0.upto((mot.length)-1) do |lettre_du_mot|
		resultat *= rang_lettre(mot[lettre_du_mot])
	end
	return resultat
end

if ARGV.empty?
	puts "Rentrez un nombre pour commencer le calcul"
	exit 1
end

nombre = ARGV[0].to_i

IO.readlines('dictionnaire').each do |mot_du_dictionnaire|
	resultat_multiplication = calcul_mot(mot_du_dictionnaire).to_i
	if nombre == resultat_multiplication
		puts "Le mot #{mot_du_dictionnaire.chomp} correspond au nombre #{nombre}"
	end		
end
