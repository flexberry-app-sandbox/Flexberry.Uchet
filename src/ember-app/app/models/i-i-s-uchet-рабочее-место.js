import { buildValidations } from 'ember-cp-validations';
import EmberFlexberryDataModel from 'ember-flexberry-data/models/model';

import {
  defineProjections,
  ValidationRules,
  Model as РабочееМестоMixin
} from '../mixins/regenerated/models/i-i-s-uchet-рабочее-место';

const Validations = buildValidations(ValidationRules, {
  dependentKeys: ['model.i18n.locale'],
});

let Model = EmberFlexberryDataModel.extend(РабочееМестоMixin, Validations, {
});

defineProjections(Model);

export default Model;
