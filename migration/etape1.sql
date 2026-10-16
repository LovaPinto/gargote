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

