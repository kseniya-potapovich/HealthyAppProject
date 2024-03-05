CREATE TABLE public.users
(
    id            bigserial primary key not null,
    first_name    varchar(25)           not null,
    last_name     varchar(25)           not null,
    email         varchar(50)           not null,
    date_of_birth timestamp             not null,
    weight        float                 not null,
    height        float                 not null
)