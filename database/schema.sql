CREATE TABLE outlet (
    outlet_id INT GENERATED ALWAYS AS IDENTITY,
    name TEXT UNIQUE,
    PRIMARY KEY (article_id)
);

CREATE TABLE article (
    article_id INT GENERATED ALWAYS AS IDENTITY,
    title TEXT NOT NULL,
    outlet_id INT NOT NULL,
    FOREIGN KEY outlet_id REFERENCES outlet(outlet_id)
    PRIMARY KEY article_id
);