var chai = require('chai')
  , chaiHttp = require('chai-http');
 
chai.use(chaiHttp);

const {app, runServer, closeServer} = require('../index');

const expect = chai.expect;

describe("Home",function(){
    before(function() {
        return runServer();
      });
    
      // although we only have one test module at the moment, we'll
      // close our server at the end of these tests. Otherwise,
      // if we add another test module that also has a `before` block
      // that starts our server, it will cause an error because the
      // server would still be running from the previous tests.
      after(function() {
        return closeServer();
      });

      it("should list items on GET", function() {
        return chai
          .request(app)
          .get("/data")
          .then(function(res) {
            expect(res).to.have.status(200);
            expect(res).to.be.json;
            expect(res.body).to.be.a("array");
            expect(res.body.length).to.be.above(0);
            });
          });
});
