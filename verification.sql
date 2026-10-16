
CREATE TABLE IF NOT EXISTS categorie  (
    id serial primary key,
        nom_categorie VARCHAR(100) unique not null
    );

CREATE TABLE  if not exists plat(
    id serial primary key,
    nom_plat VARCHAR(100) unique not null,
    id_categorie_nom int not null,
    foreign key (id_categorie_nom) references categorie(id),
    prix int
);

INSERT INTO categorie(nom_categorie) values
('plat malagasy'),
('plat chinois'),
('soupe'),
('dessert et gouter'),
('boison');

INSERT INTO plat(nom_plat,id_categorie_nom,prix) values
('romazava',1,7000),
('ravitoto sy henakisoa',1,8000),
('akoho sy voanio',1,8500),
('mi sao',2,6000),
('soupe chinoise',3,5000),
('mofo gasy',4,1000),
('ranon ampango',5,500);

CREATE TABLE IF NOT EXISTS numero_commande (
    id serial primary key,
    numero_commande VARCHAR(100) unique not null
);

CREATE TABLE IF NOT EXISTS  commande (
    id serial primary key,
    id_numero_commande int not null,
    id_plat int not null,
    quantite int not null,
    id_client int,
    foreign key (id_numero_commande) references numero_commande(id),
    foreign key (id_plat) references plat(id),
    foreign key (id_client) references client(id)
);

CREATE TABLE IF NOT EXISTS type_client(
    id serial primary key,
    nom_type VARCHAR(100)
);
 
CREATE TABLE IF NOT EXISTS client (
    id serial primary key,
    nom_client VARCHAR(100) not null,
    email_client VARCHAR(100) unique not null,
    id_type_client int,
    foreign key(id_type_client) references type_client(id)
);
