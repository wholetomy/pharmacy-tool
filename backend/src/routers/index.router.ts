import { Router } from "express";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    message: "Pharmacy Tool API"
  });
});

export default router;