'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/services.html#core-services)
 * to customize this service
 */

module.exports = {
  updatePrice: async (ctx, discount) => {
    const activities = await strapi.services.activity.find();

    const updatedActivities = Promise.all(
      activities.map(item => {
        const data = {
          ...item,
          price: item.price - (item.price * (discount/100))
        }

        return strapi.services.activity.update({id:item.id},data)
      })
    );

    return updatedActivities;
  }
};
