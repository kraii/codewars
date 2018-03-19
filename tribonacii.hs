module Tribonacci where
tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (x, y, z) 0 = []
tribonacci (x, y, z) n = x:(take (n - 1) tribs)
    where tribs = map fstOf3 $ iterate trib start
          trib (a,b,c) = (b,c,a+b+c)  
          start = (y, z, x + y +z)
          fstOf3 (first, _, _) = first
