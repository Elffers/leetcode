class Solution:
    # @param num, a list of integer
    # @return an integer
    def findPeakElement(self, num):
        peak = 0
        for i in range(1,len(num)):
            current = num[i]
            if current < num[i-1]:
                return peak
            else:
                peak = i 
        return peak

x = Solution()
print x.findPeakElement([1])
print x.findPeakElement([1, 2])
print x.findPeakElement([3, 2, 1])
print x.findPeakElement([3, 4, 1])
print x.findPeakElement([3, 4, 5])
