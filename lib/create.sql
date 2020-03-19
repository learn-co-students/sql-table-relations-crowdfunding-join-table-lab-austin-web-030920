CREATE TABLE projects (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    title           TEXT,
    category        TEXT,
    funding_goal    FLOAT,
    start_date      TEXT,
    end_date         TEXT
);

CREATE TABLE users (
    id      INTEGER PRIMARY KEY AUTOINCREMENT,
    name    TEXT,
    age     INTEGER
);

CREATE TABLE pledges (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    amount      FLOAT,
    user_id     INTEGER,
    project_ID  INTEGER
);