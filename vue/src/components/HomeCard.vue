<template>
  

<!-- <head> -->


  
   
<!-- </head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav> -->
  
<div class="container-fluid text-center">    
  <div class="row content">
    <!-- <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div> -->
    <!-- <div class="main-container">  -->
     
        
     
      <!-- <div id="header-container"> -->
        <!-- <div id="border"> -->
         <img id='header-logo' src="../resources/city-background.png" alt=""/>
      <div>
      <h3 id="main-text">COME HOP AROUND<br> COLUMBUS 
        WITH YOUR PASSPORT!
        </h3></div>
        <div>
      <p id="header-text">Discover new breweries throughout Columbus </p>

     </div> 
     <div>
       <button>Get Your Passport</button>
     </div>
     <!-- </div> -->

      <!-- </div> -->
      <h1>Welcome</h1>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
      <hr>
      <div id="img-container">
      <div class="footer-img" id="footer-1">
        <img src="../resources/passport.png" class="img-footer" />
        <h3> Get Your Passport</h3>
        <p>sldfkjs;lkdfjsfls</p>

      </div>
      <div class="footer-img" id="footer-2">
        <img src="../resources/huge-kegs.png" class="img-footer"/>
          <h3 class="footer-text"> Explore Our Partner Breweries</h3>
        <p class="footer-text"> sldfkjs;lkdfjsfls</p>
        <button>sdfs</button>
      </div>
      <div class="footer-img" id="footer-3">
        <img src="../resources/slave-pouring.png" class="img-footer"/>
          <h3> Drink Beer</h3>
        <p>sldfkjs;lkdfjsfls</p>
        <button>slfjsljf</button>
      </div>
      </div>
      <!-- </div> -->
      <h3>Test</h3>
      <p>Lorem ipsum...</p>
    
    <!-- <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div> -->
  </div>
</div>


<!-- <footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer> -->

<!-- </body> -->

</template>

<script>
export default {

}
</script>

<style scoped>


#header-logo{
  max-width: 100%;
  /* width: 100%; */
  height: auto;
  
   
    
}

 /* Remove the navbar's default margin-bottom and rounded borders */ 
   
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    /* .row.content {height: 450px} */
    
    /* Set gray background color and 100% height */
  
    
    /* Set black background color, white text and some padding */
    footer {
      position:absolute;
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    /* @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    } */

    #img-container{
      /* width:1300px; */
     padding-top:50px;
     padding-bottom:50px;
     padding-right:100px;
     padding-left:100px;

      display: flex;
    
      flex-wrap: nowrap;
      justify-content: space-between;
      background-color: #333232;
      }

      .footer-img{
        /* margin-left: 115px; */
        display: flex;
       
        height: 350px;
        
      }

      .container-fluid{
      
      }

      #main-text{
        text-align: center;
        position: absolute;
       transform: translate(380px,-400px);
       font-size: 3em;
       color: white;


      }

    #header-container{
      /* display: flex;
      flex-direction: row; */
      /* padding: -200px; */
      /* border-color: tomato; 
      border-style: double;  
     border-style: dashed;
     border-color:red; */
     /* border-width: -100px; */
 
    }
    #border{
    
      /* padding: -200px; */
      /* border-color: tomato; 
      border-style: double;  
     border-style: dashed;
     border-color:red; */
     /* border-width: -1000px; */

    }

    #header-text{
      color: black;
         text-align: center;
        position: absolute;
       transform: translate(430px, -280px);
       color: white;
       font-size: 2em;
    }
    button{
      background-color: #809766;
      color: white;
      position:absolute;
       transform: translate(10px, 10px);

    }
    .app{
      background-color: rgb(145, 125, 95);
    }

    .main-container{
    
      /* padding: left 100px; */
    }
      #footer-1{
          display: flex;
        flex-direction: column;
      

      }

          #footer-2{
          display: flex;
        flex-direction: column;
      

      }
          #footer-3{
          display: flex;
        flex-direction: column;
      

      }
   
   .img-footer{
     height: 250px;
   }

   .app{
     margin-top: 1px;
     margin-bottom: 1px;
     margin-right: 12px;
    margin-left: 12px;
   }

img{
  border:0;
}

row . *{
  padding-right: none;
}
      
  </style>