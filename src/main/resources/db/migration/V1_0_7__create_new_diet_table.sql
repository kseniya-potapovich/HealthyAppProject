CREATE TABLE diet
(
    id         bigserial primary key not null,
    start_time timestamp             not null,
    end_time   timestamp             not null,
    user_id    bigint references public.users
);