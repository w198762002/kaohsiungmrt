

import json, re
import requests
from bs4 import BeautifulSoup, element


class PriceParser(object):
    url = 'http://www.krtco.com.tw/'
    target = '/price-data'


    def parse(self):
        stations = self.getStations()


    def getStations(self):
        """
        Get all stations from web.
        :return: ['Station name']
        """
        r = requests.post(self.url, allow_redirects=False, data={'ScriptManager1': 'UpdatePanel1|button3'})
        soup = BeautifulSoup(r.content)
        stations = []
        for item in soup.findAll('select', {'id': 'ddlStation1'})[0].contents:
            if isinstance(item, element.Tag) and item['value'] != '0':
                stations.append(item['value'])

        return stations



if __name__ == '__main__':
    parser = PriceParser()
    print parser.getStations()
