-- DropForeignKey
ALTER TABLE "addresses" DROP CONSTRAINT "addresses_contact_id_fkey";

-- AddForeignKey
ALTER TABLE "addresses" ADD CONSTRAINT "addresses_contact_id_fkey" FOREIGN KEY ("contact_id") REFERENCES "contacts"("id") ON DELETE CASCADE ON UPDATE CASCADE;
