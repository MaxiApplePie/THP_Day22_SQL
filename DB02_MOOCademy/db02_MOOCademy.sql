CREATE TABLE `cours` (
  `id`  INTEGER PRIMARY KEY AUTOINCREMENT,
  `titre` TEXT,
  `description` TEXT
);


CREATE TABLE `lecons` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titre` TEXT,
  `body` TEXT,
  `id_cours` INTEGER
);

