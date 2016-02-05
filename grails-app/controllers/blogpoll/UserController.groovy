package blogpoll

import org.springframework.security.access.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    @Secured(['ROLE_USER'])
    def home(){
        render view: '/user/home'
    }
}
