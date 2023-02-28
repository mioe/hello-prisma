/*
  Warnings:

  - You are about to drop the column `bradding` on the `ActionTypeChat` table. All the data in the column will be lost.
  - You are about to drop the column `bradding` on the `ActionTypeMessage` table. All the data in the column will be lost.
  - You are about to drop the column `bradding` on the `ActionTypeModal` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "ActionTypeChat" DROP COLUMN "bradding",
ADD COLUMN     "branding" BOOLEAN NOT NULL DEFAULT true;

-- AlterTable
ALTER TABLE "ActionTypeMessage" DROP COLUMN "bradding",
ADD COLUMN     "branding" BOOLEAN NOT NULL DEFAULT true;

-- AlterTable
ALTER TABLE "ActionTypeModal" DROP COLUMN "bradding",
ADD COLUMN     "branding" BOOLEAN NOT NULL DEFAULT true;
