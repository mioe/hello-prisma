/*
  Warnings:

  - Made the column `text` on table `ActionTypeMessage` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "ActionTypeMessage" ALTER COLUMN "text" SET NOT NULL;
