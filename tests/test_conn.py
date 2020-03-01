import pymysql


def test_conn():
    connection = pymysql.connect(host='localhost',
                                 port=3306,
                                 user='user',
                                 password='',
                                 db='',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)

    connection.close()