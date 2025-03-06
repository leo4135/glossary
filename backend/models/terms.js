import { connection } from "../connectToDB.js";
import { promisify } from "util"

const querySync = promisify(connection.query).bind(connection);

export async function getTerms(req, res) {
    try {
        const page = req.query.page;
            const limit = 10;
            const offset = (page - 1) * 10;
            const resultTerms = page ? await querySync(`SELECT *
             FROM nodes
              LIMIT ? OFFSET ?;`, [limit, offset]) : await querySync(`SELECT *
                FROM nodes;`);
            const totalTerms = await querySync(`SELECT COUNT(*)
                FROM nodes;`);
                const resultEdges = await querySync(`SELECT *
                    FROM edges;`);
            res.json({ resultTerms, resultEdges, totalTermsPages: Math.ceil(totalTerms[0]['COUNT(*)'] / 10) } );
    } catch (e) {
        console.log(e);
        res.send(`<h1>Что-то пошло не так</h1>`);
    }
}