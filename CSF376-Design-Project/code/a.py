import javalang
tree = javalang.parse.parse('public class a{ public static void main(String args[]){}}')
def get_name(obj):
    a = []
    if(type(obj).__name__ in ['list','tuple']):
        for i in obj:
            a.append(get_name(i))
        return a
    else:
        if(type(obj).__name__ not in ['int','double','float','str']):
            return type(obj).__name__
        else:
            return obj
for path,node in tree:
    a = get_name(path)
    print(a,type(node).__name__)
