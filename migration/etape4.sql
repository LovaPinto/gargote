CREATE TABLE IF NOT EXISTS client (
    id serial primary key,
    nom_client VARCHAR(100) not null,
    email_client VARCHAR(100) unique not null,
    id_type_client int,
    foreign key(id_type_client) references type_client(id)
);

ALTER TABLE commande add COLUMN id_client int NOT null add CONSTRAINT fk_client foreign key (id_client) references client(id);
