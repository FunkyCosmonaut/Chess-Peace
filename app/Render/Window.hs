module Render.Window where

import Graphics.UI.GLUT

myPoints :: [(GLfloat, GLfloat, GLfloat)]
myPoints = [(sin (2*pi*k/12), cos(2*pi*k/12), 0) | k <- [1..12]]
 
display :: DisplayCallback
display = do
  clear [ ColorBuffer ]
  renderPrimitive Points $
    mapM_ (\(x,y,z) -> vertex $ Vertex3 x y z) myPoints
  flush

--renderPrimitive Points do
 -- vertex (Vertex3 1 1 1)

