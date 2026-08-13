import { ResultSetHeader, RowDataPacket } from "mysql2";
import { db } from "../utils/database.js";
import { CreateUserInput } from "../schemas/users.schema.js";

interface User extends RowDataPacket {
  id: number;
  name: string;
  email: string;
  created_at: Date;
}

export async function getUsers(): Promise<User[]> {
  const [rows] = await db.query<User[]>(
    `
      SELECT
        id,
        name,
        email,
        created_at
      FROM users
      ORDER BY id DESC
    `
  );

  return rows;
}

export async function createUser(data: CreateUserInput): Promise<User> {
  const [result] = await db.execute<ResultSetHeader>(
    `
      INSERT INTO users (name, email)
      VALUES (?, ?)
    `,
    [data.name, data.email]
  );

  const [rows] = await db.query<User[]>(
    `
      SELECT
        id,
        name,
        email,
        created_at
      FROM users
      WHERE id = ?
    `,
    [result.insertId]
  );

  return rows[0];
}