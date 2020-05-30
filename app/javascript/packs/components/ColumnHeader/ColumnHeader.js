import React from 'react';
import PropTypes from 'prop-types';

import IconButton from '@material-ui/core/IconButton';
import SystemUpdateAltIcon from '@material-ui/icons/SystemUpdateAlt';

import useStyles from './useStyles';

const ColumnHeader = ({ column, onLoadMore }) => {
  const styles = useStyles();

  const {
    id,
    title,
    meta: { count, totalCount, currentPage, perPage },
  } = column;

  const handleLoadMore = () => onLoadMore(id, currentPage, perPage + 10);

  return (
    <div className={styles.root}>
      <div className={styles.title}>
        <b>{title}</b> ({count}/{totalCount || '…'})
      </div>
      <div className={styles.actions}>
        <IconButton aria-label="Load more" onClick={() => handleLoadMore()}>
          <SystemUpdateAltIcon fontSize="small" />
        </IconButton>
      </div>
    </div>
  );
};

ColumnHeader.propTypes = {
  column: PropTypes.shape({
    id: PropTypes.string,
    title: PropTypes.string,
    cards: PropTypes.arrayOf(PropTypes.object),
    meta: PropTypes.object,
  }).isRequired,

  onLoadMore: PropTypes.func.isRequired,
};

export default ColumnHeader;
