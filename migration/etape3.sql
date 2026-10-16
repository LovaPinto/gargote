CREATE TABLE IF NOT EXISTS numero_commande (
    id serial primary key,
    numero_commande VARCHAR(100) unique not null
);

CREATE TABLE IF NOT EXISTS  commande (
    id serial primary key,
    id_numero_commande int not null,
    id_plat int not null,
    quantite int not null,
  
    foreign key (id_numero_commande) references numero_commande(id),
    foreign key (id_plat) references plat(id),
   
);