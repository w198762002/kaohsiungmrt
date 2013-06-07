#高雄捷運

##Price Parser
data path: /parser/price-data
```python
class PriceModel(object):
    ticket = 0        # 單程票
    card_normal = 0   # 普卡
    card_student = 0  # 學生卡
    card_welfare = 0  # 社福卡
    time = 0          # 行駛時間
```
```
$ cd parser
$ python PriceParser.py
```