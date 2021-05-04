CREATE TABLE `cours` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titre` TEXT,
  `description` TEXT
);

CREATE TABLE `lecons` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titre` TEXT,
  `body` TEXT,
  `id_cours` INTEGER
);

CREATE TABLE `eleves` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `id_cours` INTEGER
);



select article.* from article  
 join user on article.id_user = user.id  
 where user_name = 'Laurent'
 order by titre desc;

