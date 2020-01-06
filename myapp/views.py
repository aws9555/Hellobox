from django.shortcuts import render
import ast
import MySQLdb
import os

with open(os.path.dirname(os.path.realpath(__file__))+'\\mariadb.txt', mode='r') as f:
    config = ast.literal_eval(f.read())

# Create your views here.
def MainFunc(request):
    return render(request, 'main.html')

def ClientMainFunc(request):
    return render(request, 'clientMain.html')

def KeepBoxFunc(request):
    try:
        conn = MySQLdb.connect(**config)
        cursor = conn.cursor()
        sql = "select box_num , box_isuse from box"
        cursor.execute(sql)
        return render(request, 'clientChooseBox_keep.html',{'data':cursor.fetchall()}) 
    except Exception as e:
        print("KeepBoxFunc err", e)
    finally:
        cursor.close()
        conn.close()
        
def KeepBoxPwdFunc(request):
    if request.method == 'GET':
        return render(request, 'clientPwdInsert.html', {'box_num':request.GET['id']})
    