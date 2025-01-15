/**
 * job controller
 */

import { factories } from '@strapi/strapi'

export default factories.createCoreController('api::job.job', ({ strapi }) =>  ({
  async postjob(ctx, next) { 
    const { data, files } = ctx.request.body;
    console.log("----- data= " +JSON.stringify(data))
    // Example: Add a timestamp to your data
    // if (data) {
    //   data.title = "overriden title postjob";
    //   data.postedby = {connect: {id:3}};
    // } 

    // Call the original create method with super
    let response = await super.create(ctx);
    return response;
  },
  // async create(ctx, next) {  
  //       const { data, files } = ctx.request.body;

  //       // Example: Add a timestamp to your data
  //       // if (data) {
  //       //   data.title = "overriden title";
  //       //   data.postedby =  {
  //       //     "id": 1
  //       //     }
  //       // }
    
  //       // Call the original create method with super
      
  //       let response = await super.create(ctx);
  //       return response;
  //   },

   
}));
