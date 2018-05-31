<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="https://getbootstrap.com/favicon.ico">
        <title>Niner Events - Feedback</title>
        <!-- Bootstrap core CSS -->
        <link href="https://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Google Material Icon Pack -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    </head>
    <style>
        /* Fix NavBar to the top */
        html {
        position: relative;
        min-height: 100%;
        }
        /* body {
        min-height: 75rem;
        padding-top: 4.5rem;
        } */
        body {
        /* Margin bottom by footer height */
        margin-bottom: 60px;
        }
        /* Size for Material Icons */
        .material-icons.md-18 { font-size: 18px; }
        /* Size of DatePicker */
        .ui-datepicker {
        font-size: 80%;
        }
        .footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        /* Set the fixed height of the footer here */
        height: 60px;
        line-height: 60px; /* Vertically center the text there */
        background-color: #f5f5f5;
        }
        .top-adjust {
        margin-top:5%;
        }
    </style>
    <body>
        <!-- Navigation Bar BEGIN -->
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="#">Niner Events</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                        <i class="material-icons md-18">home</i>
                        Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                        <i class="material-icons md-18">date_range</i>
                        Events
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- Navigation Bar END -->
        <!-- MAIN -->
        <main role="main" class="container-fluid bg-light text-center top-adjust">
            <div class = "row">
                <div class = "col">
                    <div id='err' class='alert alert-warning d-none'></div>
                    <div id='result' class='alert alert-success d-none'></div>
                </div>
            </div>
            
            <form id="feedbackform" class="pb-2 pt-2">
                <h2 style="text-align:left">Member Feedback</h2>
                
                <br/>

                <div class="form-group row">
                    <label for="first_name" class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="first_name" placeholder="John" required>
                    </div>
                </div>
                

                <div class="form-group row">
                    <label for="last_name" class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="last_name" placeholder="Doe" required>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="eventName" class="col-sm-2 col-form-label">Event Name</label>
                   <div class="col-sm-10">
                        <select class="form-control" id="eventName" required>
                            <option></option>
                            <option>FoodFest</option>
                            <option>Dance Beats</option>
                            <option>Meditation Magic</option>
                            <option>Maths Magic</option>
                            <option>Disco Ninjas</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="rating" class="col-sm-2 col-form-label">Event Rating</label>
                    <div class="col-sm-10">
                        <select class="form-control" id="rating" required>
                            <option></option>
                            <option>Excellent</option>
                            <option>Good</option>
                            <option>Satisfactory</option>
                            <option>Needs Improvement</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="comments" class="col-sm-2 col-form-label">Comments</label>
                    <div class="col-sm-10">
                        <input type="Comments" class="form-control" id="comments" placeholder="Comments" required>
                    </div>
                </div>
                
                <div class="form-group row">
                    <div class="col">
                       <button type="submit" class="btn btn-outline-success btn-block" >Register</button>
                        &nbsp;
                        <button type="reset" class="btn btn-outline-secondary">Clear</button>
                    </div>
                </div>
            </form>
        </main>
        <!-- MAIN END -->
        <!-- Footer BEGIN -->
        <footer class="footer">
            <div class="container">
                <span class="text-muted">&copy; University of North Carolina at Charlotte</span>
            </div>
        </footer>
        <!-- Footer END -->

        <!-- Bootstrap core JavaScript
            ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <script src="https://getbootstrap.com/assets/js/vendor/popper.min.js"></script>
        <script src="https://getbootstrap.com/dist/js/bootstrap.min.js"></script>
    </body>
    <script>
        function Feedback() {
  			  var first_name = 	 $("#first_name").val();
  			  var last_name = $("#last_name").val();
  			  var eventName =  $("#eventName").val();
  			  var rating = 	 $("#rating").val();
  			  var comments =$("#comments").val();
  			  
  		     var datastring =  {
  			       "first_name":first_name,
  			       "last_name":last_name,
  			       "eventName":eventName,
  			       "rating":rating,
  			       "comments":comments, 			     
  			     };
  		     datastring;
  			     $.ajax({
  			       type:"POST",
  			       url:"/ninerevents/webapi/event/Feedback",
  			       contentType: "application/json",
  			       data: JSON.stringify(datastring),
  			       dataType:'json',
  			       success: function(response){
  				console.log(response);
  			      }
  			    
  			  });
        }
  			     $('#feedbackform').on('submit', function(e){
  			    	 e.preventDefault();
  			    	 Feedback();
  			     });
  			  
        
    </script>
</html>