from flask import Flask, render_template, request ,session ,redirect ,flash
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from flask_mail import Mail, Message
import json
import os 
import math
from werkzeug.utils import secure_filename

with open('static/config.json', 'r') as c:
    params = json.load(c)["params"]
# params=open("static/config.json","r")
# params=json.load(open('C:\\DATA\\flask Tutorial\\static\\config.json'))
local_server = True
app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = params['upload_location']
# secret key for session
app.secret_key = 'super_secret_key'

'''Sending mail using Flask'''
app.config.update(
    MAIL_SERVER='smtp.gmail.com',
    MAIL_PORT='465',
    MAIL_USE_SSL='True',
    MAIL_USERNAME=params["gmail_user"],
    MAIL_PASSWORD=params["gmail_pass"]
)

mail = Mail(app)
if(local_server == "localhost"):
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:@localhost/wecode'.format(
        user='your_user', password='password', server='localhost', database='dname')
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:@localhost/wecode'.format(
        user='your_user', password='password', server='localhost', database='dname')

db = SQLAlchemy(app)

class Contacts(db.Model):
    ''' table_column_name'''
    '''sno,name,email,phone,msg'''
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80),  nullable=False)
    email = db.Column(db.String(30))
    phone = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class sample_post(db.Model):
    ''' table_column_name'''
    '''sno,title,slug,content,date'''
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80),  nullable=False)
    sub_heading = db.Column(db.String(80),  nullable=False)
    slug = db.Column(db.String(30))
    content = db.Column(db.String(120), nullable=False)
    img_file = db.Column(db.String(25))
    date = db.Column(db.String(12), nullable=True)

#home page
@app.route("/")
def home():
    posts = sample_post.query.filter_by().all()
    last = math.ceil(len(posts)/int(params['no.of.post']))
    page = request.args.get('page')
    if (not str(page).isnumeric()):
        page = 1
    page = int(page)
    posts = posts[(page-1)*int(params['no.of.post']):(page-1)*int(params['no.of.post'])+ int(params['no.of.post'])]
    if page==1:
        prev = "#"
        next = "/?page="+ str(page+1)
    elif page==last:
        prev = "/?page="+ str(page-1)
        next = "#"
    else:
        prev = "/?page="+ str(page-1)
        next = "/?page="+ str(page+1)
    
    return render_template('index.html', params=params, posts=posts, prev=prev, next=next)

#About page 
@app.route("/about")
def about():
    return render_template("about.html", params=params)



#Uploader Section
@app.route("/uploader", methods=['GET','POST'])
def uploader():
    # if ("user" in session and "user"==params['admin_user']):
    file=''
    if request.method == 'POST':
        f=request.files['file']
        f.save(os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(f.filename)))
        return "UPLOADED SUCCESSFULLY"



#post page
@app.route("/posts/<string:post_slug>", methods=['GET'])
def posts(post_slug):
    posta = sample_post.query.filter_by(slug=post_slug).first()
    return render_template("posts.html", params=params, posta=posta)

# Admin panel and login page
@app.route("/dashboard" ,methods=['GET','POST'])
def login():
    try:
        if (userpass == params['admin_password'] and username == params['admin_user']):
            posts = sample_post.query.all()
            return render_template("dashboard.html", params=params, posts=posts)
        else:
            return render_template("login.html", params=params)
    except:
        if request.method=="POST":
            username = request.form.get("uname")
            userpass = request.form.get("pass")
            if (userpass == params['admin_password'] and username == params['admin_user']):
                session['logged_in'] = True
                session['user']=username
                posts = sample_post.query.all()
                return render_template("dashboard.html",params=params,posts=posts)
            else:
                flash('wrong password!')
    return render_template("login.html", params=params)

    
#Edit page     
@app.route("/edit/<string:sno>" , methods=['GET', 'POST'])
def edit(sno):
    if (request.method == "POST"):
        box_title=request.form.get("title")
        suba=request.form.get("sub")
        slug=request.form.get("slug")
        imagee=request.form.get("image") 
        contt=request.form.get("cont")
        date=datetime.now()
        if (sno=='0'):
            post=sample_post(title=box_title , sub_heading=suba , slug=slug, img_file=imagee, content=contt, date=date)
            db.session.add(post)
            db.session.commit()
        else:
            post=sample_post.query.filter_by(sno=sno).first()
            post.title=box_title
            post.slug=slug  
            post.sub_heading=suba
            post.img_file=imagee
            post.content=contt
            post.date=date
            db.session.commit()
            post=sample_post.query.filter_by(sno=sno).first()
            return redirect("/edit/"+sno)
    post=sample_post.query.filter_by(sno=sno).first()
    return render_template("edit.html",params=params, post=post, sno=sno)

#delete post
@app.route("/delete/<string:sno>" , methods=['GET', 'POST'])
def delete(sno):
    # if "user" in session and session['user']==params['admin_user']:
    post = sample_post.query.filter_by(sno=sno).first()
    db.session.delete(post)
    db.session.commit()
    post=sample_post.query.filter_by(sno=sno).first()
    return redirect("/dashboard/"+sno)
    # post=sample_post.query.all()       
    # return render_template("dashboard.html",params=params)

#logout section
@app.route('/logout')
def logout():
    session['logged_in'] = False
    return redirect("/")

#Contact page
@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if (request.method == 'POST'):
        '''Add entry to the database'''
        Name = request.form.get('Name')
        email = request.form.get('email')
        phone_num = request.form.get('phone_num')
        message = request.form.get('message')
        mail = Mail(app)

        '''table_column_name'''
        '''sno,name,email,phone,msg'''

        ''' user = User(username=request.form["username"],email=request.form["email"],)
         #user=table_name(table_column_name=the_variable_where_we_GET_value, ...)'''
        entry = Contacts(name=Name, email=email, phone=phone_num,
                         date=datetime.now(), msg=message)
        db.session.add(entry)
        db.session.commit()
        '''sending mail section'''
        mail.send_message('new message from ' + Name,
                          sender=email,
                          recipients=[params['gmail_user']],
                          body=message+"\n"+phone_num
                          )
    return render_template("contact.html", params=params)



if __name__ == '__main__':  
    app.run(debug=True)
