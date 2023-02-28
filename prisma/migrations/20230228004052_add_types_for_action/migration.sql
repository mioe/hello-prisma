-- CreateTable
CREATE TABLE "ActionTypeMessage" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "actionId" UUID NOT NULL,
    "redirect" TEXT NOT NULL DEFAULT 'whatsapp-and-telegram',
    "avatarEnabled" BOOLEAN NOT NULL DEFAULT false,
    "avatarId" UUID,
    "title" TEXT,
    "text" TEXT,
    "isDark" BOOLEAN NOT NULL DEFAULT false,
    "bradding" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "ActionTypeMessage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ActionTypeChat" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "actionId" UUID NOT NULL,
    "redirect" TEXT NOT NULL DEFAULT 'whatsapp-and-telegram',
    "avatarId" UUID,
    "operatorName" TEXT NOT NULL,
    "messageNumber1" TEXT NOT NULL,
    "messageNumber2" TEXT,
    "quickAnswerEnabled" BOOLEAN NOT NULL DEFAULT false,
    "quickAnswer" JSONB,

    CONSTRAINT "ActionTypeChat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ActionTypeModal" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "actionId" UUID NOT NULL,
    "redirect" TEXT NOT NULL DEFAULT 'whatsapp-and-telegram',
    "backgroundPosition" TEXT NOT NULL DEFAULT 'right',
    "text" TEXT,
    "extraTextEnabled" BOOLEAN NOT NULL DEFAULT false,
    "whatsappButtonText" TEXT,
    "whatsappQrcodeText" TEXT,
    "telegramButtonText" TEXT,
    "telegramQrcodeText" TEXT,
    "isDark" BOOLEAN NOT NULL DEFAULT false,
    "bradding" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "ActionTypeModal_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ActionTypeMessage_actionId_key" ON "ActionTypeMessage"("actionId");

-- CreateIndex
CREATE UNIQUE INDEX "ActionTypeChat_actionId_key" ON "ActionTypeChat"("actionId");

-- CreateIndex
CREATE UNIQUE INDEX "ActionTypeModal_actionId_key" ON "ActionTypeModal"("actionId");

-- AddForeignKey
ALTER TABLE "ActionTypeMessage" ADD CONSTRAINT "ActionTypeMessage_actionId_fkey" FOREIGN KEY ("actionId") REFERENCES "Action"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ActionTypeMessage" ADD CONSTRAINT "ActionTypeMessage_avatarId_fkey" FOREIGN KEY ("avatarId") REFERENCES "PublicFile"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ActionTypeChat" ADD CONSTRAINT "ActionTypeChat_actionId_fkey" FOREIGN KEY ("actionId") REFERENCES "Action"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ActionTypeChat" ADD CONSTRAINT "ActionTypeChat_avatarId_fkey" FOREIGN KEY ("avatarId") REFERENCES "PublicFile"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ActionTypeModal" ADD CONSTRAINT "ActionTypeModal_actionId_fkey" FOREIGN KEY ("actionId") REFERENCES "Action"("id") ON DELETE CASCADE ON UPDATE CASCADE;
