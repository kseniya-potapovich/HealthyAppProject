CREATE TABLE products
(
    id       bigserial primary key not null,
    name     varchar               not null,
    calories int                   not null
);