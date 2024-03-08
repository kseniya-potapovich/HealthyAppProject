create table public.goals
(
    id          bigserial
        primary key,
    user_id     bigserial
        references public.users
            on update cascade on delete cascade,
    type        varchar   not null,
    description varchar   not null,
    date_start  timestamp not null,
    date_finish timestamp not null
);