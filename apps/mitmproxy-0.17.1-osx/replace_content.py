from collections import namedtuple
Replacement = namedtuple('Replacement', ['pattern', 'filepath'])
# 배열로 패턴을 받을 수 있다.
# 여러개의 패턴과 저장 파일을 가지고 디버깅이 가능하다.
REPLACEMENTS = map(Replacement._make, [
    # pattern, filepath
    ('~u giftshop/orderSheet/popupPersonalCertification', 'test'),
    # ('~u /product', 'test02'),
])
 
def request(context, flow):
    flow.request.anticache()
    flow.request.anticomp()
 
def response(context, flow):
    for replacement in REPLACEMENTS:
        # test for filter patterns with flow.match
        if flow.match(replacement.pattern):
            with open(replacement.filepath) as f:
                flow.response.content = f.read()
