import flask
from flask import request, jsonify

app = flask.Flask(__name__)
app.config["DEBUG"] = True

# Create some test data for our catalog in the form of a list of dictionaries.
students = [
    {'id': 0,
     'name': 'Kamal',
     'city': 'Gurgaon',
     'State': 'Haryana',
     'Year_of_birth': '1987'},
    {'id': 1,
     'name': 'John',
     'city': 'Noida',
     'State': 'UP',
     'Year_of_birth': '1986'},
    {'id': 2,
     'name': 'Jane',
     'city': 'Mumbai',
     'State': 'Maharashtra',
     'Year_of_birth': '1985'},
     {'id': 3,
     'name': 'Parul',
     'city': 'Delhi',
     'State': 'Delhi',
     'Year_of_birth': '1990'}
]


@app.route('/', methods=['GET'])
def home():
    return '''<h1>Sample REST API</h1>
<p>This is a example api in flask.</p>'''


@app.route('/api/all', methods=['GET'])
def api_all():
    return jsonify(students)


@app.route('/api/record', methods=['GET'])
def api_id():
    if 'id' in request.args:
        id = int(request.args['id'])
    else:
        return "Error: No id field provided. Please specify an id."
    results = []
    for student in students:
        if student['id'] == id:
            results.append(student)
    return jsonify(results)


@app.route('/api/login', methods=["GET","POST"])
def login_page():
    error = ''
    try:
        if request.method == "POST":	
            usr = request.json.get('user')
            pwd = request.json.get('pwd')
            if (usr=='admin' and pwd=='admin'):
                return "Login successful"
            else:
                return "Invalid credentials. Try Again."
        return "ERROR OCCURED"

    except Exception as e:
        return e
    
app.run()
