
//implement your custom action/function logic
const cds = require('@sap/cds');

class AdminService extends cds.ApplicationService {

    init() {
        const { Books, Authors } = this.entities;

        //before executes before the generic handler event (CRUD)
        this.before('READ', 'Books', async function (req) {
            console.log("executed before generic handler ");
        })

        this.on('someAction', async (req) => {
            const id = req.data.ID;
            console.log(id);
            return id;
            
        })

        this.on('findBookStores', async(req)=>
    {
        const query = cds.run (`SELECT.from(Books)`)
    })
        return super.init();
    }
}


module.exports = AdminService


//old way of calling 
// module.exports = cds.service.impl(async function () {

//     this.before('READ', 'Books', async (req) => {

//         console.log("Executed Before Read");
//     });

//     this.after('READ', 'Books', async (rq, res) => {
//         console.log("executed after Read");
//     })

// });