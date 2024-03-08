create table public.groups
(
    id          bigserial
        primary key,
    name        varchar(255) not null,
    description varchar
);