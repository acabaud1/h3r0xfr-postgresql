DROP DATABASE shows;
CREATE DATABASE shows;
\c shows

CREATE TABLE "show" (
    show_id serial primary key,
    name varchar(150),
    description text,
    release_year integer CHECK (release_year = 0 OR (release_year/1000 > 0 AND release_year/1000 < 10)),
    genres text,
    network varchar(80)
);

CREATE TABLE "episode" (
    episode_id serial primary key,
    show_id serial references "show"(show_id),
    season integer,
    number integer,
    date timestamp
);

CREATE TABLE "user" (
    user_id serial primary key,
    registration_date timestamp CHECK (registration_date <= NOW()),
    firstname varchar(80),
    lastname varchar(80),
    email varchar(80) CHECK (email LIKE '%@%'),
    password varchar(255)
);

CREATE TABLE "show_follow" (
    user_id serial references "user"(user_id),
    show_id serial references "show"(show_id),
    follow_date timestamp
);

CREATE TABLE "episode_watch" (
    user_id serial references "user"(user_id),
    episode_id serial references "episode"(episode_id),
    watch_date timestamp
);

CREATE TABLE "show_rating" (
    user_id serial references "user"(user_id),
    show_id serial references "show"(show_id),
    rating smallint,
    rating_date timestamp
);
