'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

const { parseMultipartData, sanitizeEntity } = require('strapi-utils');

module.exports = {
  create: async ctx => {
    if (ctx.is('multipart')) {
      const { data, files } = parseMultipartData(ctx);
      entity = await strapi.services.activity.create(data, { files });
    } else {
      entity = await strapi.services.activity.create(ctx.request.body);
    }
    strapi.services.email.send();
    return sanitizeEntity(entity, { model: strapi.models.restaurant });


  },

  updatePrice: async ctx => {
    const {discount} = ctx.request.body;
    const data = await strapi.services.activity.updatePrice(ctx,discount);
    strapi.services.email.send();


    ctx.send(data);
  }
};
