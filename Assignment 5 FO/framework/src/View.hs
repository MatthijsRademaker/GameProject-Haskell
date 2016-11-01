{-# LANGUAGE RecordWildCards #-}

module View (
    draw
) where

import Graphics.Gloss
import Graphics.Gloss.Geometry.Angle

import Model

-- | Drawing

draw :: Float -> Float -> World -> Picture
draw horizontalResolution verticalResolution world@(World{rndGen,rotateAction,movementAction,shootAction, rotation, translation})
                                                              =Translate (takeX translation) (takeY translation) (Rotate rotation player) 
                                                              
player :: Picture
player = Color white (polygon triangle)

triangle :: Path 
triangle  = [(-5,-5), (5, -5), (0, 12)]

takeX :: Vector -> Float
takeX (x,_) = x

takeY :: Vector -> Float
takeY (_,y) = y