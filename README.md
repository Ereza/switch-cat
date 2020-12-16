# Traducció al català de la interfície de la Nintendo Switch
Ara ja podeu posar la interfície de la vostra Nintendo Switch en català!

![Imatge de la pàgina d'usuari en català](https://github.com/Ereza/switch-cat/blob/master/assets/header.png)

## Important
**Si modifiqueu la vostra consola, podeu perdre l'accés als serveis en línia de Nintendo.**

Modificar la consola i instal·lar-hi pedaços que la modifiquin pot fer que Nintendo us prohibeixi l'accés als serveis en línia (incloent-hi el joc en línia, la Nintendo eShop i les funcionalitats d'amistat). Si bé és cert que normalment no passa si us manteniu dintre de la legalitat, no es pot descartar del tot. Si instal·leu aquesta traducció, assumiu aquesta possibilitat.

**La traducció només s'ha provat amb la versió del sistema 11.0.1.**

Si la proveu amb qualsevol altra versió, no en garantim el correcte funcionament, i poden aparèixer errors que facin inutilitzable la consola. És possible que la traducció funcioni amb versions anteriors del sistema operatiu, però probablement no funcionarà amb versions posteriors a la 11.0.1. Si hi ha una nova actualització del sistema, espereu a la publicació de l'actualització de la traducció o desinstal·leu-la abans d'actualitzar el sistema.

## Com puc instal·lar-la?
* **No totes les consoles són compatibles**, cal que tingueu una Nintendo Switch que pugui executar *homebrew*. Consulteu [aquesta guia](https://switch.homebrew.guide/gettingstarted/beforestarting) amb indicacions de com podeu arribar a executar *homebrew*.
* Heu de tenir instal·lat [Atmosphère](https://github.com/Atmosphere-NX/Atmosphere) versió 0.16.1 o superior, o un sistema similar que faci servir LayeredFS.
* Apagueu completament la consola, extraieu-ne la targeta microSD, inseriu-la a l'ordinador i extraieu el contingut de la baixada directament dins de la carpeta "atmosphere" de la targeta microSD. Torneu a inserir-la a la consola i torneu-la a engegar. També podeu fer servir [FTP](https://github.com/mtheall/ftpd) per a evitar extreure i inserir la targeta microSD.
* Ja podeu gaudir de la Nintendo Switch en català!

## Més informació
### Com funciona? En quina llengua es veuran els jocs?
* La traducció substitueix els fitxers d'una de les llengües del sistema operatiu (podeu triar entre espanyol, francès, italià o anglès), sempre en la seva variant de la regió europea.
* Per tant, la consola continuarà mostrant els jocs en la llengua original.
* Encara que un joc tingui disponible el català de manera oficial al menú de selecció de llengua, per defecte es mostrarà en la llengua original de la consola, com en una Nintendo Switch sense traduir.
* Si voleu tornar a veure la interfície de la consola en la llengua original, caldrà que esborreu els fitxers que heu copiat a la targeta microSD.

### Problemes coneguts
* En accedir a l'apartat "Assistència" de la configuració, o en mostrar detalls de qualsevol error, la consola es congela durant uns segons. Això passa a causa del retard en llegir els fitxers modificats de la targeta microSD. Depèn de la implementació de LayeredFS, i no creiem que sigui solucionable. Si voleu eliminar el retard, elimineu la carpeta "0100000000000801" de la carpeta "contents" de l'Atmosphère. En aquest cas, els errors es mostraran en la llengua original de la consola.
* En general, és possible que el sistema funcioni amb una mica més de lentitud, causada per aquest mateix motiu: l'accés a la targeta microSD en lloc de la memòria interna.

### Què no s'ha traduït?
* La Nintendo eShop (és un servei en línia).
* L'enllaç de comptes de xarxes socials (és un servei en línia).
* Algunes imatges (promocions de Nintendo Switch Online i de l'aplicació Control parental de la Nintendo Switch o les captures de pantalla d'exemple a la transferència d'usuaris).
* Si configureu la consola de zero, la llista de llengües de la primera pantalla mostrarà el nom de la llengua original. La resta de pantalles es mostraran ja en català.

### Agraïments
* A la gent de [switch-pl](https://github.com/bandithedoge/switch-pl) per obrir el camí amb la seva traducció al polonès i detallar com fer una traducció del sistema.
* Als creadors d'[Atmosphère](https://github.com/Atmosphere-NX/Atmosphere), [Goldleaf](https://github.com/XorTroll/Goldleaf), [hactool](https://github.com/SciresM/hactool), [MSBT Editor Reloaded](https://github.com/IcySon55/3DLandMSBTeditor), [SARC Tool](https://github.com/aboood40091/SARC-Tool), [Switch-Toolbox](https://github.com/KillzXGaming/Switch-Toolbox), [Uwizard](https://github.com/MrMysterio/Uwizard) i la resta d'utilitats necessàries per a fer aquesta traducció.

## Captures de pantalla

![Imatge de la interfície en català 1](https://github.com/Ereza/switch-cat/blob/master/assets/screenshot1.jpg)

![Imatge de la interfície en català 2](https://github.com/Ereza/switch-cat/blob/master/assets/screenshot2.jpg)

![Imatge de la interfície en català 3](https://github.com/Ereza/switch-cat/blob/master/assets/screenshot3.jpg)

![Imatge de la interfície en català 4](https://github.com/Ereza/switch-cat/blob/master/assets/screenshot4.jpg)

![Imatge de la interfície en català 5](https://github.com/Ereza/switch-cat/blob/master/assets/screenshot5.jpg)

![Imatge de la interfície en català 6](https://github.com/Ereza/switch-cat/blob/master/assets/screenshot6.jpg)
