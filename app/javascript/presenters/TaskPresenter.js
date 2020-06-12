import PropTypes from 'prop-types';
import PropTypesPresenter from 'utils/PropTypesPresenter';

import userPresenter from './UserPresenter';

export default new PropTypesPresenter({
  id: PropTypes.number,
  name: PropTypes.string,
  description: PropTypes.string,
  state: PropTypes.string,
  author: userPresenter.shape(),
  assignee: userPresenter.shape(),
  transitions: PropTypes.object,
});
