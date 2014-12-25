import string
class Solution:
    alpha = list(string.ascii_uppercase)
    def convertToTitle(self, num):
        column = ""
        indices = []
        q, r = divmod(num - 1, 26)
        if q == 0:
            indices.append(r)
        else:
            indices.append(r)
            while q > 26:
                q, r = divmod(q - 1, 26)
                indices.insert(0, r)
            indices.insert(0, q - 1)
        
        for i in indices:
            column += self.alpha[i]
        return column

x = Solution()
print x.convertToTitle(4) #D
print x.convertToTitle(26) #Z
print x.convertToTitle(27) #AA
print x.convertToTitle(36) #AJ
print x.convertToTitle(52) #AZ
print x.convertToTitle(53) #BA
print x.convertToTitle(702) #ZZ
print x.convertToTitle(703) #AAA
print x.convertToTitle(18278) #ZZZ
