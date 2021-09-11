CREATE TABLE Estado
(
    id     serial NOT NULL,
    nombre text NOT NULL,
    CONSTRAINT pk_estado PRIMARY KEY ( "id" )
);

CREATE TABLE Usuario
(
    id        serial   NOT NULL,
    nombre    text NOT NULL,
    apellido1 text NOT NULL,
    apellido2 text NOT NULL,
    correo    text NOT NULL,
    CONSTRAINT pk_estado PRIMARY KEY ( "id" )
);

CREATE TABLE Producto
(
    id     serial NOT NULL,
    nombre text NOT NULL,
    CONSTRAINT pk_producto PRIMARY KEY ( "id" )
);

CREATE TABLE Pedido
(
    id       serial NOT NULL,
    fecha      date NOT NULL,
    id_estado  int NOT NULL,
    id_usuario  NOT NULL,
    CONSTRAINT pk_pedido PRIMARY KEY ( "id" ),
    CONSTRAINT fk_usuario FOREIGN KEY ( id_usuario ) REFERENCES Usuario ( "id" ),
    CONSTRAINT fk_estado FOREIGN KEY ( id_estado ) REFERENCES Estado ( "id" )
);

CREATE TABLE Pedido_producto
(
    id        serial  NOT NULL,
    id_pedido   int NOT NULL,
    id_producto int NOT NULL,
    CONSTRAINT pk_pedido_producto PRIMARY KEY ( "id" ),
    CONSTRAINT fk_pedido FOREIGN KEY ( id_pedido ) REFERENCES Pedido ( "id" ),
    CONSTRAINT fk_producto FOREIGN KEY ( id_producto ) REFERENCES Producto ( "id" )
);