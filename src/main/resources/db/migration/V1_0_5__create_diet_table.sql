CREATE TABLE diet
(
    id         bigserial primary key not null,
    start_time date                  not null,
    end_time   date                  not null,
    user_id    bigint references public.users
);