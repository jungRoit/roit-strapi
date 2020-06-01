module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: env('DB_CLIENT'),
        host: env('DB_HOST'),
        port: env('DB_PORT'),
        database: env('DB_NAME'),
      },
      options: {
        useNullAsDefault: true,
      },
    },
  },
});
