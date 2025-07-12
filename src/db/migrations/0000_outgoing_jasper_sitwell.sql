CREATE TYPE "public"."FeedLyticlink_status" AS ENUM('active', 'inactive');--> statement-breakpoint
CREATE TABLE "feedbacks" (
	"id" text PRIMARY KEY NOT NULL,
	"createTs" timestamp DEFAULT now() NOT NULL,
	"name" text NOT NULL,
	"description" text NOT NULL,
	"feedbackLink" text,
	"status" "FeedLyticlink_status" NOT NULL,
	"privacy" text NOT NULL,
	"userId" text NOT NULL,
	"messages" jsonb DEFAULT '[]'::jsonb NOT NULL
);
