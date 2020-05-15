# Python
## Roles of `__init__.py`

-  show directory has python script
-  initialize when import modules

読み込むmodule名と実行ファイル名が同一の場合エラーが起きるので注意

## Class
By describing "class: Meta", you can define something that is not defined in forms.ModelForm.

```python
class MessageForm(forms.ModelForm):
    class Meta:
        model = Message
        fields = ['owner','group','content']

class CreateGroupForm(forms.Form):
    group_name = forms.CharField(max_length=50)
```

## Methods
### Special methods
-  __init__
-  __str__
-  __bool__

etc..

__init__ is used in the first variable definition.
For str etc., when the function str () is called, you can specify the value to return as follows.


```python
class User():
 
    def __init__(self, name="", age=0):
        self.name = name
        self.age = age
 
    def say_hello(self):
        print("Hello, my name is " + self.name)
 
    def __str__(self):
        return "name:" + self.name + " age:" + str(self.age)

    def __bool__(self):
        return True


user = User("hoge", 20)
str(user)
# 'name:hoge age:20'

bool(user)
# True
```

## Modules
**__future__**
apply to ver2,3
```python
from __future__ import division, print_function, absolute_import, unicode_literals
```

## Jupiter
convert notebook to html
```bash
notebook=notebook.ipynb
jupyter nbconvert --to html ${notebook}
```

run notebook
```bash
jupyter notebook --ip=* --no-browser
``` 

## Julia
<https://github.com/bicycle1885/Julia-Tutorial>
<https://github.com/JuliaLang/julia>

## Kaggle
<https://github.com/Kaggle/kaggle-api>

## inspect
```python
import inspect
import requests

inspect.getsource(requests.get)
```

## vars
```python
vars(obj)
```

## Reference
[Python Docs](https://docs.python.org/3/)
<https://github.com/GoogleCloudPlatform/python-docs-samples>

## Samples
<script src="https://gist-it.appspot.com/https://github.com/ymmmtym/engneer-tutorial/blob/master/scripts/backend/python/lib/scraping.py"></script>
