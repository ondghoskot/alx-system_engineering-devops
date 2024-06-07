#!/usr/bin/python3
"""queries reddit api"""
import requests


def number_of_subscribers(subreddit):
    """returns number of subscribors of a subreddit"""
    url = f'htpps://www.reddit.com/r/{subreddit}/about.json'
    headers = {'User-Agent': 'CustomHeader/0.1'}
    response = request.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        return response.json()['data']['subscribers']
    return 0
