'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/controllers.html#core-controllers)
 * to customize this controller
 */

module.exports = {
  updatePrice: async ctx => {
    const {discount} = ctx.request.body;
    const data = await strapi.services.activity.updatePrice(ctx,discount);

    ctx.send(data);
  }
};
