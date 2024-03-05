CREATE TABLE security
(
    id                bigserial primary key not null,
    login             varchar(25)           not null unique,
    password          varchar(25)           not null,
    user_id           bigint references public.users,
    is_deleted        boolean               not null,
    role              varchar(255)          not null,
    date_registration timestamp             not null,
    last_entry        timestamp             not null
);