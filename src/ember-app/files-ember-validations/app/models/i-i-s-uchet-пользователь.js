import {
  defineNamespace,
  defineProjections,
  Model as ПользовательMixin
} from '../mixins/regenerated/models/i-i-s-uchet-пользователь';

import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

let Model = EmberFlexberryDataModel.extend(ПользовательMixin, {
});

defineNamespace(Model);
defineProjections(Model);

export default Model;
