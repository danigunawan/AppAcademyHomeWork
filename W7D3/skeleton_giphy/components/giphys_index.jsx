import React from 'react';

import GiphysIndexItem from './giphys_index_item';

function GiphysIndex({ giphys }) {
  return (
    <ul>
      { giphys.map(gif => <GiphysIndexItem key={gif.id} gif={gif} />) }
    </ul>
  );
}

export default GiphysIndex;
