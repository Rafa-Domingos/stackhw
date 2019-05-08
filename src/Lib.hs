module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do 
    number <- getLine           -- read from stdin
    print $myFat (read number)  -- convert line readed from String to Int, calls myFat function and print result

myFat :: Int -> Int
myFat x | x == 0 = 1                    -- if x eq 0 then 1
        | otherwise  = x * myFat (x-1)  -- else multiply x by the result of the recursive call
