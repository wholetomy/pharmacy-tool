import { Router } from "express";
import { ZodError } from "zod";
import { createUserSchema } from "../schemas/users.schema.js";
import { createUser, getUsers } from "../services/users.service.js";

const router = Router();

router.get("/", async (req, res) => {
  try {
    const users = await getUsers();

    res.json(users);
  } catch (error) {
    console.error(error);

    res.status(500).json({
      message: "Internal server error"
    });
  }
});

router.post("/", async (req, res) => {
  try {
    const data = createUserSchema.parse(req.body);

    const user = await createUser(data);

    res.status(201).json(user);
  } catch (error) {
    if (error instanceof ZodError) {
      res.status(400).json({
        message: "Validation error",
        errors: error.issues
      });

      return;
    }

    console.error(error);

    res.status(500).json({
      message: "Internal server error"
    });
  }
});

export default router;