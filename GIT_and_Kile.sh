#Dieses Shell Script startet zuerst GIT und führt einen FETCH/REBASE aus,
#danach wird Kile gestartet, um die Formelsammlung zu editieren.

#In den richtigen Pfad wechseln
cd Dokumente/Formelsammlung/

echo "FETCH wird ausgeführt..."
git fetch
echo #Leerzeile

echo "... jetzt der PULL..."
git pull origin master
echo #Leerzeile

echo "...und Kile gestartet!"
#if [kile Formelsammlung.tex];
#    	then	
#	echo #Leerzeile
#	git commit -a -m 'Formelsammlung bearbeitet/aktualisiert.'
#	git push origin master
#else
#	echo 'Fehler!'
#fi
kile Formelsammlung.tex

echo #Leerzeile
echo '/.git wird mit COMMIT versehen.'
git commit -a --allow-empty-message -m ''

echo #Leerzeile
echo 'Und jetzt der PUSH'
git push origin master

#Zehn Sekunden Pause, um alles nochmal zu kontrollieren (LESEN!)
sleep 10
