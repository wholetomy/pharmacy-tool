import { z } from "zod";

export const createUserSchema = z.object({
  name: z
    .string()
    .min(2, "Name must contain at least 2 characters")
    .max(150, "Name must contain at most 150 characters"),

  email: z
    .string()
    .email("Invalid email")
    .max(255, "Email must contain at most 255 characters")
});

export type CreateUserInput = z.infer<typeof createUserSchema>;