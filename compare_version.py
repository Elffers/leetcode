class Solution:
    # @param version1, a string
    # @param version2, a string
    # @return an integer
    def compareVersion(self, version1, version2):
        v1 = version1.split('.') 
        v2 = version2.split('.') 
        l1 = len(v1)
        l2 = len(v2)
        if l1 < l2:
            while len(v1)< l2: 
                v1.append(0)
        if l1 > l2:
            while l1> len(v2): 
                v2.append(0)
        zipped = zip(v1,v2)
        for i, pair in enumerate(zipped):
            a = int(pair[0])
            b = int(pair[1])
            if a > b:
                return  1
            elif b > a:
                return -1
            elif i == len(zipped) - 1:
                return 0

x = Solution()
print x.compareVersion('0.1', '0.0.1') # 1
print x.compareVersion('2.0', '2') # 0
print x.compareVersion('2.0.1', '2.2') # -1
print x.compareVersion('01', '1') # 0
print x.compareVersion('1', '1.1') # -1

