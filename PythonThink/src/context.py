from contextlib import contextmanager
@contextmanager
def context():
    print('context')
    try:
        print('ok')
#         yield
    except Exception as e :
        print (e)
context()
context.func_name