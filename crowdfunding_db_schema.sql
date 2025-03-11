-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7lWmKy
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "Category_id" varchar   NOT NULL,
    "Category_name" varchar   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "Category_id"
     )
);

CREATE TABLE "campaign" (
    "Cf_id" int   NOT NULL,
    "Contact_id" int   NOT NULL,
    "Company_name" varchar   NOT NULL,
    "Description" varchar   NOT NULL,
    "Goal" int   NOT NULL,
    "Pleged" int   NOT NULL,
    "Outcome" varchar   NOT NULL,
    "Backers_count" int   NOT NULL,
    "Country" varchar   NOT NULL,
    "Currency" varchar   NOT NULL,
    "Launch_date" date   NOT NULL,
    "End_date" date   NOT NULL,
    "Category_id" varchar   NOT NULL,
    "Subcategory_id" varchar   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "Cf_id"
     )
);

CREATE TABLE "contacts" (
    "Contact_id" int   NOT NULL,
    "First_name" varchar   NOT NULL,
    "Last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "Contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_Contact_id" FOREIGN KEY("Contact_id")
REFERENCES "contacts" ("Contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_Category_id" FOREIGN KEY("Category_id")
REFERENCES "category" ("Category_id");

