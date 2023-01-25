module Render.Render where

import Graphics.UI.GLUT
 
display :: DisplayCallback
display = do
  clear [ ColorBuffer ]
  flush
