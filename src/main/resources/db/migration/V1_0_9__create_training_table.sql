create table public.training
(
    id          bigserial
        primary key,
    user_id     bigserial
        references public.users
            on update cascade on delete cascade,
    time_start  timestamp    not null,
    time_finish timestamp    not null,
    type        varchar(255) not null,
    workout     varchar(255) not null
);