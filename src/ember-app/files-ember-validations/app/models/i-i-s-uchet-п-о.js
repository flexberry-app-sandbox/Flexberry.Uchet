import {
  defineNamespace,
  defineProjections,
  Model as ПОMixin
} from '../mixins/regenerated/models/i-i-s-uchet-п-о';

import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

let Model = EmberFlexberryDataModel.extend(ПОMixin, {
});

defineNamespace(Model);
defineProjections(Model);

export default Model;
