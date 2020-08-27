## Torn Info

Dit is het project van Wannes De Craene voor IOS, academiejaar 2019-2020.

Deze applicatie is gericht op het verkrijgen van informatie van iemand's account in https://www.torn.com . De link naar de gebruikte api is: https://api.torn.com

Kort uitgelegd is dit een text-based browser game waar je een eigen character maakt, dat je dan gebruikt om te overleven in een criminele "onderwereld" en zo je eigen naam te creeren. 

In dit spel kan men "factions" maken, dit zijn groepen waar verschillende spelers samenkomen om samen bepaalde uitdagingen te overkomen. Deze applicatie focust zich voornamelijk op enkele tools die handig kunnen zijn voor de leiders van deze "factions"

## Login Gegevens

Om op deze applicatie in te loggen heeft u een "API key" nodig, die kan verkregen worden op het spel. 

De API key die u voor dit project kunt gebruiken is: utllH7do9sv9ry8d 

## Walkthrough


Concreet heeft deze applicatie:

### Inlogscherm

Hier logt u in met een Api key, in dit geval utllH7do9sv9ry8d , let wel op, deze api key heeft maar een beperkt aantal "calls per minuut", dus indien deze erg intensief gebruikt wordt kan deze disabled worden door Torn zelf.

### Homescherm

Eenmaal de api key is ingegeven en u op login heeft geklikt komt u op een scherm terecht waar een basic overzicht van de gebruiker z'n account wordt weergegeven.

Op dit scherm vindt u:

####Header

- Naam en user ID
- Wanneer de gebruiker laatst online was

####Mainscherm

- De status van de gebruiker (okay, flying, in hospital, in jail...)
- Hoeveel geld de gebruiker opzak heeft
- Hoeveel punten de gebruiker opzak heeft
- Drie verschillende cooldowns die vertellen wanneer de gebruiker opnieuw bepaalde items kan gebruiken

- Vier verschillende progressbars die vertellen hoeveel: 
  * Leven de gebruiker heeft
  * Energie de gebruiker heeft
  * Nerve de gebruiker heeft
  * Happiness de gebruiker heeft
  
  
  
### Armouryscherm

Dit scherm bevat een lijst met de laatste 1,000 entries in de faction's armoury. Een faction is een groep spelers die samenwerkt, een armoury is in principe het magazijn van deze faction. Voor Leaders is het gemakkelijk een lijst te hebben met wat hiermee gebeurt en een zoekfunctie indien iemand iets gebruikt dat niet mocht gebruikt worden

### Raid scherm

Dit scherm bevat een lijst met factions die op het moment van de pagevisit in oorlog zitten met elkaar.
