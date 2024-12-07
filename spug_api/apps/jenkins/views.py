from django.shortcuts import render

from django.views.generic import View
from libs import json_response


class JobView(View):
    def get(self, request):
        data = [
            {"name": "job1"},
            {"name": "job1"}
        ]

        return json_response(data)
