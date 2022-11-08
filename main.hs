{-
and1::Bool->Bool->Bool
and1 x y|x==True && y==True=True
    |otherwise=False
    
main = do 
   putStr( "False AND False = " )
   print( and1 False False ) 
   putStr( "False AND True  = " ) 
   print( and1 False True ) 
   putStr( "True  AND False = " ) 
   print( and1 True False )
   putStr( "True  AND True  = " ) 
   print( and1 True True ) 
-}

{-
or1::Bool->Bool->Bool
or1 x y|x==False && y==False = False
    |otherwise = True
    
main = do
    putStr( "False OR False = " )
    print( or1 False False ) 
    putStr( "False OR True  = " )
    print( or1 False True )
    putStr( "True  OR False = " )
    print( or1 True False )
    putStr( "True  OR True  = " )
    print( or1 True True ) 
-}

{-
nand1::Bool->Bool->Bool
nand1 x y|x==True && y==True=False
    |otherwise=True
    
main = do 
   putStr( "False NAND False = " )
   print( nand1 False False ) 
   putStr( "False NAND True  = " ) 
   print( nand1 False True ) 
   putStr( "True  NAND False = " ) 
   print( nand1 True False )
   putStr( "True  NAND True  = " ) 
   print( nand1 True True ) 
-}

{-
nor1::Bool->Bool->Bool
nor1 x y|x==False && y==False = True
    |otherwise = False
    
main = do
    putStr( "False NOR False = " )
    print( nor1 False False ) 
    putStr( "False NOR True  = " )
    print( nor1 False True )
    putStr( "True  NOR False = " )
    print( nor1 True False )
    putStr( "True  NOR True  = " )
    print( nor1 True True )
-}


{-
fact::Int->Int {- Declaration of factorial function -}
{- | operator used for binding condition -}
fact n|n==0=1 {- Definition of factorial function for termination of recursion -}
fact n|n/=0=n*fact(n-1) {- Definition of factorial function for general case -}

main=do
    num <- getLine 
    let n = (read num :: Int) 
    print(fact n)
-}

{-
fib :: Int->Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

main = do
    num <- getLine 
    let x = (read num :: Int) 
    print(fib x)
-}

{-
reapply :: (a-> a) -> a -> a
reapply f x = f(f x)
sqr x = x * x
double x = x + x
half x = x/2

main = do
    putStrLn("Higher order functions Double, Half, Square")
    putStr("Double applied twice on 7 : ")
    print( reapply double 7 )
    putStr("Half applied twice on 7 : ")
    print( reapply half 7 )
    putStr("Square applied twice on 7 : ")
    print( reapply sqr 7 )
-}


mapf :: (a->b) -> [a] -> [b]
mapf f xs = [f x | x <- xs]

main = do
    print( mapf (+1) [1,3,5,7] )
    print( mapf (*2) [1,3,5,7] )
    print( mapf (+3) [2,4,6,8] )
    print( mapf (/2) [2,4,6,8] )