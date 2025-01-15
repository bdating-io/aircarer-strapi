/**
 * custom job router
 */

export default {
  routes: [
    {
      method: 'POST',
      path: '/postjob',
      handler: 'job.postjob'
    }
  ]
}