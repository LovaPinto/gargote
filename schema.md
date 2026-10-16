
## Schéma relationnel
## etape 1

- CATEGORIE(**id_categorie**, nom_categorie)
- PLAT(**id_plat**, nom_plat, prix,#id_categorie?)

**reponse**
prix en int et identifiant id_plat ou nom_plat

## etape 2
PLAT
**#id_categorie_nom** int not null,

**reponse 2**
car des plat peuvent avoir les meme categorie et on peux faire une erreur de saisie alors que les plat on meme categorie 

**exemple** 
- 1,Romazava ,Plat malagasy
- 2,Ravitoto sy henakisoa, plat malagasy

si on faire un select avec where categori="plat malagasy" donc le resultat est 2,Ravitoto sy henakisoa, plat malagasy alors qu on veux les plat avec categorie plat malagasy

## etape 3
CREATE TABLE IF NOT EXISTS numero_commande (
-    id serial primary key,
-    numero_commande VARCHAR(100) unique not null
);

CREATE TABLE IF NOT EXISTS  commande (
-    **id** serial primary key,
-    **#id_numero_commande** int not null,
-    **#id_plat** int not null,
-    quantite int not null,
);

## etape 4
CREATE TABLE IF NOT EXISTS client (
-    **id** serial primary key,
-    nom_client VARCHAR(100) not null,
-    email_client VARCHAR(100) unique not null
);

CREATE TABLE IF NOT EXISTS  commande_client (
-   **id** serial primary key,
-    **#id_commande** int not null,
-    **#id_client** int,
);




