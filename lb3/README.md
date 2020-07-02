# M300-Services
M300-Services von Philip Kampfer

In der folgenden Dokumentation werde ich den Leistungsnachweis zu der LB3 erbringen. 

# Inhaltsverzeichnis
- [1. Kriterium](#1-kriterium)
- [2. Kriterium](#2-kriterium)
- [3. Kriterium](#3-kriterium)
- [4. Kriterium](#4-kriterium)
- [5. Kriterium](#5-kriterium)


## 1. Kriterium 
Umbebung auf eigenem Notebook eingerichtet und funktionsfähig
- [x] [1. VirtualBox](#1-virtualbox)
- [x] [2. Vagrant](#2-vagrant)
- [x] [3. Visualstudio-Code](#3-visualstudio-code)
- [x] [4. Git-Client](#4-git-client)
- [x] [5. SSH-Key für Client erstellen](#5-ssh-key-für-client-erstellen)

### 1. Virtualbox
Aufgrund unseres Auftrages wählte ich für die Umsetzung die kostenlose Virtualisierungssoftware VirtualBox. Ich habe diese Software bereits öfters benutzt und habe diese auch schon auf meinem Notebook installiert. 

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild1.png "Virtualbox")

### 2. Vagrant
Auf dem folgenden Bild ist die installierte Vagrant Version zu sehen

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild2.png "Vagrant")

### 3. Visualstudio-Code

Auch Visual Studio Code, wendete ich bereits einige Male im Betrieb sowie Zuhause an. Die Installation musste ich also auch hier nicht mehr vornehmen. 

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild3.png "VSC")

Ebenfalls fügte ich 3 weitere Erweiterungen hinzu: 
- Vagranfile Support
Diese Erweiterung bietet Syntax-Highliting für das Vagrantfile

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild4.png "Vagrantsupport")

- Markdown All in One
Diese Erweiterung bietet viele Features, die beim Dokumentieren mit Markdown nützlich sind. 

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild5.png "Markdownsupport")

- Vscode-pdf

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild6.png "vscode")

### 4. Git-Client
Auf dem folgenden Bild sehen sie die installierte Version des Git-Clients

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild7.png "Git-Client")

### 5. SSH-Key für Client erstellen
In den beiden Screenshots unterhalb ist der Nachweiss, dass der SSH-Key erstellt wurde. Im ersten Screenshot ist der verknüpfte SSH-Key an meinem GitHub-Account zu sehen. Auf dem zweiten Bild führe ich den ssh-keygen Befehl in der Git-Bash aus.

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild8.png "SSH-Key1")

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild9.png "SSH-Key2")


## 2. Kriterium
Eigene Lernumgebung (PLE) ist eingerichtet
- [x] [1. GitHub oder Gitlab-Account ist erstellt](#1-github-oder-gitlab-account-ist-erstellt)
- [x] [2. Git-Client wurde verwendet](#2-git-client-wurde-verwendet)
- [x] [3. Dokumentation ist als Mark Down vorhanden](#3-dokumentation-ist-als-mark-down-vorhanden)
- [x] [4. Mark down-Editor ausgewählt und eingerichtet](#4-mark-down-editor-ausgewählt-und-eingerichtet)
- [x] [5. Persönlicher Wissenstand](#5-persönlicher-wissenstand)
- [x] [6. Wichtige Lernschritte sind dokumentiert](#6-wichtige-lernschritte-sind-dokumentiert)

### 1. GitHub oder Gitlab-Account ist erstellt
Ich erstellte ein GitHub Account: https://github.com/philiptbz

### 2. Git-Client wurde verwendet
Anhand des Screenshots wird bewiesen, dass der Git-Client verwendet wurde.

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild10.png "Git-Client")

### 3. Dokumentation ist als Mark Down vorhanden
Ich habe die Dokumentation in der README.md Datei erfasst. Dass diese in Mark Down geschrieben wurde sollte ersichtlich sein.

### 4. Mark down-Editor ausgewählt und eingerichtet
Ich habe in diesem Fall Visual Studio Code als Mark Down Editor benutzt. Ich habe die README.md Datei jeweils in Visual Studio Code bearbeitet, gespeichert, commited und gepusht. 

### 5. Persönlicher Wissenstand

### Containierisierung
Bei der Containerisierung handelt es sich um eine Art Virtualisierung auf Anwendungsebene, bei der mehrere isolierte Maschinen auf einem einzelnen Kernel ausgeführt werden können. Diese Maschinen werden Container genannt.

Container bieten eine Standardmethode um Anwendungscode, Laufzeitumgebung, Systemwerkzeugen, Systembibliotheken und Konfigurationen in einer Maschine zusammenzufassen. Im Gegensatz zu VMS, die alle ihren eigenen "Kernel" haben, teilen sich Container einen Kernel (Betriebssystem), der auf der Hardware installiert ist.

Folgendes Bild zeigt den Unterschied zwischen Container und Virtuellen Maschinen:
![](https://github.com/philiptbz/M300-Services/blob/master/Images/b1.jpg "Container vs VM")

Die Vorteile der Containerisierung sind:

- Resourcenbedarf (weniger Resourcen als VMs)
- Effizient (Container nutzen Serverresourcen sehr dynamisch aus )
- Performance (Container haben bringen mehr Leistung, als VMs, weil das Gastbetriebssystem auch seine eigenen Speicheranforderungen erfüllen und wertvollen Arbeitsspeicher des Hosts belegen muss)

### Docker
![](https://github.com/philiptbz/M300-Services/blob/master/Images/b2.svg "Docker")

Docker ist eine Software zur Isolierung von Anwendungen mit Containervirtualisierung. Die Software benötigt keine Lizenzen.

Docker nahm damals die bestehende Linux-Containertechnologie auf und verpackte und erweiterte sie in vielerlei Hinsicht – vor allem durch portable Images und eine benutzerfreundliche Schnittstelle.

**Architektur**
Im Folgenden sind alle Elemnte und ihre Aufgaben aufgelistet:

**Docker Deamon**
- Erstellen, Ausführen und Überwachen der Container
- Bauen und Speichern von Images.

**Docker Client**
- Docker wird über die Kommandozeile (CLI) mittels des Docker Clients bedient
- Kommuniziert per HTTP REST mit dem Docker Daemon

**Images**
- Images sind gebuildete Umgebungen welche als Container gestartet werden können
- Images sind nicht veränderbar, sondern können nur neu gebuildet werden.
- Images bestehen aus Namen und Version (TAG), z.B. ubuntu:16.04.

**Container**
- Container sind die ausgeführten Images
- Ein Image kann beliebig oft als Container ausgeführt werden
- Container bzw. deren Inhalte können verändert werden, dazu werden sogenannte Union File Systems verwendet, welche nur die Änderungen zum original Image speichern.

**Docker Registry**
- In Docker Registries werden Images abgelegt und verteilt

### Microservices
Microservices sind ein Architekturkonzept der Anwendungsentwicklung. Ein Microservice ist also eine Kernfunktion einer Anwendung und er wird unabhängig von anderen Services ausgeführt.

Jede Funktion kann unabhängig entwickelt und implementiert werden.

Folgende Grafik zeigt der Aufbau von Microservices auf: 
![](https://github.com/philiptbz/M300-Services/blob/master/Images/b3.png "Microservices")

### 6. Wichtige Lernschritte sind dokumentiert
Ich denke ein grossteil meiner Lernschritte habe ich bereits im Mark Down festgehalten. Jedoch werde ich hier noch auf einige genauer eingehen. Anfangs hatte ich grosse Schwierigkeiten, da ich nicht genau wusste wass genau die Aufgabe ist. Ich brauchte einige Zeit bis ich mit der Dockerumgebung klar kam. Nach einigen Rückschlägen erzielte ich erste Fortschritte und kam immer besser zurecht. Auch das Fehlerbeheben hat mich stark weiter gebracht und ich konnte dadurch sehr viel lernen. Eigentlich bestand das ganze Projekt nur aus Lernschritten und es fehlt mir schwer, hier das wichtigste Zusammenzufassen. 

## 3. Kriterium
- [x] [1. Bestehende Docker-Container kombinieren](#1-bestehende-docker-container-kombinieren)
- [x] [2. Volumes zur persistenten Datenablage eingerichtet](#2-volumes-zur-persistenten-datenablage-eingerichtet)
- [x] [3. Kennt die Docker spezifischen Befehle](#3-kennt-die-docker-spezifischen-befehle)
- [x] [4. Eingerichtete Umgebung ist dokumentiert](#4-eingerichtete-umgebung-ist-dokumentiert)
- [x] [5. Funktionsweise getestet inkl. Dokumentation der Testfälle](#5-funktionsweise-getestet-inkl-dokumentation-der-testfälle)

### 1. Bestehende Docker-Container kombinieren

Eine bestehende VM kann aus dem Verzeichnis, indem die VM liegt bzw. indem das Vagrant-File liegt, gestartet werden. Hierzu muss in diesem Verzeichnis die Git-Bash geöffnet werden. Danach muss der Befehl ```vagrant up``` eingegeben werden.


### 2. Volumes zur persistenten Datenablage eingerichtet

Docker-Container besitzen keinen persistenten Speicher, dass heisst löscht der Admin einen Container, sind alle darin enthaltenen Daten verloren. Zum Glück bietet Docker für das Problem eine Lösung an: Per Volume-Dienst lässt sich ein Container mit persistentem Speicher versorgen. 
Container auf Volume erstellen:

`docker create -v /dbvolume --name datenbank training/postgres /bin/true`

Mit dem Parameter “-volume” aus „Docker run” wird es möglich, das Volumen „/dbvolume des Containers datenbank auf andere Container zu mounten.

Mit den beiden folgenden Befehlen werden die beiden Container „db1“ und „db2“ erzeugt:
`sudo docker run -d --volumes-from dbstore --name db1 training/postgre` 
`sudo docker run -d --volumes-from dbstore --name db2 training/postgres`

Volume löschen:
`docker rm –v`

![](https://github.com/philiptbz/M300-Services/blob/master/Images/b7.PNG "createvolume")

![](https://github.com/philiptbz/M300-Services/blob/master/Images/b8.PNG "containeronvolume")

### 3. Volumes zur persistenten Datenablage eingerichtet
**Netzwerkplan**

Logischer Netzwerkplan:

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild24.PNG "Netzwerkplan")

Pysischer Netzwerkplan:
Da wir hier mit einer Virtualisierung arbeiten, würde ein pysischer Netzwerkplan sehr mager aussehen. Die Firewall, der Proxy sowie der Web-Server sind keine pysische Geräte sondern befinden sich virtuell auf dem Laptop. 

**Umgebungsvariabeln:**
Zuerst müssen entweder im Explorer oder in der Git-Bash ins richtige Verzeichnis gewechselt werden.
In meinem Falle befindet sich die VM, im Verzeichniss: C:\Daten\vm

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild23.png "cd")

Danach kann die VM mit dem Befehl vagrant up gestartet werden.

**Sicherheitsaspekte**

-	Lediglich der Port 80 des Web-Frontends und der Port 8080 der API wurden nach Aussen freigegeben.
-	Durch den Reverse Proxy sind die Devices im LAN von aussen nicht einsehbar.
-	Mit den strengen Firewall Regeln können wir das eindringen über offene Ports grösstenteils vermeiden.
-	Nur bestimmte Nutzer verfügen über einen Zugriff auf die wichtigen Verzeichnisse, was die Integrität schützt.


### 4. Kennt die Docker spezifischen Befehle

Befehl            | Funktion
----------------- | -------------
`docker ps`    | Alle laufende Container anzeigen
`docker container ls -a`	  | Alle Container anzeigen
`docker images`  | Alle Images anzeigen
`pull (Imagename)`  | Image herunterladen
`docker image build -t` | Image erstellen
`docker stop [ID]`    | Container stoppen
`docker exec -it "containername" bash` | den Container "betreten"
`docker rm -f id` | Zerstört / löscht das Image
`docker build -f "name" . -t apache_mysql` | Erstellt einen Container und bennent ihn
`docker run --name apache_mysql`  | startet den Container

Weitere nützliche Commands im Zusammenhang mit der Arbeit

Befehl            | Funktion
----------------- | -------------
`mysql -u root -p`  | Einloggen in die Mysql Datenbank
`/etc/init.d/apache2 status`	 | zeigt den Status des Apache Dienst an
`/etc/init.d/mysql status`  | zeigt den Status des Mysql Dienstes an



### 5. Eingerichtete Umgebung ist dokumentiert

Ich habe noch eine weitere VM auf dem Notebook aufgesetzt. Hierbei habe ich das Vagrant-File, welches unter dem folgenden Pfad liegt ausgeführt.

https://github.com/mc-b/M300/tree/master/vagrant/db

Diese VM habe ich mit dem Befehl `vagrant up` gestartet. Auch hier musste ich im Verzeichnis sein, in dem das Vagrant-File vorhanden war. 

### 6. Funktionsweise getestet inkl. Dokumentation der Testfälle

Mir war es wichtig alle primären Funktionen des Vagrantfiles zu Testen. Diese Tests sind unterhalb in der Tabelle mit Beweisen inform von Scrennshots

Testfall            | Resultat
----------------- | -------------
Die VM kann via Vagrant aufgesetzt werden sowie über Vagrant auf die VM zugegriffen werden.  | ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t1.png "vagrant up") ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t2.png "vagrant ssh")
Von dem Client ist der Zugriff auf den Webserver möglich. | Apache Server ist Running und es kann auf den Server von Lokal zugegriffen werden. ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t3.png "mysql status") ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t4.png "mysql website")
Die Firewall ist richtig konfiguriert und funktioniert.  | ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t5.png "ufw status")
Die Gruppenordner wurden erstellt  | ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t6.png "grp")
Die Benutzer wurden erstellt   | ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t7.png "benutzer")
Mysql wurde installiert und funktioniert | ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t8.png "mysql status") ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t9.png "mysql login")
LDAP wurde eingerichtet und das einloggen ist möglich. | ![](https://github.com/philiptbz/M300-Services/blob/master/Images/t10.png "ldap website")

## 4. Kriterium
- [x] [1. Service-Überwachung ist eingerichtet &Aktive Benachrichtigung ist eingerichtet](#1-Service-überwachung-ist-eingerichtet-&-aktive-benachrichtigung-ist-eingerichtet)
- [x] [2. Aspekte der Container-Absicherung](#3-aspekte-der-container-absicherung)
- [x] [3. Sicherheitsmassnahmen sind dokumentiert](#4-sicherheitsmassnahmen-sind-dokumentiert)

Nun geht es darum diese Container abzusichern. Es ist wichtig, dass Logging und Mitteilungen aktiviert sind. Das System muss dem Administrator behilflich sein. Im Ernstfall müssen Warnungen gesendet werden.

### 1. Service-Überwachung ist eingerichtet & Aktive Benachrichtigung
Eine gute Monitoring-Lösung sollte auf einen Blick den Zustand des Systems zeigen und rechtzeitig warnen, wenn Ressourcen knapp werden. Docker Tools cAdvisor von Google ist das am häufigsten eingesetzte Monitoring-Tool für Docker.

Dieses Programm ist als Container verfügbar und man kann darauf zugreifen. Der folgende Command muss dazu aktiviert werden:

`docker run -d --name cadvisor -v /:/rootfs:ro -v /var/run:/var/run:rw -v /sys:/sys:ro -v /var/lib/docker/:/var/lib/docker:ro -p 8080:8080 google/cadvisor:latest`

### 2.Aspekte der Container-Absicherung
ch habe folgende weitere Sicherheitsaspekte für meine Container realisiert:

**Speicher**
Wenn man den Speicher schützt, kann man die Chancen von DDos Attacken minimieren. Dies ist wichtig, da der Speicher nicht "aufgefressen" werden darf. Hier wäre der Command dazu:

`docker run -m 128m --memory-swap 128m amouat/stress stress --vm 1 --vm-bytes 127m -t 5s`

![](https://github.com/philiptbz/M300-Services/blob/master/Images/b4.PNG "speicher")

**Neustarts begrenzen**
Ein Neustart verhindert Zeitverluste und Ressorcenverluste von einem sterbenden Container. Auch hier kann eine DDos Attacke verhindert werden. Der Command dazu wäre:

`docker run -d --restart=on-failure:10 my-flaky-image`

![](https://github.com/philiptbz/M300-Services/blob/master/Images/b5.PNG "restart")

**Ressourcenbeschränken**
Der Kernel definiert Ressourcenbeschränkungen, die für Prozesse gesetzt werden können. Diese lassen sich auch auf Docker-Container anwenden. Hierzu wäre der Command:

`docker run --ulimit cpu=12:14 amouat/stress stress --cpu 1`
![](https://github.com/philiptbz/M300-Services/blob/master/Images/b6.PNG "cd")


### 3. Benutzer- und Rechtevergabe ist eingerichtet
Als erstes erstellte ich Gruppenordner

![](https://github.com/philiptbz/M300-Services/blob/master/Images/bild17.png "cd")


### 4. Sicherheitsmassnahmen sind dokumentiert
-   Lediglich der Port 80 des Web-Frontends und der Port 8080 der API wurden nach Aussen freigegeben.
-	Durch den Reverse Proxy sind die Devices im LAN von aussen nicht einsehbar.
-	Mit den strengen Firewall Regeln können wir das eindringen über offene Ports grösstenteils vermeiden.
-	Nur bestimmte Nutzer verfügen über einen Zugriff auf die wichtigen Verzeichnisse, was die Integrität schützt.


## 5. Kriterium
- [x] [1. Kreativität](#1-kreativität)
- [x] [2. Komplexität](#2-komplexität)
- [x] [3. Umfang](#3-umfang)
- [x] [4. Authentifizierung und Autorisierung via LDAP](#4-authentifizierung-und-autorisierung-via-ldap)
- [x] [5. Vergleich Vorwissen - Wissenszuwachs](#6-vergleich-vorwissen---wissenszuwachs)
- [x] [6. Reflexion](#7-reflexion)

### 1. Kreativität
Ich denke die Kreativität ist genügend hoch. In dieser Arbeit habe ich probiert möglichst alles selbst zu machen und meine eigene Gedanken umzusetzen. Es wurden viele verschiedene Dinge umgesetzt, weshalb ich die Kreativtät als erfüllt empfinde. 

### 2. Komplexität
Da ich mehrere verschiedene Dienste zur Verfügung gestellt habe, finde ich auch, dass mein Vagrant-File die Komplexität erfüllt. A

### 3. Umfang
Wie bereits erwähnt setzte ich mehrere Dienste um, was sich auch in der länge der Vagrantfiles wiederspiegelt. Ich denke mit knapp 120 Zeilen ist die Umfang erfüllt.

### 4. Authentifizierung und Autorisierung via LDAP
Die 4. Authentifizierung und Autorisierung via LDAP wurde ab der Zeile 100 im Vagrant-File umgesetzt. 

### 5. Vergleich Vorwissen - Wissenszuwachs
Mein Wissenszuwachs ist eventuell nicht an der Dokumnentation ersichtlich. Wenn man jedoch überlegt, dass ich am Anfang des Moduls nicht eimal wusste wass Vagrant ist, denke ich wird der Wissenzuwachs schnell ersichtlich. Mir machte das Arbeiten mit Vagrant sehr viel Spass und der Wissenzuwachs war extrem. Mittlerweile bin ich in der Lage einige Dienste zu Automatisieren und kenne mich mit Vagrant ziehmlich gut aus.

### 6. Reflexion
Insgesamt hat mir die LB02 sehr gut gefallen. Am Anfang kannte ich die einzelnen Fachbegriffe zu diesem Thema nicht. Nun aber kann ich in vielen Gesprächen zu diesem Thema etwas dazu sagen. Ich bin sehr froh, dass ich diese Lernschritte gemacht habe und diese auch selber sehen kann. Ich werde sicherlich viel Stoff mitnehmen, welchen ich in dieser LB02 und in den jeweiligen Lektionen gelernt habe. Der Einstieg war etwas einfacher, da es sich hauptsächlich um die Einrichtung der Umgebung handelte. Da ich von einem vorherigen Module die einzelnen Tools bereits ein wenig kannte, fiel mir dies etwas leichert. Probleme mit Vagrant hatte ich bis jetzt eigentlich keine. Und wenn ich mal welche haben sollte, finde ich dazu sicherlich etwas im Internet oder kann mir womöglich sogar selber weiterhelfen. Auch in meiner Freizeit konnte ich zu Vagrant einige Dinge lernen. Ich habe einige Tutorials und Crash Courses auf YouTube angeschaut, welche mir auch weitergeholfen haben, um mein Vagrant-Script zu erweitern. Also in allem hat mir diese LB02 sehr viel Spass gemacht. 