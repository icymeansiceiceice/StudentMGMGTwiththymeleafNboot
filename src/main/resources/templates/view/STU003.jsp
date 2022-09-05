<!DOCTYPE html>
<html lang="en" xmlns:th="http://thymeleaf.org">

<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link th:href="@{/css/test.css}" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    
        <title>Course Registration</title>
</head>

<body>
  <div id="testheader">
    <div class="container">
        <div class=row>        
            <div class="col-md-5 ">
        <a href="MNU001.jsp"><h3>Student Registration</h3></a>
    </div>  
    <div class="col-md-6">
     <p th:text="${session.login.id}"></p>
        <p th:text="${session.login.name}"></p>
          <p th:text="${session.date}"></p>
    </div>  
    <div class="col-md-1" >
        <input type="button" class="btn-basic" id="lgnout-button" value="Log Out" onclick="location.href='/com.stu/Logout'">
    </div>        
</div>
</div>

</div>
    <!-- <div id="testsidebar">Hello World </div> -->
    <div class="container">
    <div class="sidenav">
         <p th:text="${param.notfound }" style="color: red;"	></p>
    
       
        <button class="dropdown-btn" > Class Management <i class="fa fa-caret-down"></i></button>
        
            <div class="dropdown-container">
          <a href="/stubatis/courseRegister">Course Registration </a>
          <a href="/stubatis/registerStudent">Student Registration </a>
          <a href="/stubatis/showuser">Student Search </a>
        </div>
        <a href="/stubatisu/UserShow">Users Management</a>
      </div>
      <div class="main_contents">
    <div id="sub_content">

    
      <form action="#" th:action="@{/StudentSearch}" th:object="${stu}" method="post" class="row g-3 mt-3 ms-2">
     
        <div class="col-auto">
          <label for="staticEmail2" class="visually-hidden">studentID</label>
         
    <input type="text" placeholder="Student ID"  th:field = *{id} class="form-control" id="staticEmail2">
               
        </div>
        <div class="col-auto">
          <label for="inputPassword2" class="visually-hidden">studentName</label>
          
          <input type="text" placeholder="Student Name"  th:field = *{name} class="form-control" id="staticEmail2">
    
       

        </div>
        <div class="col-auto">
            <label for="inputPassword2" class="visually-hidden">Course</label>
            
            
            <input type="text" placeholder="Course"  th:field = *{course} class="form-control" id="inputPassword2">
           
          </div>
        <div class="col-auto">
          <input type="submit" class="btn btn-success mb-3" value="Search">
        </div>
        <div class="col-auto">
          <button type="reset" class="btn btn-secondary mb-3">Reset</button>
        </div>
    
     </form>
<div>
      <table class="table table-striped" id="stduentTable">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Student ID</th>
            <th scope="col">Name</th>
            <th scope="col">Course Name</th>
            <th scope="col">Details</th>
          </tr>
        </thead>
        <tbody>
        
       
          <tr th:each = "s : ${session.student}">
            <th scope="row">#</th>
            <td th:text = "${s.id} "></td>
            <td th:text = "${s.name} "></td>
            <td  th:text = "${s.course} ">
         		
         		
         		 
            </td>
            <td>
              <a th:href="@{/StudentUpdate/{id}(id=${s.id})}"><button type="button" class="btn btn-secondary mb-2" >See More</button></a>
              <!-- <a href="STU002.html" class="text-decoration-none">See more</a> -->
            </td>
          </tr>
          
          
        </tbody>
      </table>
    </div>
    </div>
</div>
</div>
        <div id="testfooter">
            <span>Copyright &#169; ACE Inspiration 2022</span>
        </div>
        <script>
            /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
            var dropdown = document.getElementsByClassName("dropdown-btn");
            var i;
            
            for (i = 0; i < dropdown.length; i++) {
              dropdown[i].addEventListener("click", function() {
              this.classList.toggle("active");
              var dropdownContent = this.nextElementSibling;
              if (dropdownContent.style.display === "block") {
              dropdownContent.style.display = "none";
              } else {
              dropdownContent.style.display = "block";
              }
              });
            }
            </script>
</body>

</html>



