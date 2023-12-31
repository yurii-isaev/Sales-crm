CREATE DATABASE sales_db;
    
-- Remove tables
DROP TABLE "AspNetRoleClaims";
DROP TABLE "AspNetUserClaims";
DROP TABLE "AspNetRoles" CASCADE;
DROP TABLE "AspNetUserLogins";
DROP TABLE "AspNetUserRoles";
DROP TABLE "AspNetUsers" CASCADE;
DROP TABLE "AspNetUserTokens";
DROP TABLE "User" CASCADE;

-- Clean tables
TRUNCATE TABLE "AspNetUsers" RESTART IDENTITY CASCADE;
TRUNCATE TABLE "Employees" RESTART IDENTITY CASCADE;

-- Creating an AspNetRoles table if it doesn't exist
-- CREATE TABLE IF NOT EXISTS AspNetRoles
-- (
--     Id               UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
--     Name             VARCHAR(255) NOT NULL,
--     NormalizedName   VARCHAR(255) NOT NULL,
--     ConcurrencyStamp UUID             DEFAULT uuid_generate_v4()
-- );

-- Create administrator role
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp")
VALUES ('1', 'Admin', 'ADMIN', null);


-- Assign administrator role user
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId")
VALUES ('e877e75f-0849-4a4c-a1cd-6767517951ad', '1');
