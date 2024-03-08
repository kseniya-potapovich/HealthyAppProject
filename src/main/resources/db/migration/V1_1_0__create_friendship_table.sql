create table public.friendship
(
    id        bigserial
        primary key,
    user_id   bigserial
        references public.users
            on update cascade on delete cascade,
    friend_id bigserial
        references public.users
            on update cascade on delete cascade
);