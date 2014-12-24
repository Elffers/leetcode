class Solution:
    # @param version1, a string
    # @param version2, a string
    # @return an integer
    def compareVersion(self, version1, version2):
        if version1[0] == version2[0] == '0':
            v1 = float(''.join(list(version1)[2:]))
            v2 = float(''.join(list(version2)[2:]))
        else:
            v1 = int(version1.replace('.', ''))
            v2 = int(version2.replace('.', ''))
        print 'v1', v1, 'v2', v2
        if v1 > v2:
            return 1
        elif v2 > v1:
            return -1
        else:
            return 0

x = Solution()
print x.compareVersion('0.1', '0.0.1')
print x.compareVersion('1.0', '1')

