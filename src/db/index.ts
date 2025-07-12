import { drizzle } from "drizzle-orm/neon-http";
import { neon, NeonConfig, neonConfig } from "@neondatabase/serverless";
import { Feedbacks } from "./schema";

(neonConfig as NeonConfig).fetch = fetch;
const sql = neon(process.env.DATABASE_URL!); // uses WebSockets
export const db = drizzle(sql, {
  schema: { Feedbacks },
});
