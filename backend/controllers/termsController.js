import { getTerms } from "../models/terms.js";
import express from "express";


const router = express.Router();

router.get("/", (req, res) => {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    getTerms(req, res);
});

export default router;

