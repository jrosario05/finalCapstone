<template>
  <div id="footer">
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
    />

    <div id="top-section">
      <img src="../resources/hop-logo-white.png" />

      <div class="contact">
        <!-- 
        <p>Team Hotel</p>
        <p>1275 Kinnear Road</p>
        <p>Columbus, Ohio 43215</p> -->
      </div>
      <ul class="links">
        <a href="#"><li>About the Team</li></a>
        <a href="#"><li>Find a brewery</li></a>
        <a href="#"><li>Get Your Passport</li></a>
        <a href="#"><li>Add brewery</li></a>
      </ul>
    </div>
    <div id="bottom-section">
      <div class="social">
        <p>Follow Us!</p>
        <i class="bi bi-facebook"></i>
        <i class="bi bi-linkedin"></i>
        <i class="bi bi-twitter"></i>
        <i class="bi bi-instagram"></i>
      </div>

      <div class="copyright">&#169; 2022 All Rights Reserved</div>
    </div>
  </div>
</template>

<script>
export default {
  name: "thefooter",
};
</script>

<style>
#footer {
  background-color: rgba(0, 0, 0, 0.5);
  color: white;
}

#top-section {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  margin-left: 50px;
}

#top-section img {
  width: 150px;
  height: auto;
  margin-top: 10px;
  /* margin-left: 50px;
  margin-top: 50px; */
}

#bottom-section {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: -30px;
}

.contact {
  margin-top: 30px;
  margin-left: 50px;
}
.contact h1 {
  font-size: 1em;
  margin: 0 auto;
}

.contact p {
  font-size: 0.85em;
  margin: 0 auto;
}

.links {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  width: 100%;
  /* margin-top: 75px; */
  margin-right: 125px;
}

.links li {
  font-size: 1.5em;
  margin-bottom: 6px;
  list-style-type: none;
}

.links a {
    color: #bfcf5f;
    text-decoration: none;
}

.links a:hover {
    color: #515A20;
}

.links a:active {
    color: #292e0e;
}

.social p {
  font-size: 1.5em;
  text-align: center;
  margin: 10px 0px;
}

.bi {
  font-size: 25px;
  margin: 10px;
}

.copyright {
  font-size: 0.75em;
  margin: 30px;
}
</style>