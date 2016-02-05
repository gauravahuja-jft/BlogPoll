import blogpoll.*

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Authority(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Authority(authority: 'ROLE_USER').save(flush: true)

        def testUser = new User(username: 'admin', enabled: true, password: 'admin', name: 'Gaurav Ahuja', emailId: 'gaurav.ahuja@jellyfishtechnologies.com')
        def stdUser = new User(username: 'gaurav', enabled: true, password: 'gaurav', name: 'Gaurav Ahuja', emailId: 'gaurav_ahuja@live.com')
        testUser.save(flush: true)
        stdUser.save(flush: true)

        UserAuthority.create testUser, adminRole, true
        UserAuthority.create stdUser, userRole, true

      /*  assert User.count() == 2
        assert Authority.count() == 2
        assert UserAuthority.count() == 2*/
    }


    def destroy = {
    }
}
