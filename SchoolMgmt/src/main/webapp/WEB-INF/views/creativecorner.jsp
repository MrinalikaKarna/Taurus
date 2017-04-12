<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<div class="container" id="cnt1">
</br></br>
    <div class="row feature">
        <div class="col-md-4">
            <div>
                <img src="http://lorempixel.com/200/200/city/1/" alt="Texto Alternativo" class="img-circle img-thumbnail">
                <h2>Blogposts</h2>
                <p>
                    Visit for all blogposts submitted...                        
                </p>
                <a href="#" class="btn btn-success lower">Visit</a>
            </div>
        </div>

        <div class="col-md-4">
            <div>
                <img src="http://lorempixel.com/200/200/city/2/" alt="Texto Alternativo" class="img-circle img-thumbnail">
                <h2>Paintings n' Photographs</h2>
                <p>
                   Visit for all Visual Arts submitted      
                </p>
                <a href="<%=request.getContextPath() %>/users/creativecorner/visualart?method=GET" class="btn btn-success lower">Visit</a>
            </div>
        </div>
         <div class="col-md-4">
            <div>
                <img src="http://lorempixel.com/200/200/city/3/" alt="Texto Alternativo" class="img-circle img-thumbnail">
                <h2>Quizworks</h2>
                <p>
                   Visit for all Visual Arts submitted        
                </p>
                <a href="#" class="btn btn-success lower">Visit</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>