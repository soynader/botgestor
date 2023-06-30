import { isSessionExists, createSession, getSession, deleteSession } from '../middlewares/req.js'
import response from './../response.js'
import query from '../database/dbpromise.js'
import fs from 'fs'

function saveAsJson(data, filePath) {
    try {
        const jsonData = JSON.stringify(data, null, 2);
        fs.writeFileSync(filePath, jsonData);
        console.log('JSON file saved successfully.');
    } catch (err) {
        console.error('Error saving JSON file:', err);
    }
}

const find = (req, res) => {
    response(res, 200, true, 'Session found.')
}

function waitForConnectionUpdate(sock) {
    return new Promise((resolve) => {
        sock.ev.on('connection.update', (update) => {
            const { connection, lastDisconnect, qr, isNewLogin } = update;
            console.log({ connection, update });
            resolve(update);
        });
    });
}

const status = (req, res) => {
    const states = ['connecting', 'connected', 'disconnecting', 'disconnected']

    const session = getSession(res.locals.sessionId)
    let state = states[session.ws.readyState]

    state =
        state === 'connected' && typeof (session.isLegacy ? session.state.legacy.user : session.user) !== 'undefined'
            ? 'authenticated'
            : state

    // console.log(true, '', { status: state })

    const status = session.user ? true : false

    console.log(session.user)

    response(res, 200, status, '', { status: state, loginStatus: session.user })
}

const add = async (req, res) => {
    const { id, isLegacy } = req.body

    if (isSessionExists(id)) {
        return response(res, 409, false, 'Session already exists, please use another id.')
    }

    // adding new client in database for this user
    await query(`INSERT INTO instance (uid, client_id, name) VALUES (?,?,?)`, [
        req.decode.uid, id, req.body.name
    ])

    createSession(id, isLegacy === 'true', res, req)
}

const del = async (req, res) => {
    const { id } = req.params
    const session = getSession(id)

    try {
        await session.logout()
    } catch {
    } finally {
        deleteSession(id, session.isLegacy)
    }
    response(res, 200, true, 'The session has been successfully deleted.', { msg: "The session was deleted" })
}

// get all users sessions 
const getUserSessions = async (req, res) => {
    try {
        const data = await query(`SELECT * FROM instance WHERE uid = ?`, [req.decode.uid])
        res.json({ success: true, data: data })
    } catch (err) {
        console.log(err)
        res.json({ err, msg: "server error" })
    }
}


export { find, status, add, del, getUserSessions }
