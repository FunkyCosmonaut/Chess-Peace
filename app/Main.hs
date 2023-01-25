module Main where
import Render.Render
import Graphics.UI.GLUT
 
main :: IO ()
main = do
  (_progName, _args) <- getArgsAndInitialize
  _window <- createWindow "Test Window"
  displayCallback $= display
  mainLoop
 
