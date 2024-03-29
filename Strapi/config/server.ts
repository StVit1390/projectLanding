export default ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  url: env('PUBLIC_URL', 'http://172.233.60.71:1337'),
  port: env.int('PORT', 1337),
  app: {
    keys: env.array('APP_KEYS'),
  },
  webhooks: {
    populateRelations: env.bool('WEBHOOKS_POPULATE_RELATIONS', false),
  },
});
