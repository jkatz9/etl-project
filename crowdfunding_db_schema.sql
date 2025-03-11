create database "crowdfunding_db"

DROP TABLE IF EXISTS "campaign";
DROP TABLE IF EXISTS "contacts";
DROP TABLE IF EXISTS "subcategory";
DROP TABLE IF EXISTS "category";

CREATE TABLE "category" (
    "Category_id" varchar NOT NULL PRIMARY KEY,
    "Category_name" varchar NOT NULL
);

CREATE TABLE "subcategory" (
    "Subcategory_id" varchar NOT NULL PRIMARY KEY,
    "Subcategory_name" varchar NOT NULL
);

CREATE TABLE "contacts" (
    "Contact_id" int NOT NULL PRIMARY KEY,
    "First_name" varchar NOT NULL,
    "Last_name" varchar NOT NULL,
    "email" varchar NOT NULL
);

CREATE TABLE "campaign" (
    "Cf_id" int NOT NULL PRIMARY KEY,
    "Contact_id" int NOT NULL,
    "Company_name" varchar NOT NULL,
    "Description" varchar NOT NULL,
    "Goal" int NOT NULL,
    "Pledged" int NOT NULL,
    "Outcome" varchar NOT NULL,
    "Backers_count" int NOT NULL,
    "Country" varchar NOT NULL,
    "Currency" varchar NOT NULL,
    "Launch_date" date NOT NULL,
    "End_date" date NOT NULL,
    "Category_id" varchar NOT NULL,
    "Subcategory_id" varchar NOT NULL,
    FOREIGN KEY ("Contact_id") REFERENCES "contacts" ("Contact_id"),
    FOREIGN KEY ("Category_id") REFERENCES "category" ("Category_id"),
    FOREIGN KEY ("Subcategory_id") REFERENCES "subcategory" ("Subcategory_id")
);

