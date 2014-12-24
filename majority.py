class Solution:
    # @param num, a list of integers
    # @return an integer
    def majorityElement(self, num):
        if len(num) == 1:
            return num[0]
        storage = {}
        max = len(num)/2
        for el in num:
            if storage.has_key(el):
                storage[el] += 1
                if storage[el] > max:
                    return el
            else:
                storage[el] = 1
