# -*- coding: utf-8 -*-


import json, re
import requests
from bs4 import BeautifulSoup, element


class PriceModel(object):
    ticket = 0              # 單程票
    card_normal = 0     # 普卡
    card_student = 0    # 學生卡
    card_welfare = 0    # 社福卡
    time = 0            # 行駛時間

    def __init__(self, ticket=0, card_normal=0, card_student=0, card_welfare=0, time=0):
        self.ticket = ticket
        self.card_normal = card_normal
        self.card_student = card_student
        self.card_welfare = card_welfare
        self.time = time



class PriceParser(object):
    url = 'http://www.krtco.com.tw/'
    target = './price-data'


    def parse(self):
        stations = self.getStations()
        for start in stations:
            print 'loading %s' % start
            price_data = {}
            for end in stations:
                r = requests.post(self.url, data={'ScriptManager1': 'UpdatePanel1|button3',
                                                  'ddlStation1': start,
                                                  'ddlStation2': end,
                                                  '__EVENTTARGET': 'button3',
                                                  '__VIEWSTATE': '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',
                                                  '__EVENTVALIDATION': '/wEWBALOs/S8AwKv8I/vBgLK2a2EAQL2jM+bAu9OuVQRyM0ci6XOjp/ACX1HoZjE',
                                                  })
                soup = BeautifulSoup(r.content)
                price = PriceModel()
                price.ticket = soup.find('span', {'id': 'lblTicket'}).contents[0]
                price.card_normal = soup.find('span', {'id': 'lblTicket1'}).contents[0]
                price.card_student = soup.find('span', {'id': 'lblTicket3'}).contents[0]
                price.card_welfare = soup.find('span', {'id': 'lblTicket2'}).contents[0]
                price.time = soup.find('span', {'id': 'lblShipping'}).contents[0]
                price_data[end] = price.__dict__

            f = open('%s/%s.json' % (self.target, start), 'w')
            f.write(json.dumps(price_data))


    def getStations(self):
        """
        Get all stations from web.
        :return: ['Station name']
        """
        r = requests.post(self.url, data={'ScriptManager1': 'UpdatePanel1|button3'})
        soup = BeautifulSoup(r.content)
        stations = []
        for item in soup.findAll('select', {'id': 'ddlStation1'})[0].contents:
            if isinstance(item, element.Tag) and item['value'] != '0':
                stations.append(item['value'])

        return stations



if __name__ == '__main__':
    parser = PriceParser()
    parser.parse()
    print 'done'
