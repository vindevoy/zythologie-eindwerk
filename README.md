# Eindwerk Zythologie

Dit project kan gebruikt worden als basis voor het schrijven van het eindwerk voor de cursus Zythologie, gegeven bij Syntra Leuven.

**Opgelet**

*Deze versie is een eerste versie en bevat mogelijks nog problemen. Niets garandeert dat deze problemen allemaal opgelost zullen zijn wanneer het eindwerk afgeleverd moet worden.  Gebruiken op eigen risico.*

*-- Yves Vindevogel, 30 januari 2021*

## Doel

Dit project zal een website genereren van de inhoud van het eindwerk, samen met een PDF die dient afgegeven te worden voor de eindproef.

## Basisinhoud

Dit project voorziet een eindwerk bestaande uit 3 onderdelen:

- inhoud: de eigenlijke inhoud over het onderwerp dat gekozen werd
- foodpairing: de verplichte foodpairings (1 gerecht reeds voorzien)
- documentatie: bronnen, ...

## Software

Dit project maakt gebruikt van sphinx-doc, een documentatie generator voor Python (programmeertaal)

- Voor meer info: https://www.sphinx-doc.org/en/master/

Het aanmaken van de PDF versie is gebaseerd op LaTeX.  

- Voor meer info: https://en.wikipedia.org/wiki/LaTeX

### Windows

*Op dit moment is dit project klaar voor gebruik op Linux Mint en mogelijks Ubuntu.  Windows is niet ondersteund op dit moment.*

### Mac OSx

De gebruikte software is allemaal open source.  Via oa. homebrew zal die waarschijnlijk allemaal te installeren zijn.  Zie de Makefile voor de nodige software.

## Gebruik

- Het gebruik is op eigen risico. Dit project is pas in een beginfase.
- De documentatie is beperkt tot deze readme en wat je te weten komt via via.
- Om het kort uit te leggen:
    - Lees de documentatie over Git.  Git dient om het project te clonen maar zorgt ook voor een backup van je werk.
    - Clone deze repo.
    - Maak een branch gebaseerd op de master voor je eigen eindwerk.
    - Als er wijzigingen zijn op dit project, zal er documentatie zijn hoe je het moet integreren in je eigen repo.
    - Lees zelf de documentatie over sphinx-doc en reStructuredText.

## FAQ

- Wanneer komt er een nieuwe update => Als ik (vindevoy) tijd en zin heb, of ik als ik het nodig acht voor mijn eigen eindwerk.
- Ik gebruik Windows maar zou toch dit project willen gebruiken => Google is your best friend. Kijk hoe je conda, sphinx-doc en LaTex (misschien ook make) kan installeren op Windows en mogelijks zal het werken.  Of installeer het via een virtuele machine waarin je Linux Mint installeert.
- Is het niet gemakkelijker in Word => Ja. Voor de papieren versie voor de eindproef wel. Wil je echter wat meer, zoals doorzoekbare website, dan voldoet Word niet. En persoonlijk vind ik (vindevoy) ook dat teksten schrijven in .RST formaat veel aangenamer is dan in Word.
- Is dit gratis => Ja. Dit project is vrij te gebruiken onder de MIT licentie.  

 



