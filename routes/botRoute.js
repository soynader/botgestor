import { Router } from 'express'
import * as controller from '../controllers/botController.js'
import userValidator from '../middlewares/userValidator.js'
import { checkLeftMessage, checkPlanExpiry } from '../middlewares/userPlanValidator.js'

const router = Router()

// router.post('/webhook', controller.webhook)

router.post('/add', userValidator, checkPlanExpiry, checkLeftMessage, controller.addBot)

router.get('/get', userValidator, controller.getAllBot)

router.post('/off-on', userValidator, controller.botOffOn)

router.post('/del-bot', userValidator, controller.delBot)

export default router
