create table public.followers
(
    id       bigserial
        primary key,
    group_id bigserial
        references public.groups
            on update cascade on delete cascade,
    user_id  bigserial
        references public.users
            on update cascade on delete cascade
);