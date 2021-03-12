<?php require("header.php"); ?>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
url: "https://quire.io/oauth/token",
  data: "grant_type=authorization_code&code=xxx&client_id=yyy&client_secret=zzz",


  <?php  require("footer.php");?>

<script>

$.ajax({
  url: "https://quire.io/oauth/token",
  type: "post", //send it through get method
  data: $.param({
    grant_type: "authorization_code",
	code: "g0xwxdfwlzb8zlyh5lf6z6vosgu08pdpu5u9jx",
	client_id: "2~fJiF71FGcXuHetYgGAhRSu",
	client_secret: "6d813xxsk6y22893sv2zaoyamdgt8c32fbgm8kft"
          }),
 
    onload: function(r){
        console.log(r);
    },
  success: function(response) {
    //Do Something
  },
  error: function(xhr) {
    //Do Something to handle error
  }
});

</script>

