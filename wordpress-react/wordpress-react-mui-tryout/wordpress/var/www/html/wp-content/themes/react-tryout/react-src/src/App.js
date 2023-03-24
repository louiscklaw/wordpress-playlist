import React, { useEffect, useState } from 'react';
import logo from './logo.svg';
import './App.css';

import '@fontsource/roboto/300.css';
import '@fontsource/roboto/400.css';
import '@fontsource/roboto/500.css';
import '@fontsource/roboto/700.css';
import { Button } from '@mui/material';

function App() {
  let [json_content, setJsonContent] = useState('');
  let [json_posts, setJsonPosts] = useState('');
  let [render_post, setRenderPost]= useState('')

  function createMarkup() {
    return {__html: 'First &middot; Second'};
  }

  useEffect(() => {
    fetch('/wp-json')
      .then(res => res.json())
      .then(res_json => setJsonContent(JSON.stringify(res_json, null, 2)));

    fetch('/wp-json/wp/v2/posts')
      .then(res => res.json())
      .then(res_json => {
        setRenderPost( res_json[0].content.rendered)
        setJsonPosts(JSON.stringify(res_json[0].content.rendered, null, 2))
      })

    
  }, []);

  return (
    <div className="App">
      <Button variant="contained">Hello World</Button>

      <div>
        <pre>/wp-json/wp/v2/posts</pre>
        <div dangerouslySetInnerHTML={{__html: render_post}}></div>
        <div dangerouslySetInnerHTML={createMarkup()}></div>
        <pre>{json_posts}</pre>
      </div>
      <div>
      <pre>/wp-json</pre>
      <div id="json_content">
        <pre>{json_content}</pre>
      </div>
      </div>
    </div>
  );
}

export default App;
