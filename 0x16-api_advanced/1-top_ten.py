#!/usr/bin/python3
"""queries reddit api"""
import requests


def top_ten(subreddit):
    """returns top 10 hot posts of a subreddit"""
    url = f'https://www.reddit.com/r/{subreddit}/hot.json?limit=10'
    headers = {'User-Agent': 'CustomHeader/0.1'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        for post in response.json()['data']['children']:
            print(post['data']['title'])
    else:
        print(None)
